您好，我是鄭裕憲，以下將展示目前為止，為朋友製作的圖片標籤網站
# 功能
為使用者提供上傳圖片、制定圖片標籤，圖片與標籤的新增、搜尋、修改、刪除，圖片展示庫資料排序等功能。
# 資料夾PHPcode放置PHP、javascript、css、HTML的程式碼
一、登入介面
在此作登入，或增新帳號，因為是非常初期製作，所以介面非常不好看

![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E7%99%BB%E5%85%A5%E7%95%AB%E9%9D%A2.png)

二、主畫面
1.在此介面進行標籤的新增、刪除、修改，等操作。

2.顯示使用者的圖片與標籤數量等資訊數量。

3.
於(我的標籤)-->未分類 ~ 作者 四個標籤分類為系統預設擁有
              髮色   ~ 表情 等標籤分類為自己新增的標籤分類，為動態新增。

於(查看全部)可以放大顯示標籤區域，如下圖。

![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E5%80%8B%E4%BA%BA%E6%A8%99%E7%B1%A4%E9%A1%AF%E7%A4%BA.png)
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

