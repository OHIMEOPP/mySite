# Python期中報告
10924107 鄭裕憲
# 期中報告第11題
打開當前路徑下“作業.txt”，分別打出檔中前30個字元和前3行內容
# 程式碼
打開當前路徑下“作業.txt”
```
with open("作業.txt", "r") as f:
```
打出檔中前30個字元
```
    print(f.read(30))
    f.seek(0)
```
打出檔中和前3行內容
```
    lines = f.readlines()
    for i in lines:
        print(i.strip())
```
# 實作截演示
![image](https://github.com/OHIMEOPP/py/blob/main/pycode.png)
