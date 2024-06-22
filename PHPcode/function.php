<?php
// error_reporting(0);
// ini_set('display_errors', 0);
require_once 'db.php';
if (isset($_SESSION['user_id'][0]))
    $user_id = $_SESSION['user_id'][0];
else {
}
function mysql_fix_string($pdo, $string)
{
    return $pdo->quote($string);
}
function select($sel)
{
    global $link;
    //查詢成功時給qurrySel值為true，否為false
    // $querySel = mysqli_query($link, $sel);
    // //如果有查到
    // if ($querySel) {
    //     //如果querySel的資料大於0
    //     if (mysqli_num_rows($querySel) > 0) {
    //         //在querySelc還有列時，將資料傳給$data
    //         while ($row = mysqli_fetch_assoc($querySel)) {
    //             $data[] = $row;
    //         }
    //         return $data;
    //     }
    //     mysqli_free_result($querySel);
    // } else {
    //     echo "{$sel}無法查詢" . mysqli_error($link);
    // }
    // mysqli_free_result($querySel);
    $data = $link->query($sel);
    // mysqli_free_result($querySel);
    return $data;
}
function _select($sel)
{
    $data = $sel->fetchAll(PDO::FETCH_ASSOC);
    return $data;
}
function currentTime()
{
    date_default_timezone_set('Asia/Taipei');
    $current_time = date("Y-m-d H:i:s");
    return $current_time;
}
function ALLupcload($_file, $time, $c_user_id, $img_type)
{
    global $link;
    $file = $_file;
    $sel = "UPDATE `img_data` SET 
    `img_path`='$file', 
    `upload_date`='$time',
    `check_img_type`='$img_type' ,
    `creat_user_id`= {$c_user_id} 
    WHERE `creat_user_id`={$c_user_id} && `check_img_type`='$img_type'"; //GKDYbQta4AAi-44.jpg
    $result = $link->query($sel);
    header("Location:indexTWO.php?are=frontpage");
}
function queryAccount()
{
    $sel = "SELECT * FROM `user_account`";
    $data = select($sel);
    foreach ($data as $row1 => $v) {
        $user = array(
            'id' =>
            $v['id'],
            'name' =>
            $v['name']
        );
    }
    return $user;
}
function seleticon($img_type, $user_id)
{
    $sel = "SELECT * FROM `img_data` WHERE `check_img_type`='$img_type' && creat_user_id = {$user_id};";
    $data = select($sel);
    if (!is_null($data))
        foreach ($data as $row1) {
            $icon = array(
                'img_path' => array(
                    $row1['img_path']
                ),
                'check_img_type' => array(
                    $row1['check_img_type']
                )
            );
        }

    return $icon;
}
function queryimgids($sel)
{
    $data = select($sel);
    if (isset($data)) {
        while ($v = $data->fetch()) {
            $user[] = array(
                'id' => $v['id'],
                'img_path' => $v['img_path'],
                'check_img_type' => $v['check_img_type'],
                'mainTag' => $v['mainTag'],
                'creat_user_id' => $v['creat_user_id'],
                'secondaryTag' => $v['secondaryTag'],
                'ArtistTag' => $v['ArtistTag'],
                'anotherTag' => $v['anotherTag'],
                'upload_date' => $v['upload_date'],
                'ispublic' => $v['ispublic'],
                'source' => $v['source']
            );
        }
        return $user;
    }
}
function querytagids($sel)
{
    $data = select($sel);
    if (!empty($data)) {
        while ($v = $data->fetch()) {
            $user[] = array(
                'tag_name' => $v['tag_name'],
                'type' => $v['type'],
                'id' => $v['id'],
            );
        }
        if (!empty($user))
            return $user;
    }
}
function current_tag($colname, $sel)
{
    $all_tag = querytagids($sel);
    if (isset($all_tag)) {
        $all_tag_array = [];
        foreach ($all_tag as $_k => $_v) {
            if (!in_array($_v[$colname], $all_tag_array)) {
                if ($_v[$colname] != null) {
                    array_push($all_tag_array, $_v[$colname]);
                }
            } else {
                // echo $_v['tag_name'];
            }
        }

        return $all_tag_array;
    }
}

