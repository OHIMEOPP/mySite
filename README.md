您好，我是鄭裕憲，以下將展示目前為止，為朋友製作的圖片標籤網站
# 功能
為使用者提供上傳圖片、制定圖片標籤，圖片與標籤的新增、搜尋、修改、刪除，圖片展示庫資料排序等功能。
# 資料夾PHPcode放置PHP、javascript、css、HTML的程式碼
一、登入介面

# 資料夾mysql放置mysql資料庫檔案
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
