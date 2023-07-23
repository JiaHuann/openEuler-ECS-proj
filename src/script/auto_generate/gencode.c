#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <string.h>
#include "string-list.h"
#include "misc.h"
#include "vmlinux.h"

struct auto_event_name {
        struct list_head list;
        struct string_list class;
        struct string_list name;
};

//struct auto_event_name {
//        struct list_head list;
//        struct string_list *name;
//};
#define EVENT_PATH "/sys/kernel/tracing/events"
#define AVAILABEL_PATH "/sys/kernel/tracing/available_events"

ssize_t read_line(int fd, char *buf, size_t len){
        ssize_t byteread = 0;
        ssize_t totalread = 0;

        char *buff = buf;

        while (1) {
                byteread = read(fd, buff, 1);

                if (byteread == -1) {
                        fprintf(stderr, "error while read lines");
                } else if (byteread == 0) {
                        break;
                }

                totalread += byteread;
                if (*buff == '\n') {
                        *(buff + 1) = '\0';
                        break;
                }

                buff++;
        }
        return totalread;
}

struct auto_event_name * get_ori_event(void){
        const char *path = AVAILABEL_PATH;
        int fd = open(path, O_RDONLY);
        if (!fd)
                fprintf(stderr, "use root run this prog\n");
        
        char line[256];
        ssize_t byteread;

        struct auto_event_name *first = NULL;
        struct auto_event_name *prev  = NULL;

        while ((byteread = read_line(fd, line, sizeof(line))) > 0) {
                struct auto_event_name *new = (struct auto_event_name*)malloc(sizeof(struct auto_event_name));
                if (new == NULL) {
                        fprintf(stderr, "malloc error");
                }
                string_list_init_nodup(&(new->class));
                string_list_init_nodup(&(new->name));
                string_list_append(&(new->class), strtok(line, ":"));
                string_list_append(&(new->name), strtok(NULL, ":"));
                
                INIT_LIST_HEAD(&(new->list));

                if(prev != NULL){
                        list_add(&(new->list), &(prev->list));
                }else {
                        first = new;
                }

                prev = new;
        }

        list_add(&(prev->list), &(first->list));
        close(fd);
        return first;
}

struct auto_event_name *get_event_namelist(void) {
        struct auto_event_name *ori;
        ori = get_ori_event();
}        
int main(void) {
        struct auto_event_name *name = get_event_namelist();
//	char *event_name = "sched_wakeup";
}

	
