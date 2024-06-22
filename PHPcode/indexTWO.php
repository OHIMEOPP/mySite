<?php
require_once 'db.php';
require_once 'function.php';

$time = currentTime();
if (!$user_id) {
    header("Location: logout.php");
}
$user = seleticon('image', $user_id);
$icon = seleticon('icon', $user_id);

$imgLight = array(
    "imag/icon.gif",
    "https://janstockcoin.com/wp-content/uploads/2021/06/pexels-photo-747964-scaled.jpeg",
    "imag/photo_01.jpg",
    "imag/ad.png"
);

$iconlist = array(
    array(
        'iconlistname' => "個人資料",
        'iconlisturl' => "frontpage",
    ),
    array(
        'iconlistname' => "我的最愛",
        'iconlisturl' => "frontpage",
    ),
    array(
        'iconlistname' => "上傳圖片",
        'iconlisturl' => "uploadare",
    ),
    array(
        'iconlistname' => "瀏覽紀錄",
        'iconlisturl' => "frontpage",
    ),
    array(
        'iconlistname' => "設定",
        'iconlisturl' => "frontpage",
    ),
    array(
        'iconlistname' => "登出",
        'iconlisturl' => "frontpage",
    )
);

$acc = "SELECT * FROM `user_account` WHERE `id`='$user_id'";

$data = select($acc);

foreach ($data as $row1) {
    $user12 = array(
        'name' => $row1['name']
    );
}

$_sel =  "SELECT * FROM `tag_data` WHERE `creat_user_id`='$user_id'";
$all_tag = current_tag("tag_name", $_sel);
if (!empty($all_tag))
    $sreachTagarray = json_encode($all_tag);
else {
    $sreachTagarray = json_encode([]);
}

if (isset($_FILES['icon']['tmp_name'])) {
    $icon = $_FILES['icon']['name'];
    ALLupcload($icon, $time, $user_id, 'icon');
    
    $n = "./uploadimg/" .  $icon;
    move_uploaded_file($_FILES['icon']['tmp_name'], $n);
}
if (isset($_FILES['image']['tmp_name'])) {
    $bk_img = $_FILES['image']['name'];
    ALLupcload($bk_img, $time, $user_id, 'image');

    $n = "./uploadimg/" .  $bk_img;
    move_uploaded_file($_FILES['image']['tmp_name'], $n);
}
if (isset($_FILES['Wimage']['tmp_name'])) {
    $wimg =  $_FILES['Wimage']['name'];
    ALLupcload($wimg, $time, $user_id, 'Wimage');

    $n = "./uploadimg/" .  $wimg;
    move_uploaded_file($_FILES['Wimage']['tmp_name'], $n);
}

