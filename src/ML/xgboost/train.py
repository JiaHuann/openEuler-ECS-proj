import pandas as pd
import numpy as np
from tqdm import tqdm

# df_nor = pd.read_csv('newdata/normal-SchedIoMemoryOom.csv', low_memory=False)[:10000]
# # 加上一列，全部为0
# df_nor['label'] = 0

# df_oom = pd.read_csv('newdata/H-IO-SchedIoMemoryOom.csv', low_memory=False)[:10000]
# # 加上一列，全部为0
# df_oom['label'] = 1

# df_io = pd.read_csv('newdata/H-Mem-SchedIoMemOom.csv', low_memory=False)[:10000]
# df_io['label'] = 2

# df_mem = pd.read_csv('newdata/H-OOM-SchedIoMemOom.csv', low_memory=False)[:10000]
# df_mem['label'] = 3

# df_sched  = pd.read_csv('newdata/H-sched-SchedIoMemOom.csv', low_memory=False)[:10000]
# df_sched['label'] = 4

df_nor = pd.read_csv('newdata/normal-SchedIoMemoryOom.csv', low_memory=False)
# 加上一列，全部为0
df_nor['label'] = 0

df_oom = pd.read_csv('newdata/H-IO-SchedIoMemoryOom.csv', low_memory=False)
# 加上一列，全部为0
df_oom['label'] = 1

df_io = pd.read_csv('newdata/H-Mem-SchedIoMemOom.csv', low_memory=False)
df_io['label'] = 2

df_mem = pd.read_csv('newdata/H-OOM-SchedIoMemOom.csv', low_memory=False)
df_mem['label'] = 3

df_sched  = pd.read_csv('newdata/H-sched-SchedIoMemOom.csv', low_memory=False)
df_sched['label'] = 4

df = pd.concat([df_nor, df_oom, df_io, df_mem, df_sched], axis=0)
# 将cloumns的空格去除
df.columns = df.columns.str.replace(' ', '')

# # 计算每一列的非空率,并将非空率小于0.3的列去除
# null_cols = []
# for col in df.columns:
#     null_rate = df[col].isnull().sum() / len(df)
#     if null_rate > 0.7:
#         null_cols.append(col)
# df.drop(null_cols, axis=1, inplace=True)

# 遍历所有的单元格，如何单独的一个单元格是字符x，那么就将其转换为np.nan
for col in df.columns:
    df[col] = df[col].replace(' x', np.nan)
            
# 遍历所有行，如果某一行的CPU列为 LOST，那么就将其去除
df = df[df['CPU'] != ' [LOST']
set(df['CPU'])

df['CPU'].replace(regex=True, inplace=True, to_replace=r'\[', value=r'')
df['CPU'].replace(regex=True, inplace=True, to_replace=r'\]', value=r'')

df['CPU'] = df['CPU'].astype(np.float64)

# 提取df['ProcessName'] -字符 后面的数字
df['ProcessName'] = df['ProcessName'].str.extract('(\d+)', expand=False).astype(np.float64)
try:
    df['Timestamp'] = df['Timestamp'].astype(np.float64)
except:
    df['Timestamp'] = -1


# 删除列表中的一项
Y = df['label']
df.drop(['label'], axis=1, inplace=True)

columns =list(df.columns)

columns.remove('ProcessName')
columns.remove('CPU')
columns.remove('Timestamp')
columns.remove('Tracepoint')

for col in columns:
    df[col] = pd.factorize(df[col])[0] + 1

# 时序类特征衍生
# 按照ProcessName进行分组，然后对每一组的Timestamp进行排序，然后计算相邻两个Timestamp的差值
df['Timestamp_diff'] = df.groupby('ProcessName')['Timestamp'].diff(1).copy()
df['Timestamp_diff'].fillna(0, inplace=True)

# 滑动窗口,过去的5个Timestamp_diff的均值
df['Timestamp_diff_mean'] = df['Timestamp_diff'].rolling(5).mean().reset_index(0, drop=True).copy()

# 过去5行CPU的众数
df['CPU_mode'] = df['CPU'].rolling(5).apply(lambda x: x.mode()[0]).reset_index(0, drop=True).copy()

for col in columns:
    df.loc[:, col] = df[col].astype(np.float64)
    
    
import xgboost as xgb
# 划分训练集和测试集
from sklearn.model_selection import train_test_split
from sklearn.model_selection import GridSearchCV
X_train, X_test, y_train, y_test = train_test_split(df[columns], Y, test_size=0.2, random_state=42)



# 训练模型
model = xgb.XGBClassifier(max_depth=15, learning_rate=0.1, n_estimators=160, objective='multi:softmax')
model.fit(X_train, y_train)

# 预测
y_pred = model.predict(X_test)

# 计算准确率
from sklearn.metrics import accuracy_score
accuracy_score(y_test, y_pred)

