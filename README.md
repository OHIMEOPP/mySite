您好，我是鄭裕憲，以下將展示目前為止，為朋友製作的圖片標籤網站
# 功能
為使用者提供上傳圖片、制定圖片標籤，圖片與標籤的新增、搜尋、修改、刪除，圖片展示庫資料排序等功能。
# 資料夾PHPcode放置PHP、javascript、css、HTML的程式碼
一、登入介面 

(程式碼請見 PHPcode

index.php -- 帳號登入檢查

indexAccount.php -- 帳號登入介面與Ajex的傳送

logout.php -- 做登出指令

index.css)

在此作登入，或增新帳號，因為是非常初期製作，所以介面非常不好看
![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E7%99%BB%E5%85%A5%E7%95%AB%E9%9D%A2.png)

二、主畫面

(程式碼請見 PHPcode

css/main.css -- (所有版面的基底indexTWO.php的設計)

indexTWO.php -- (所有版面的基底，也就是最上面的藍色橫幅)

frontpage.php -- (主畫面的所有版面)

css/frontpage.css)

1.在此介面進行標籤的新增、刪除、修改，等操作。

2.顯示使用者的圖片與標籤數量等資訊數量。

![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E5%80%8B%E4%BA%BA%E4%B8%BB%E7%95%AB%E9%9D%A2.png)

3.點擊橫幅中間的大頭貼位置可上傳更新大頭貼![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E5%A4%A7%E9%A0%AD%E8%B2%BC%E5%9C%96%E7%89%87%E5%88%87%E6%8F%9B.png) 

點擊橫幅右上角的鉛筆圖可上傳更新橫幅圖片 ![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E8%83%8C%E6%99%AF%E8%B2%BC%E5%9C%96%E7%89%87%E5%88%87%E6%8F%9B.png) 

點擊頁面左下角的鉛筆圖可上傳更新背景圖![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E8%A1%8C%E5%B9%85%E5%9C%96%E7%89%87%E5%88%87%E6%8F%9B.png)

4.見下圖. 於(我的標籤)-->未分類 ~ 作者 四個標籤分類為系統預設擁有
              髮色   ~ 表情 等標籤分類為使用者自訂新增的標籤分類，為以Ajex完成動態新增。
              
(程式碼請見 PHPcode anothertypegroup.php -- 回應frontpage的Ajex訊息 駐:此為包括所有動態分類的會應程式。)

於(查看全部)可以放大顯示標籤區域，如下圖。
![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E5%80%8B%E4%BA%BA%E6%A8%99%E7%B1%A4%E9%A1%AF%E7%A4%BA.png)

5.如要刪除擇點案 我的標籤下的 - 字符 後會出現紅色圓框，並點按原框即可刪除

(程式碼請見 PHPcode fornt_page_del_tag.php -- 處理從frontpage發送的表單)
![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E7%BF%BB%E9%99%A4%E6%A8%99%E7%B1%A4%E9%A1%AF%E7%A4%BA.png)

6.於(我的標籤)下的 + 字符可開啟標籤編輯視窗，如下圖。

(程式碼請見 PHPcode frontpagetagedit.php -- 處理3種編輯情況)
![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E6%A8%99%E7%B1%A4%E7%B7%A8%E8%BC%AF%E8%A6%96%E7%AA%97.png)
編輯室窗有3種功能

。新增標籤

![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E6%96%B0%E5%A2%9E%E6%A8%99%E7%B1%A4.png)

。修改標籤

在此進行選擇要修改的標籤。

![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E4%BF%AE%E6%94%B9%E6%A8%99%E7%B1%A42.png)

進入修改環節

![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E4%BF%AE%E6%94%B9%E6%A8%99%E7%B1%A4.png)

。標籤分類