function current_img($sel, $data_c)
{
    $all_img = queryimgids($sel);

    $all_img_array = [];
    foreach ($all_img as $_k => $_v) {
        if (!in_array($_v[$data_c], $all_img_array))
            if ($_v[$data_c] != null)
                array_push($all_img_array, $_v[$data_c]);
    }

    return $all_img_array;
}
function imgdisplay($user, $G_tag)
{
    $m_page = $_GET['page'] - 1;
    $p_page = $_GET['page'] + 1;
    $per = 15; //每頁顯示項目數量30
    $pages = ceil(count($user) / $per);
    $pages_end = count($user) % $per;
    if (!isset($_GET["page"])) { //假如$_GET["page"]未設置
        $page = 1; //則在此設定起始頁數
    } else {
        $page = intval($_GET["page"]); //確認頁數只能夠是數值資料
    }
    $start = ($page - 1) * $per; //每一頁開始的資料序號
    $end = $page * $per - 1;

    //頁數等於最後一頁時
    if (isset($_GET['page']) && $_GET['page'] == $pages) {
        if ($pages_end == 0) {
            $pages_end == $per;
        } else {
            $end = $start + $pages_end - 1;
        }
    }

    // echo "<" . $pages_end . ">";
    echo "<div class='incontent'>";
    echo "<div class='contentblock' >";
    while ($start <= $end) :

        //一般圖庫的情況
        if ($user[$start]['check_img_type'] == 'HTTP') {
            echo <<<_END
                        <div class="out"><div class="img_frame">
                        <a href='indexTWO.php?img_id=
                    _END;
            echo $user[$start]['id'] . " '>";
            echo "<img src='" . $user[$start]['img_path'] . " ' class='col-xs-12 col-sm-4 thumbnail' alt='...'>" . "</a>
                </div></div>";
        } else {
            echo <<<_END
                        <div class="out"><div class="img_frame">
                        <a href='indexTWO.php?img_id=
                    _END;
            echo $user[$start]['id'] . " '>";
            echo "<img src='" . "./uploadimg/" . $user[$start]['img_path'] . " ' class='col-xs-12 col-sm-4 thumbnail' alt='...'>" . "</a>
                </div></div>";
        }

        $start++;
    endwhile;
    echo "</div>";
    echo "</div>";
    if ($G_tag) {
        //tag=&page=1
        echo "<div class='pagebutton'><a href=?tag=" . $G_tag . "&&page=1>首頁</a> ";
        if ($page != 1) {
            echo "<a href=?tag=" . $G_tag . "&&page=$m_page>上一頁</a> ";
        }
        echo "第 ";
        for ($i = 1; $i <= $pages; $i++) {
            if ($page - 7 < $i && $i < $page + 7) {
                echo "<a href=?tag=" . $G_tag .  "&&page=" . $i . ">" . $i . "</a> ";
            }
        }
        if ($pages != $page) {
            echo "<a href=?tag=" . $G_tag . "&&page=$p_page>下一頁</a> ";
        }
        echo " 頁 <a href=?tag=" . $G_tag . "&&page=" . $pages . ">末頁</a><br /></div>";
        if ($pages < $_GET['page']) {
            echo "頁數比帶大";
        }
    } else {
        //分頁頁碼
        // echo '共 ' . $data_nums . ' 筆-在 ' . $page . ' 頁-共 ' . $pages . ' 頁';
        echo "<div class='pagebutton'><a href=?page=1>首頁</a> ";
        if ($page != 1) {
            echo "<a href=?page=$m_page>上一頁</a> ";
        }
        echo "第 ";
        for ($i = 1; $i <= $pages; $i++) {
            if ($page - 7 < $i && $i < $page + 7) {
                echo "<a href=?page=" . $i . ">" . $i . "</a> ";
            }
        }
        if ($pages != $page) {
            echo "<a href=?page=$p_page>下一頁</a> ";
        }
        echo " 頁 <a href=?page=" . $pages . ">末頁</a><br /></div>";
    }
}
function selectsort($select_sort, $user_id)

