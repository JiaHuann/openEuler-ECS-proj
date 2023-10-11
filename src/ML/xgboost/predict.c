#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <time.h> // 添加时间测量相关的头文件
#include "xgboost/c_api.h"

#define safe_xgboost(call) {  \
  int err = (call); \
  if (err != 0) { \
    fprintf(stderr, "%s:%d: error in %s: %s\n", __FILE__, __LINE__, #call, XGBGetLastError());  \
    exit(1); \
  } \
}

int main() {

    float input[33];
    int i = 0, j = 0;
    const char *model_path = "./model-096.bin";

    // create booster handle first
    BoosterHandle booster;
    safe_xgboost(XGBoosterCreate(NULL, 0, &booster));
    // load model
    safe_xgboost(XGBoosterLoadModel(booster, model_path));

    clock_t start_time, end_time; // 声明开始和结束时间变量

    for (j = 0; j < 100; j++) {
        for (i = 0; i < 33; i++) {
            scanf("%f,", &input[i]);
        }

        // convert to DMatrix
        DMatrixHandle h_test;
        safe_xgboost(XGDMatrixCreateFromMat(input, 1, 33, -1, &h_test));

        // 记录开始时间
        start_time = clock();

        // predict
        bst_ulong out_len;
        const float *f;
        safe_xgboost(XGBoosterPredict(booster, h_test, 0, 0, 1, &out_len, &f));

        // 记录结束时间
        end_time = clock();

        // 计算推理时间并打印
        double inference_time = (double)(end_time - start_time) / CLOCKS_PER_SEC;
        printf("Predict: %f\n", f[0]);
        printf("Inference Time: %f seconds\n", inference_time);
    }

    return 0;
}