![image](https://github.com/OHIMEOPP/mySite/blob/bf400485bc83f4ffff11000df45061b2067bb8cd/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E6%A8%99%E7%B1%A4%E5%88%86%E9%A1%9E.png)

三、上傳區

(程式碼請見 PHPcode 

uploadare.php -- 版面配置

uploadtoBD.php -- 處理上傳表單，新增上傳圖片，標籤資訊等

css/uploadare.css -- 設計)

![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E4%B8%8A%E5%82%B3%E5%8D%80.png)

1.進行上傳圖片、輸入圖片標籤、選擇標籤。

在下方會有標籤分類供使用者選擇，' 使用者輸入時則會依據使用者擁有的標籤進行搜尋。

預設分類(人物、團體、作者)

![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E4%B8%8A%E5%82%B3%E5%8D%80%E9%81%B8%E6%93%87%E6%A8%99%E7%B1%A41.png)

其他分類

(程式碼請見 PHPcode anothertypegroup.php -- 回應uploadare.php->OSC.js的傳來的Ajex訊息 駐:此為包括所有動態分類的會應程式。)

![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E4%B8%8A%E5%82%B3%E5%8D%80%E9%81%B8%E6%93%87%E6%A8%99%E7%B1%A42.png)

![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E4%B8%8A%E5%82%B3%E5%8D%80%E9%81%B8%E6%93%87%E6%A8%99%E7%B1%A43.png)

四、圖庫區

(程式碼請見 PHPcode 

imageAre.php --  圖庫版面，切換排序時傳送Ajex到fly.php 映出圖片資訊

fly.php -- 接收imageAre.php 的Ajex印出圖片、做顯示圖片處理，搜尋等，並呼叫function.php函式，取得所有需要的圖片

css/imageAre.css --設計

)
![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E5%9C%96%E5%BA%AB%E5%8D%80.png)

1.上傳圖片將放置在此區域，可做排序顯示功能，展開如下圖。

![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E5%9C%96%E5%BA%AB%E5%8D%80%E6%8E%92%E5%BA%8F.png)

2.如其他使用者將圖片資訊設定為(公開)，則可以使用排序的(全體公開圖)查看其他使用者的圖片。

3.點擊任意圖片進入圖片資訊區。

五、圖片資訊區

(程式碼請見 PHPcode 

imgPage.php -- 版面配置

classBD.php -- 存放圖片類別資訊

setimgstatus.php -- 刪除圖片指令

css/imgPage.css -- 設計

)
![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E5%9C%96%E7%89%87%E8%B3%87%E8%A8%8A%E5%8D%80.png)

1.顯示圖片資訊，及修改資訊(如下圖)。
(程式碼請見 PHPcode settag.php -- 做圖片編輯處理 )
![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E5%9C%96%E7%89%87%E8%B3%87%E8%A8%8A%E5%8D%80%E7%B7%A8%E8%BC%AF%E5%8D%80.png)

與上傳區相同，擁有動態查詢已有的標籤的功能，可以逗號為分隔做搜尋。
![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E5%9C%96%E7%89%87%E8%B3%87%E8%A8%8A%E5%8D%80%E7%B7%A8%E8%BC%AF%E5%8D%802.png)

六、搜尋功能
運用GET方法，可以從不同的區域進行圖片搜尋，並轉跳imageAre.php

(程式碼請見 PHPcode fly.php -- 接收imageAre.php 的Ajex印出圖片、做顯示圖片處理，搜尋等，並呼叫function.php函式，取得所有需要的圖片)

圖片資訊區

![image](https://github.com/OHIMEOPP/mySite/blob/a9f153757450d3b1879687110bf42793bc26fc76/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E6%90%9C%E5%B0%8B%E5%9C%96%E7%89%87tag.png)

![image](https://github.com/OHIMEOPP/mySite/blob/a9f153757450d3b1879687110bf42793bc26fc76/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E6%90%9C%E5%B0%8B%E5%9C%96%E7%89%87tag%E9%A1%AF%E7%A4%BA.png)

主畫面

![image](https://github.com/OHIMEOPP/mySite/blob/a9f153757450d3b1879687110bf42793bc26fc76/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E6%90%9C%E5%B0%8B%E5%9C%96%E7%89%87%E4%B8%BB%E7%95%AB%E9%9D%A2.png)

![image](https://github.com/OHIMEOPP/mySite/blob/a9f153757450d3b1879687110bf42793bc26fc76/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E6%90%9C%E5%B0%8B%E5%9C%96%E7%89%87%E4%B8%BB%E7%95%AB%E9%9D%A2%E9%A1%AF%E7%A4%BA.png)

左上角全域搜尋介面

![image](https://github.com/OHIMEOPP/mySite/blob/a9f153757450d3b1879687110bf42793bc26fc76/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E6%90%9C%E5%B0%8B%E4%BB%8B%E9%9D%A2.png)

![image](https://github.com/OHIMEOPP/mySite/blob/581a946faec0462810da539830e0ec4641be5fce/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/%E6%90%9C%E5%B0%8B%E4%BB%8B%E9%9D%A2%E9%A1%AF%E7%A4%BA.png)

# 資料夾mysql放置mysql資料庫檔案
mysql 檔案分為四個檔案，img_data、tag_data、test_attack、user_account

其中的test_attack為測試sql注入攻擊時留下的資料，因此沒有實際用途

img_data
存放圖片路徑與各種資訊
![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/img_data.png)

tag_data
存放標籤資訊，如使用者新增的標籤會在此做管理
![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/tag_data.png)

user_account
使用者資料
![image](https://github.com/OHIMEOPP/mySite/blob/main/%E5%B1%95%E7%A4%BA%E5%9C%96%E7%89%87/user_account.png)