{
    // $select_sort = $_POST['select_sort'];
    switch ($select_sort) {
        case "ID":
            $sel = "SELECT * FROM `img_data`  WHERE `creat_user_id` = {$user_id} order by `id` ";
            break;
        case "圖片名稱":
            $sel = "SELECT * FROM `img_data`   WHERE `creat_user_id` = {$user_id} order by `img_path`  ";
            break;
        case "上傳日期":
            $sel = "SELECT * FROM `img_data`   WHERE `creat_user_id` = {$user_id} order by `upload_date` desc";
            break;
        case "人物":
            $sel = "SELECT * FROM `img_data`   WHERE `creat_user_id` = {$user_id} order by `mainTag` desc ";
            break;
        case "團體":
            $sel = "SELECT * FROM `img_data`   WHERE `creat_user_id` = {$user_id} order by `secondaryTag`  ";
            break;
        case "作者":
            $sel = "SELECT * FROM `img_data`   WHERE `creat_user_id` = {$user_id} order by `ArtistTag`  ";
            break;
        case "public":
            $sel = "SELECT * FROM `img_data`   WHERE `ispublic` = 'public'&& `check_img_type`!='icon' && `check_img_type`!='image' && `check_img_type`!='Wimage' order by `upload_date` desc  ";
            break;
        case "人物未修改":
            $sel = "SELECT * FROM `img_data`  WHERE `creat_user_id` = {$user_id} && `mainTag` = '' ";
            break;
        case "團體未修改":
            $sel = "SELECT * FROM `img_data`  WHERE `creat_user_id` = {$user_id} && `secondaryTag` = '' ";
            break;
        case "作者未修改":
            $sel = "SELECT * FROM `img_data`  WHERE `creat_user_id` = {$user_id} && `ArtistTag` = '' ";
            break;
        case "其他標籤未修改":
            $sel = "SELECT * FROM `img_data`  WHERE `creat_user_id` = {$user_id} && `anothertag` = '' ";
            break;
    }
    return $sel;
}
function tag_img_quantity($inputtag, $status)
{
    global $user_id;

    if ($status == 'single')
        $sel = "SELECT * FROM `img_data` WHERE `creat_user_id` = $user_id ";
    else {
        $sel = "SELECT * FROM `img_data` WHERE `ispublic` = 'public' ";
    }

    //取得圖片資料(或排序)
    $user = queryimgids($sel);

    if (isset($inputtag) && $inputtag  && $user) {
        //遍歷圖片資訊
        //取圖片所有圖片標籤 another tag 包括人物 團體 作者等
        foreach ($user as $row1 => $v) {
            //處理當下圖片標籤 another tag 以逗號分割
            $anotherTag =  explode(",", $user[$row1]['anotherTag']);

            array_push($anotherTag, $user[$row1]['mainTag']);
            array_push($anotherTag, $user[$row1]['secondaryTag']);
            array_push($anotherTag, $user[$row1]['ArtistTag']);

            //檢查當下圖片有沒有被查詢的tag 如果有 ，資訊填入陣列
            if (in_array($inputtag, $anotherTag)) {
                $tagsimg[] = array(
                    'anotherTag' => $anotherTag,
                    'img_path' => $user[$row1]['img_path'],
                    'id' => $user[$row1]['id'],
                    'check_img_type' => $user[$row1]['check_img_type'],
                    'mainTag' => $user[$row1]['mainTag'],
                    'secondaryTag' => $user[$row1]['secondaryTag'],
                    'ArtistTag' => $user[$row1]['ArtistTag']
                );
            }
        }
        if (isset($tagsimg))
            return count($tagsimg);
        else
            return 0;
    }
}