// echo $_COOKIE['is_login'];
?>
<?php if (!empty($_COOKIE['is_login']) && $_COOKIE['is_login']) : ?>
    <!DOCTYPE html>
    <html>

    <head>
        <title><?php echo $user12['name']; ?></title>
        <mata charset="UTF-8">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
            <style>
                <?php require_once './css/main.css'; ?>body {
                    background-image: url(<?php echo "./uploadimg/" . $user['img_path'][0]; ?>);
                }

                #c {
                    background-color: rgba(23, 23, 43, 0.3);
                    width: 100%;
                    height: 100%;
                }

                ;
            </style>
    </head>

    <body id="body">
        <div class="c">
            <div class="menu">
                <div style="display:flex">
                    <div class="icon">
                        <button class="iconbt" id="iconbt" onclick="openWindow()"></button>
                        <label class="iconbtlabel" for="iconbt"><img src="<?php echo "./uploadimg/" . $icon['img_path'][0]; ?>"></label>
                    </div>
                    <div class="menulist">
                        <nav>
                            <ul>
                                <a href="indexTWO.php?are=frontpage">首頁</a>
                                <a href="indexTWO.php?are=uploadare">上傳區</a>
                                <a href="indexTWO.php?page=1">圖庫</a>
                                <?php if ($user_id == 1) {
                                    echo '<a href="indexTWO.php?maneger=1">管理</a>';
                                } ?>

                            </ul>
                        </nav>
                        <!-- <div class="ff"> -->


                        <div class="floaticonwindow" id="floaticonwindow" style="display: none;">
                            <table class="iconlist">
                                <?php foreach ($iconlist as $key => $value) {
                                    if ($value['iconlistname'] == '登出') {
                                        echo "<tr><td><button><a href='logout.php'>" . $value['iconlistname'] . "</a></button></td></tr>";
                                    } else {
                                        $iconlisturl = $value['iconlisturl'];
                                        echo "<tr><td><button><a href='indexTWO.php?are=$iconlisturl'>" . $value['iconlistname'] . "</a></button></td></tr>";
                                    }
                                }
                                ?>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- <div>
                    <audio controls autoplay loop>
                        <source src="./rock/ときのそら「スタースタースタート」 TOKINOSORA - Star,star,start【Official Music Video】.mp3">
                    </audio>
                </div> -->
                <div class="search_are">

                    <form method="get">
                        <div class="tag_search-input">
                            <input type="text" name="tag" id="searchInput" autocomplete="off">
                            <input name="page" style="display:none" value="1">
                            <div class="tag_search-button">
                                <button type="submit">🔍</button>
                            </div>

                            <div id="suggestions"></div>

                        </div>
                    </form>
                </div>
            </div>
            <!-- 按鈕回到最上層，呼叫回到top涵式 -->
            <button onclick="topFunction()" class="topButton" title="Go to top" id="topbutton">&#8679;</button>

            <?php
            //依照選擇 呈現選擇的頁面
            if (!empty($_GET['are'])) {
                switch ($_GET['are']) {
                    case 'frontpage':
                        require_once 'frontpage.php';
                        $title = '首頁';
                        break;
                    case 'uploadare':
                        require_once 'uploadare.php';
                        $title = '上傳區';
                        break;
                }
            }
            if (!empty($_GET['img_id'])) {
                require_once 'imgPage.php';
                $title = '圖片庫';
            }
            if (!empty($_GET['tag']) || !empty($_GET['page'])) {
                require_once 'imageAre.php';
                $title = '圖片庫';
            }
            if (!empty($_GET['maneger']) && $user_id == 1) {
                require_once 'manegerfixed.php';
            }
            ?>
        <?php else :
        header("Location: logout.php");
    endif;
        ?>
        </div>
    </body>

    <script>
        //為javaScript的幻燈片
        var slideIndex = 0;
        var strcoll = 0;
        // carousel(); // 调用轮播函数
        // openWindow();

        displaybutton();

        function carousel() {
            //CSS選擇器 document為HTML的資料,querySelectorAll為他的方法,指定Css中的(名子 元素)
            var slides = document.querySelectorAll('.warning img'); // 獲取所有圖片
            for (var i = 0; i < slides.length; i++) {
                slides[i].style.display = "none"; // 隱藏所有圖片
            }
            slideIndex++;
            if (slideIndex > slides.length) {
                slideIndex = 1; // 重置索引為1
            }
            slides[slideIndex - 1].style.display = "block"; // 顯示當前圖片
            setTimeout(carousel, 1000); // 每n秒切换一次圖片
        }

        function topFunction() {
            var currentY = window.scrollY;
            var step = currentY / 20; // 步長，控制平滑滾動的速度

            function smoothScroll() {

                if (window.scrollY > 0) {
                    window.scrollBy(0, -step); // 向上滾動
                    requestAnimationFrame(smoothScroll);
                }

            }

            smoothScroll();
        }
        // 判斷最高捲動頂部函數
        function displaybutton() {
            var topButton = document.getElementById("topbutton");
            if (window.scrollY <= 0) {
                topButton.style.display = "none";
            } else {
                topButton.style.display = "block";
            }
            setTimeout(displaybutton, 100);
        }

        function openWindow() {
            var floatingWindow = document.getElementById("floaticonwindow");
            if (floatingWindow.style.display === "none") {
                floatingWindow.style.display = "block";
                // 添加點擊事件監聽器到文檔
                document.removeEventListener("click", closeFloatingWindowOutside);
            } else {
                document.addEventListener("click", closeFloatingWindowOutside);
            }
        }

        //在點擊外部區域時關閉懸浮視窗
        function closeFloatingWindowOutside(event) {
            var floatwin = document.getElementById('floaticonwindow');
            floatwin.style.display = 'none';
        }

        const suggestions = <?php echo $sreachTagarray ?>;
        const searchInput = document.getElementById('searchInput');
        const suggestionsDiv = document.getElementById('suggestions');


        // 监听输入事件
        searchInput.addEventListener('input', function() {
            var aa = this.value.trim(); // 获取输入的文本，并去除首尾空格
            var inputValue = this.value;
            if (inputValue.includes(',')) {
                // 將字串分割成陣列
                var arrayAfterComma = inputValue.split(',');
                // 取得逗號後的字串並加入陣列
                var lastPartOfString = arrayAfterComma[arrayAfterComma.length - 1];
                var aa = lastPartOfString; // 這將會印出逗號後的字串
            }
            const filteredSuggestions = suggestions.filter(function(suggestion) {
                return suggestion.includes(aa); // 过滤包含输入文本的提示

            });
            showSuggestions(filteredSuggestions, aa); // 显示过滤后的提示
        });
        searchInput.addEventListener('click', function() {
            var aa = this.value.trim(); // 获取输入的文本，并去除首尾空格
            var inputValue = this.value;
            if (inputValue.includes(',')) {
                // 將字串分割成陣列
                var arrayAfterComma = inputValue.split(',');
                // 取得逗號後的字串並加入陣列
                var lastPartOfString = arrayAfterComma[arrayAfterComma.length - 1];
                var aa = lastPartOfString; // 這將會印出逗號後的字串
            }

            const filteredSuggestions = suggestions.filter(function(suggestion) {
                return suggestion.includes(aa); // 过滤包含输入文本的提示

            });
            showSuggestions(filteredSuggestions, aa); // 显示过滤后的提示
        });

        // 显示提示
        function showSuggestions(suggestions, aa) {
            suggestionsDiv.innerHTML = ''; // 清空提示内容
            if (suggestions.length > 0) {
                const ul = document.createElement('ul');
                suggestions.forEach(function(suggestion) {
                    const li = document.createElement('a');
                    li.textContent = suggestion;
                    li.addEventListener('click', function() {

                        var currentValue = searchInput.value;
                        if (currentValue !== "") {
                            if (aa) {
                                var currentValue = currentValue.replace("," + aa, "");
                                aa = "";
                            }
                            currentValue += ",";
                            if (!searchInput.value.includes(",")) {
                                // currentValue = "";
                                searchInput.value = "";
                            }
                            // 输出处理后的请求
                        }
                        // 将按钮的文本内容添加到输入框中
                        searchInput.value = currentValue + suggestion;

                    });
                    ul.appendChild(li);
                });
                suggestionsDiv.appendChild(ul);
                suggestionsDiv.style.display = 'block'; // 显示提示框
            } else {
                suggestionsDiv.style.display = 'none'; // 如果没有匹配的提示，隐藏提示框
            }
        }

        // 点击页面其他地方，隐藏提示框
        document.addEventListener('click', function(event) {
            if (!suggestionsDiv.contains(event.target) && event.target !== searchInput) {
                suggestionsDiv.style.display = 'none';
            }

        });
        const aHTMLALL = document.querySelectorAll('body a');

        aHTMLALL.forEach(link => {
            link.addEventListener('click', (event) => {
                if (link.getAttribute('href') == "#") {
                    event.preventDefault(); // 防止默认跳转行为
                }

            });
        });
    </script>


    </html>
    <?php
    // mysqli_close($link);
    ?>