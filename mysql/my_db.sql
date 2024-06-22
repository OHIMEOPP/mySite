-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2024-06-22 06:12:43
-- 伺服器版本： 10.4.32-MariaDB
-- PHP 版本： 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `my_db`
--

-- --------------------------------------------------------

--
-- 資料表結構 `img_data`
--

CREATE TABLE `img_data` (
  `id` int(11) NOT NULL,
  `img_path` varchar(255) NOT NULL,
  `upload_date` datetime NOT NULL,
  `mainTag` varchar(30) DEFAULT NULL,
  `secondaryTag` varchar(30) DEFAULT NULL,
  `ArtistTag` varchar(30) DEFAULT NULL,
  `anotherTag` varchar(2552) DEFAULT NULL,
  `creat_user_id` int(100) NOT NULL,
  `check_img_type` varchar(10) NOT NULL DEFAULT 'normal',
  `ispublic` varchar(11) NOT NULL DEFAULT 'public',
  `source` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `img_data`
--

INSERT INTO `img_data` (`id`, `img_path`, `upload_date`, `mainTag`, `secondaryTag`, `ArtistTag`, `anotherTag`, `creat_user_id`, `check_img_type`, `ispublic`, `source`) VALUES
(1, 'oringle61.jpg', '2024-05-29 10:53:07', NULL, NULL, NULL, '', 1, 'icon', 'public', ''),
(2, 'GNbWpKja4AAfHQa.jpg', '2024-05-29 10:52:41', '花芽すみれ', 'VISPO', NULL, '銀髮,藍瞳,睡衣,挑染', 1, 'image', 'public', ''),
(3, 'GKY8ndgboAAqSml.jpg', '2024-05-23 14:40:55', '花芽すみれ', 'VISPO', NULL, '星空,泡泡,銀髮,藍瞳,挑染', 1, 'Wimage', 'public', ''),
(4, '1a40d8e5743889f96fea8f1382de8f2c.jpg', '2024-04-25 04:10:36', '拉姆', 're:0', NULL, '粉髮,女僕裝,白絲,髮箍', 1, 'normal', 'public', ''),
(6, '83a4de84-0847-45c2-8a0e-d7a2d89d1592.jpg', '2024-04-25 06:59:34', '', '', '', '金髮,和服,巨乳,大腿,挑染,梅花,藍瞳,玫瑰,長髮', 1, 'normal', 'public', ''),
(7, 'Fqh8zmuacAEPTQf.jpg', '2024-05-06 23:35:16', '', '', '', '棕髮,藍瞳,雙髮辮,下衣失蹤,軟材質,休閒服', 1, 'normal', 'public', ''),
(8, '91c780a421392d7f537a6d658eb32dda-2.png', '2024-04-25 07:00:48', NULL, NULL, NULL, '黑髮,藍瞳,制服,大腿,大海,雙子', 1, 'normal', 'public', ''),
(9, '130Still-Uehara-Ayumu-5IJzLg.png', '2024-04-25 07:01:14', '上原步夢', 'lovelive', '', '夜晚,粉髮,睡衣,金瞳,側身,夜晚', 1, 'normal', 'public', ''),
(10, 'GKOuTPzacAApb0_.jpg', '2024-05-10 04:29:18', '彩奈', '蔚藍檔案', '', '藍髮,藍瞳,雨傘,水,抱腿,單眼', 1, 'normal', 'public', ''),
(12, 'GIdi09XawAAar1J.jpg', '2024-04-25 07:03:40', '花火', '星穹鐵道', '', '黑髮,粉瞳,腳,煙火,水,長髮', 1, 'normal', 'public', ''),
(13, 'GIdi09XawAAar1J.jpg', '2024-04-25 07:03:53', '', '', '', '', 2, 'normal', 'public', ''),
(14, '__arona_blue_archive_drawn_by_kanikama_acedia__sample-e1af9d1b521dde16cefb9fb915d7dd22.jpg', '2024-05-10 16:23:17', '彩奈', '蔚藍檔案', '', '藍髮,大海,制服,藍瞳,百褶裙,內褲,單眼', 1, 'normal', 'public', ''),
(15, '__arona_blue_archive_drawn_by_luzzi_milllim__sample-bf606ec89870e27636202b9ac6c038b7.jpg', '2024-05-10 16:24:47', '彩奈', '蔚藍檔案', '', '藍髮,水,制服,藍瞳,百褶裙,肚子,單眼', 1, 'normal', 'private', ''),
(16, '__arona_blue_archive_drawn_by_ju_ok__sample-7372e7aa60a801b52c900a9ec5ae4d01.jpg', '2024-05-10 16:25:23', '彩奈', '蔚藍檔案', '', '藍髮,藍瞳,制服,百褶裙,單眼', 1, 'normal', 'public', ''),
(17, '__sensei_doodle_sensei_and_arona_blue_archive_drawn_by_oiru_fattyoils__sample-7afb235d5de618e9c5fb6ba8ce4ce09f.jpg', '2024-05-10 16:27:11', '彩奈', '蔚藍檔案', NULL, '藍髮,藍瞳,制服,百褶裙,單眼', 1, 'normal', 'public', ''),
(18, '__arona_blue_archive_drawn_by_nonddu__sample-3b7b903160a7749fb5637d082976b9dc.jpg', '2024-05-10 16:27:19', '彩奈', '蔚藍檔案', '', '藍髮,藍瞳,制服,百褶裙,生氣,短髮', 1, 'normal', 'private', ''),
(19, 'Hololive.full.3296706.jpg', '2024-05-11 23:49:38', '時乃空', 'hololive', '', '藍瞳,棕髮,黑髮,紫瞳,獸耳,躺姿,牽手,雙人,長髮', 1, 'normal', 'public', ''),
(20, 'd707d8f1e728bdf5c20f84104439792d86900d16.jpg', '2024-05-11 23:50:16', '時乃空', 'hololive', '', '棕髮,藍瞳,長髮,腋下', 1, 'normal', 'public', ''),
(21, 'Uehara.Ayumu.full.3205053.png', '2024-05-11 17:50:40', '上原步夢', 'lovelive', '', '粉髮,金瞳,雨傘,下雪', 1, 'normal', 'public', ''),
(22, '__sakura_miko_hololive_drawn_by_ginn_hzh770121__sample-68b74d50ca45420bb449836bd42ed48b.jpg', '2024-05-11 23:51:21', '櫻巫女', 'hololive', '', '粉髮,綠瞳,大腿,巫女,水,櫻花', 1, 'normal', 'public', ''),
(23, '貓耳.jpg', '2024-05-11 23:51:21', '', '', '', '黑髮,紅瞳,和服,雨傘,櫻花', 1, 'normal', 'public', ''),
(24, '20210722_141724.jpg', '2024-05-11 23:51:21', '雪花菈米', 'hololive', '', '藍髮,大海,泳裝,金瞳,馬尾,百褶裙,肚子', 1, 'normal', 'public', ''),
(25, '20210720_095333.jpg', '2024-05-11 23:53:57', '雪花菈米', 'hololive', '', '藍髮,大海,泳裝,金瞳,馬尾,百褶裙', 1, 'normal', 'public', ''),
(26, '20210722_171625.jpg', '2024-05-11 23:53:57', '戌神沁音', 'hololive', '', '棕髮,棕瞳,泳裝,大海,肚子,胸部,獸耳,巨乳', 1, 'normal', 'public', ''),
(27, '20210722_172039.jpg', '2024-05-11 23:54:48', '戌神沁音', 'hololive', '', '棕髮,棕瞳,帽子,抱腿,連衣帽,腿環,胸', 1, 'normal', 'public', ''),
(28, '20210722_172112.jpg', '2024-05-11 23:54:48', '雪花菈米', 'hololive', '', '藍髮,金瞳,大海,泳裝,短裙,百褶裙,大腿,肚子,挑染,巨乳,胸部', 1, 'normal', 'public', ''),
(29, '20210722_172308.jpg', '2024-05-11 23:55:32', '米浴', '賽馬娘', '', '紫瞳,黑髮,過膝襪,短裙,單眼,黑絲,花裝飾,獸耳,禮服,武器', 1, 'normal', 'public', ''),
(30, 'iofi.jpg', '2024-05-11 23:55:32', NULL, NULL, NULL, NULL, 1, 'normal', 'public', ''),
(31, '阿夸2.jpg', '2024-05-11 23:56:36', NULL, NULL, NULL, NULL, 1, 'normal', 'public', ''),
(32, '百鬼.jpg', '2024-05-11 23:56:36', NULL, NULL, NULL, NULL, 1, 'normal', 'public', ''),
(33, 'E5nj_27WEAcYiPQ.jfif', '2024-05-11 23:57:52', NULL, NULL, NULL, NULL, 1, 'normal', 'public', ''),
(34, '89528119_p0_master1200.jpg', '2024-05-11 23:57:52', '熒', '原神', 'ふーみ', '金髮,金瞳,休閒服,短髮,臂環,側身,露背,手環,食物', 1, 'normal', 'public', ''),
(35, '露娜.png', '2024-05-11 23:57:52', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(36, 'miko.jfif', '2024-05-11 23:57:52', '櫻巫女', '', '', '休閒服', 1, '', 'public', ''),
(37, 'korone.jfif', '2024-05-12 00:01:19', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(38, 'cd3f0dd169e5db4ec022ff7907eeae467c147c4f.jpg', '2024-05-12 00:01:19', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(39, '熒.jpg', '2024-05-12 00:08:06', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(40, 'VKjBOQZ.jpg', '2024-05-12 00:08:06', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(41, 'MKz7EYa.jpg', '2024-05-12 00:09:39', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(42, '20211106_150017.jpg', '2024-05-12 00:09:39', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(43, '重砲.jfif', '2024-05-12 00:10:40', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(44, '大小姐.jfif', '2024-05-12 00:10:40', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(45, '88401634_p0.jpg', '2024-05-12 00:11:18', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(46, 'ao_yushiko.jpg', '2024-05-01 21:20:32', NULL, NULL, NULL, NULL, 2, 'icon', 'public', ''),
(47, '202204_brat.jpg', '2024-04-22 21:27:34', NULL, NULL, NULL, NULL, 2, 'image', 'public', ''),
(48, '2023.9.23.jpg', '2024-05-01 21:29:32', NULL, NULL, NULL, NULL, 2, 'Wimage', 'public', ''),
(49, 'd37ux4qgryq71.jpg', '2024-05-12 00:12:57', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(50, 'EYDcTgDUEAA88b2.jfif', '2024-05-12 00:12:57', '時乃空', 'hololive', 'おるたん', '棕髮,藍瞳,長髮,腋下,側身', 1, '', 'public', ''),
(51, 'Es9PTs1U4Ac6dv3.png', '2024-05-12 00:15:26', '', '', '', '露背,金瞳,大海,藍瞳,棕髮,泳裝,花裝飾,獸耳,雙人,側身,藍瞳,側髮束', 1, '', 'public', ''),
(52, 'GGDY677b0AAKiC0.jpg', '2024-04-26 09:55:53', '流螢', '星穹鐵道', '', '銀髮,破曉,逆光,辮子,漸色瞳,粉瞳,紫瞳,髮箍', 1, '', 'public', ''),
(53, '1dfda5e07aa4a7187f2eee14e979c6bb9622b435.jpg', '2024-04-26 10:11:21', '甘雨', '', '', '黑絲,藍髮,角,紫瞳', 2, '', 'public', ''),
(54, 'oringle6.jpg', '2024-04-26 10:46:13', '菱羽紅旭', '原創', 'OHIMEOPP', '金髮,金瞳,過膝襪,翹腳,露肩', 1, '', 'public', ''),
(55, 'GLW6DIwa0AAL3gj.jpg', '2024-04-27 23:53:58', '天宮こころ', 'にじさんじ', '', '藍髮,大海,泳裝,金瞳,側髮束', 1, '', 'public', ''),
(56, 'DlzL7bPUcAAjT_u.jpg', '2024-04-28 00:48:49', '渡邊曜', 'lovelive', '三九呂', '銀髮,藍瞳,和服,露肩', 1, '', 'public', ''),
(57, 'https://pbs.twimg.com/media/GMJJHlVacAAXIVn?format=jpg&name=900x900', '2024-04-28 14:22:31', '三月七', '星穹鐵道', '', '粉髮,泳裝,大海', 1, 'HTTP', 'public', ''),
(58, '192cd298-1799-4c40-8fae-ec2690508da6.jpg', '2024-04-30 11:42:29', '七詩ムメイ', 'hololive', 'あずーる', '棕髮,泳裝,長髮,金瞳,雙馬尾,披肩,食物,大腿', 1, '', 'public', ''),
(59, '103976684_p0.png', '2024-04-30 20:58:20', '熒', '原神', '', '金髮,休閒服,金瞳,大衣', 1, '', 'public', ''),
(60, 'FEopn_9VgAIL3LH.jfif', '2024-05-12 00:15:26', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(61, 'FB40BDIVUAAU3sY.jfif', '2024-05-12 00:16:51', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(62, 'FGedZf3VUAMw27X.jfif', '2024-05-12 00:16:51', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(63, 'FC8fcz_aUAANyWX.jfif', '2024-05-12 00:17:33', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(64, 'img_kv-0.jfif', '2024-05-12 00:17:33', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(65, 'unnamed.jpg', '2024-05-12 00:18:51', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(66, 'FIGeAchaUAMqP62.jfif', '2024-05-12 00:18:51', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(67, 'FIjlXRMaMAA6fQY.jfif', '2024-05-12 00:20:56', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(68, 'wei06ecfrpa81.png', '2024-05-12 00:20:56', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(69, '8etdw675nrg71.jpg', '2024-05-12 00:24:52', '', '', '', '休閒服', 1, '', 'public', ''),
(70, 'unnamed (1).jpg', '2024-05-12 00:24:52', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(71, 'Eoz6Mn1UYAAGS8S.jfif', '2024-05-12 00:27:43', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(72, 'FNuxJJiagAU5Vbw.jpg', '2024-05-12 00:27:43', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(73, '20220315_132418.jpg', '2024-05-12 00:28:32', '伊蕾娜', '魔女之旅', 'あずーる', '銀髮,藍瞳,魔女,長髮,露肩,短裙,百褶裙,大腿,帽子,大衣,腋下,胸部,荷葉邊', 1, '', 'public', ''),
(74, '20220315_162911.jpg', '2024-05-12 00:28:32', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(75, 'EyKBepbVEAAIFvf.jpg', '2024-05-12 00:30:29', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(76, '96962021_p0_master1200.jpg', '2024-05-12 00:30:29', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(77, 'FNZs8jGUUAUVhLU.jpg', '2024-05-12 00:31:08', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(78, '270_042.jpg', '2024-05-12 00:31:08', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(79, 'FLIXGPbVgAYNzpC.jpg', '2024-05-12 00:31:56', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(80, 'FM1htUDakAk5jIV.jpg', '2024-05-12 00:31:56', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(81, 'FQOexTgVcAgt0Mr.jpg', '2024-05-12 00:32:46', '戌神沁音', 'hololive', 'フカヒレ', '棕髮,運動內衣,拳套,肚子,尾巴,獸耳,頸環', 1, '', 'public', ''),
(82, 'FB_IMG_1650472030352.jpg', '2024-05-12 00:32:46', NULL, NULL, NULL, NULL, 1, '', 'public', ''),
(83, 'https://pbs.twimg.com/media/GLcqAy9aAAAOjSU?format=jpg&name=4096x4096', '2024-05-14 11:39:28', NULL, NULL, NULL, NULL, 1, 'HTTP', 'public', ''),
(84, 'https://pbs.twimg.com/media/GLCtuEfWcAAOX8s?format=jpg&name=medium', '2024-05-14 11:41:28', NULL, NULL, NULL, NULL, 1, 'HTTP', 'public', ''),
(85, 'https://pbs.twimg.com/media/GLpmPMobUAAx9wu?format=jpg&name=large', '2024-05-14 11:41:28', '拉姆', 're:0', '', '粉髮,紅瞳,髮箍,生氣,女僕裝,荷葉邊,單眼', 1, 'HTTP', 'public', ''),
(86, 'https://pbs.twimg.com/media/GL13ZqCaMAA3dqA?format=jpg&name=4096x4096', '2024-05-14 11:44:06', NULL, NULL, NULL, NULL, 1, 'HTTP', 'public', ''),
(87, 'https://pbs.twimg.com/media/GMEKmDgbQAAqHp5?format=jpg&name=large', '2024-05-14 11:46:12', NULL, NULL, NULL, NULL, 1, 'HTTP', 'public', ''),
(88, 'https://pbs.twimg.com/media/GMere0CaMAAwowm?format=jpg&name=large', '2024-05-14 11:52:45', NULL, NULL, NULL, NULL, 1, 'HTTP', 'public', ''),
(89, '3192ad4ceaf6484a.jpg', '2024-06-22 11:50:32', NULL, NULL, NULL, NULL, 3, 'icon', 'public', ''),
(90, '103976684_p0.png', '2024-05-01 21:26:05', NULL, NULL, NULL, NULL, 3, 'image', 'public', ''),
(91, 'KV_smoke_2880.dd9c01d6.png', '2024-05-01 21:26:05', NULL, NULL, NULL, NULL, 3, 'Wimage', 'public', ''),
(92, 'FMpoNRXaUAAiOcw.jpg', '2024-05-01 21:38:55', '七詩ムメイ', 'hololive', 'あずーる', '蘿莉,馬尾,棕髮,金瞳', 1, '', 'public', ''),
(93, 'F8mdY-ga8AA2DY6.jpg', '2024-05-01 21:38:55', '伊蕾娜', '魔女之旅', 'あずーる', '銀髮,藍瞳,凌晨,大腿,放髮', 1, '', 'public', ''),
(94, 'GIDqWenbwAAf0Ms.jpg', '2024-05-01 21:38:55', NULL, NULL, NULL, '藍髮,武士刀,包包頭,制服,百褶裙,側身,藍瞳', 1, '', 'public', ''),
(95, 'https://pbs.twimg.com/media/GMp0XiaagAAkgB-?format=jpg&name=4096x4096', '2024-05-14 11:54:35', '艾妮絲', '轉生王女', '', '金髮,銀髮,百合,禮服,接吻,荷葉邊,躺姿,側身,雙人,AI,閉眼,花裝飾,花瓣,側身', 1, 'HTTP', 'public', ''),
(96, 'GLcEFyHbMAAD589.jpg', '2024-05-01 21:44:55', NULL, NULL, NULL, NULL, 37, 'image', 'public', ''),
(97, 'GLcEFyHbMAAD589.jpg', '2024-05-01 21:44:48', NULL, NULL, NULL, NULL, 37, 'Wimage', 'public', ''),
(98, 'GLW6DIwa0AAL3gj.jpg', '2024-06-22 12:02:02', 'dsa', '原創', 'dddd', '黑絲,藍髮,角', 37, 'icon', 'public', ''),
(99, 'oringle61.jpg', '2024-05-02 16:55:38', '上元部夢', '星穹鐵道', 'OHIMEOPP', '金髮,粉髮,制服', 37, '', 'public', ''),
(100, 'GJmQBUVaIAAWAt4.jpg', '2024-05-02 17:03:01', '三月七', '星穹鐵道', '', 'AI,短裙,百褶裙,大腿,星空,粉髮,', 1, '', 'public', ''),
(102, 'GLW8TIeboAAC7lN.jpg', '2024-05-02 17:39:07', 'dsa', '原創', '三九呂', '黑絲,藍髮,角', 37, '', 'public', ''),
(103, '1dfda5e07aa4a7187f2eee14e979c6bb9622b435.jpg', '2024-05-02 17:40:36', 'dsa', '星穹鐵道', '三九呂', '粉髮,銀髮,制服,金髮', 37, '', 'public', ''),
(104, 'https://pbs.twimg.com/media/GMp0YMMacAAOzpU?format=jpg&name=4096x4096', '2024-05-14 11:55:09', '艾妮絲', '轉生王女', '', '金髮,綠瞳,銀髮,紫瞳,百合,禮服,接吻,荷葉邊,躺姿,側身,雙人,AI', 1, 'HTTP', 'public', ''),
(105, 'https://pbs.twimg.com/media/GMim0GobcAAvyhU?format=jpg&name=large', '2024-05-02 18:33:27', '花火', '星穹鐵道', '', '網襪,地雷系,黑髮,挑染,雙馬尾,粉瞳,吐舌,頸環', 1, 'HTTP', 'public', ''),
(106, 'DguheHRVMAA3H9z.jpg', '2024-05-03 11:30:56', '渡邊曜', 'lovelive', '三九呂', '銀髮,藍瞳,泳裝,水手服,肚子', 1, '', 'public', ''),
(107, 'ANIME-PICTURES.NET_-_824865-2953x4134-blue+archive-arona+(blue+archive)-plana+(blue+archive)-zi+yue+liuli-long+hair-tall+image.jpg', '2024-05-04 22:57:23', '彩奈', '蔚藍檔案', '紫月瑠璃', '藍髮,兔女郎,露背,藍瞳,兔耳,白髮,挑染', 1, '', 'public', ''),
(108, 'GKnDS3cXoAAItky.jpg', '2024-05-04 22:59:11', '神里綾華', '原神', '', '藍髮,藍瞳,帽子,', 1, '', 'public', ''),
(109, 'FmGWsvCaEAE91fc.jpg', '2024-05-05 20:25:11', '熒', '原神', '', '金髮,制服,黑絲,金瞳,百褶裙', 1, '', 'public', ''),
(110, '163856296792.jpg', '2024-05-06 01:00:25', '時乃空', 'hololive', 'おるたん', '棕髮,藍瞳,', 1, '', 'public', ''),
(112, 'GJnIYZSaIAAOic-.jpg', '2024-05-06 18:02:28', '星川莎拉', 'にじさんじ', 'あるさん', '金髮,金瞳,紅瞳,內衣,異色瞳,躺姿,肚子', 1, '', 'public', ''),
(113, 'https://pbs.twimg.com/media/GL-pbmVa0AAF6X-?format=jpg&name=large', '2024-05-06 18:55:17', '三月七', '星穹鐵道', '', '粉髮,制服,躺姿,粉瞳,大腿', 1, 'HTTP', 'public', ''),
(114, 'GKO9Xg7aEAA8wlX.jpg', '2024-05-10 10:10:59', '黑塔', '星穹鐵道', '', '棕髮,紫瞳,花裝飾,百褶裙,制服,木偶', 1, '', 'public', ''),
(115, 'GJL3XqTWMAALK3i.jpg', '2024-05-10 10:19:00', '黑塔', '星穹鐵道', '', '棕髮,紫瞳,花裝飾,女僕裝,木偶', 1, '', 'public', ''),
(116, 'https://pbs.twimg.com/media/GM6sKUqboAIb3Uw?format=jpg&name=4096x4096', '2024-05-14 17:26:52', '熒', '原神', '', '金髮,飄逸', 1, 'HTTP', 'public', ''),
(117, 'https://pbs.twimg.com/media/GM7lu6fasAAsJ5O?format=jpg&name=medium', '2024-05-14 17:35:54', '鏡華', '公主連結', '', '紫髮,金瞳,泡泡,荷葉邊,鴨子坐,大海,泳裝,肚子,生氣,蘿莉,水,花裝飾,獸耳', 1, 'HTTP', 'public', ''),
(119, '44d7c627-7b6b-4898-b386-bf42db24f63d.jpg', '2024-04-25 06:58:19', '姬柊雪菜', '嗜血狂襲', '', '肚子,黑髮,內褲,男友上衣,棕瞳,躺姿,短裙,內褲,胸部', 1, '', 'public', ''),
(120, 'GNc2gwLb0AAfSuO.jpg', '2024-05-23 15:40:54', '', '', '', '粉髮,綠瞳,獸耳,尾巴,項圈,鎖鏈,露肩,鴨子坐', 1, '', 'public', ''),
(121, 'GMVd4pGb0AEyREy (1).jpg', '2024-05-23 15:46:01', '流螢', '星穹鐵道', 'ほうき星', '銀髮,破曉,大海,藍瞳,胸部,漸色瞳,紫瞳,髮箍,長髮', 1, 'normal', 'public', ''),
(122, 'GNbWXMObAAAJn0o.jpg', '2024-05-23 15:48:51', '橘ひなの', 'VISPO', '', '異色髮,粉髮,黑髮,泳裝,頸環,大海,藍瞳,荷葉邊', 1, 'normal', 'public', ''),
(123, 'GNcfE1wbcAAwSLC.jpg', '2024-05-23 21:42:37', '', '', '', '', 1, 'normal', 'private', ''),
(125, 'GMei-6LagAAHC8t.jpg', '2024-05-29 12:38:09', '流螢', '星穹鐵道', '', '銀髮,藍瞳,漸色瞳,紫瞳,側躺,髮箍', 1, 'normal', 'public', ''),
(126, 'https://pbs.twimg.com/media/GNaXjYxXoAAjpqQ?format=jpg&name=large', '2024-05-29 20:38:27', '卡芙卡', '星穹鐵道', '', '紅髮,紅瞳,露肩,鎖骨,巨乳,胸部,腿環,大腿', 1, 'HTTP', 'public', ''),
(127, 'https://pbs.twimg.com/media/GNdFu7_aMAA6SBC?format=jpg&name=4096x4096', '2024-05-29 21:07:42', '流螢', '星穹鐵道', '', 'AI,銀髮,髮箍,胸部,內衣,睡衣,大腿', 1, 'HTTP', 'public', ''),
(128, 'https://pbs.twimg.com/media/GIdfd_cboAAaxxP?format=jpg&name=large', '2024-05-29 21:07:50', '', '', '', '銀髮,異色瞳,金瞳,藍瞳,白絲,獸耳,大腿', 1, 'HTTP', 'public', ''),
(129, 'https://pbs.twimg.com/media/GN_nFzIaYAAU5ia?format=jpg&name=large', '2024-05-29 21:08:14', '流螢', '星穹鐵道', '', '銀髮,下雪,伸手,藍瞳,粉瞳,漸色瞳', 1, 'HTTP', 'public', ''),
(130, 'https://pbs.twimg.com/media/GOG8R5bXgAAasZT?format=jpg&name=large', '2024-05-29 21:10:57', '三月七', '星穹鐵道', '', '粉髮,粉瞳,泳裝,短髮,大腿,頸環,肚子,大海,百褶裙,胸部', 1, 'HTTP', 'public', ''),
(131, 'https://pbs.twimg.com/media/GOGuiVubIAI10A4?format=jpg&name=large', '2024-05-29 21:11:28', '流螢', '星穹鐵道', '', '銀髮,髮箍,雙馬尾', 1, 'HTTP', 'public', ''),
(132, 'https://pbs.twimg.com/media/GOQSEdDbkAAVE84?format=jpg&name=large', '2024-05-29 21:13:26', '風真伊呂波', 'hololive', '', '金髮,大海,青瞳,休閒服,帽子,翹腳,肚子,大腿,辮子', 1, 'HTTP', 'public', ''),
(133, 'https://pbs.twimg.com/media/GOZMYBEasAEH2He?format=jpg&name=large', '2024-05-29 21:15:21', '琳妮特', '原神', '', '亞麻髮', 1, 'HTTP', 'public', ''),
(134, 'https://pbs.twimg.com/media/GOanhX0aUAATGYW?format=jpg&name=large', '2024-05-29 21:15:45', '花芽すみれ', 'VISPO', '', '銀髮,青瞳,星空,花裝飾,禮服,背姿,露肩', 1, 'HTTP', 'public', ''),
(135, 'https://pbs.twimg.com/media/GOjcOn6a4AAqy4-?format=jpg&name=large', '2024-05-29 21:16:12', '早瀨優香', '蔚藍檔案', '', '藍瞳,藍髮,雙馬尾,大腿,披肩,百褶裙,制服,生氣', 1, 'HTTP', 'public', 'https://x.com/CCGY0/status/1794926602230583462/photo/1'),
(136, 'https://pbs.twimg.com/media/GOk8kbBbUAASB6B?format=jpg&name=medium', '2024-05-29 21:17:07', '熒', '原神', '', '金髮,金瞳,水,躺姿,黃昏,短髮', 1, 'HTTP', 'public', 'https://x.com/yakotakos/status/1795032861734563933/photo/1'),
(137, 'https://pbs.twimg.com/media/GOk8oXmawAAKVCq?format=jpg&name=large', '2024-05-29 21:17:26', '熒', '原神', '', '金髮,金瞳,花裝飾,短髮,翅膀,側身', 1, 'HTTP', 'public', 'https://x.com/yakotakos/status/1795032861734563933/photo/2'),
(138, 'https://pbs.twimg.com/media/GOoWz7RakAEubr3?format=jpg&name=large', '2024-05-29 21:18:04', '湊阿庫婭', 'hololive', '', '粉髮,挑染,淺藍髮,紫瞳,水下,泳裝,飄逸,水', 1, 'HTTP', 'public', 'https://x.com/Emma_x_20240421/status/1795272495374942326/photo/1'),
(139, 'https://pbs.twimg.com/media/GOM5pjzbAAAfvx_?format=jpg&name=4096x4096', '2024-05-29 21:18:20', '', '', '', '棕髮,棕瞳,百褶裙,短裙,啦啦隊服,彩球,大腿,肚子,巨乳,側髮束,下乳', 1, 'HTTP', 'public', 'https://x.com/nekoAImia/status/1795228992699511194/photo/1'),
(140, 'https://pbs.twimg.com/media/GOpuvFna4AAPTKo?format=jpg&name=large', '2024-05-29 21:19:02', '江風', '碧藍航線', '', '白髮,青瞳,過膝襪,短裙,百褶裙,肚子,大腿,尾巴,武器,水', 1, 'HTTP', 'public', 'https://x.com/yuzu_kuroneko/status/1795369424213651889/photo/1'),
(141, 'https://pbs.twimg.com/media/GOqF6-za4AAfiP1?format=jpg&name=4096x4096', '2024-05-29 21:19:33', '時雨羽衣', '', '', '亞麻髮,綠瞳,女僕裝,愛心手,特殊髮型', 1, 'HTTP', 'public', 'https://x.com/waji_oekaki/status/1795394657150734734/photo/1'),
(142, 'https://pbs.twimg.com/media/GOpTJ5qbwAAKYtR?format=jpg&name=4096x4096', '2024-05-29 21:20:02', '熒', '原神', '', '金髮,金瞳,泳裝,肚子,雨傘,大腿,花裝飾', 1, 'HTTP', 'public', 'https://x.com/DailyGenshinArt/status/1795338833917305069/photo/1'),
(143, 'https://pbs.twimg.com/media/GOtHJMPaYAAH6bg?format=jpg&name=large', '2024-05-29 21:20:53', '小鳥遊星野', '蔚藍檔案', '', '粉髮,異色瞳,金瞳,藍瞳,雙馬尾,女僕裝', 1, 'HTTP', 'public', 'https://x.com/Rinca_ba/status/1795651283304734969/photo/1'),
(145, 'https://pbs.twimg.com/media/GOtO132bMAARdQd?format=jpg&name=4096x4096', '2024-05-29 21:22:03', '風真伊呂波', 'hololive', '', '金髮,青瞳,泳裝,臂環,肚子,露肩,大腿', 1, 'HTTP', 'public', ''),
(146, 'https://pbs.twimg.com/media/GOqhX8wboAAtUDf?format=jpg&name=large', '2024-05-29 21:22:20', '小鳥遊星野', '蔚藍檔案', '', '粉髮,金瞳,藍瞳,異色瞳,露肩,百褶裙', 1, 'HTTP', 'public', 'https://x.com/CrownaRed/status/1795424846874390661/photo/1'),
(147, 'https://pbs.twimg.com/media/GOtyvxvbIAEQ0ff?format=jpg&name=large', '2024-05-29 21:22:41', '熒', '原神', '', '金髮,金瞳,胸部,浴巾,煙', 1, 'HTTP', 'public', 'https://x.com/DailyGenshinArt/status/1795655043804528799/photo/1'),
(148, 'https://pbs.twimg.com/media/GOpawvsbIAA9e5x?format=jpg&name=4096x4096', '2024-05-29 21:23:19', '博衣小夜璃', 'hololive', '', '粉髮,紫瞳,獸耳,眼鏡,頸環,大衣', 1, 'HTTP', 'public', 'https://x.com/neru5__/status/1795347207404781709/photo/1'),
(149, 'GOtuERSbYAEbdP-.jpg', '2024-06-01 23:40:55', '宵宮', '原神', '', '橘髮,紅瞳,啦啦隊服,下乳,大腿,肚子,胸部,馬尾,彩球', 1, 'normal', 'public', 'https://x.com/DailyGenshinArt/status/1795649898358231090/photo/1'),
(150, 'GOvZlwAaMAAszAx.jpg', '2024-06-02 10:42:44', '星川莎拉', 'にじさんじ', '', '金髮,異色瞳,金瞳,紅瞳,胸部,肚子', 1, 'normal', 'public', 'https://x.com/SUICABAR72/status/1795768325324386672/photo/1'),
(151, 'GOkU3uXa0AACSm2.jpg', '2024-06-02 10:43:06', '砂狼白子', '蔚藍檔案', 'あまね', '灰髮,藍瞳,獸耳,制服,圍巾,愛心手,短髮', 1, 'normal', 'public', 'https://x.com/amane__san/status/1794989027235656144/photo/1'),
(152, 'GOktE_BaoAAhUYO.jpg', '2024-06-02 11:16:10', '阿慈谷日富美', '蔚藍檔案', '', '金髮,金瞳,雙馬尾,長髮,女僕裝,白絲', 1, 'normal', 'public', 'https://x.com/Rinca_ba/status/1795017098386608636/photo/1'),
(153, 'GNS6-w4bUAA-SPA.jpg', '2024-06-02 11:16:10', '', '', '', '', 1, 'normal', 'public', ''),
(154, '__inugami_korone_listener_and_nyanpyou_hololive_and_2_more_drawn_by_amagai_tarou__sample-57654313145687156d7e6b466fe20f9a.jpg', '2024-06-02 11:17:05', '', '', 'おるたん', '', 1, 'normal', 'public', ''),
(155, '__minato_aqua_shirakami_fubuki_and_tokino_sora_hololive_drawn_by_amagai_tarou__sample-7f035eba56f16847e5068d0ed4eb72bb.jpg', '2024-06-02 11:17:05', '', '', '', '', 1, 'normal', 'public', ''),
(156, 'd36647-6-955817-0.png', '2024-06-02 11:17:05', '時乃空', 'hololive', 'あずーる', '棕髮,藍瞳,運動服,腋下,胸部,背姿,馬尾', 1, 'normal', 'public', ''),
(157, 'E1bVWjNVoAAUQf_.jpg', '2024-06-02 11:17:05', '時乃空', 'hololive', 'おるたん', '棕髮,藍瞳,長髮,後臀部,大腿,氣球,百褶裙,躺姿', 1, 'normal', 'public', ''),
(158, 'E1bVXaoUYAogS18.jpg', '2024-06-02 11:17:05', '時乃空', 'hololive', 'おるたん', '棕髮,棕瞳,櫻花,馬尾,休閒服', 1, 'normal', 'public', ''),
(159, 'EMyGiMTU0AEBI2T.jfif', '2024-06-02 11:17:05', '', '', '', '', 1, 'normal', 'public', ''),
(160, 'EQGBfuiUYAEer3Q.jfif', '2024-06-02 11:17:05', '時乃空', 'hololive', 'おるたん', '棕髮,棕瞳,長髮,躺姿,大腿,睡衣,散髮', 1, 'normal', 'public', ''),
(161, 'EXfTcu_UcAUrd35.jfif', '2024-06-02 11:17:05', '', '', '', '', 1, 'normal', 'public', ''),
(162, 'F7bAV8FbcAAWi_M.jpg', '2024-06-02 11:17:05', '櫻巫女', 'hololive', 'おるたん', '粉髮,綠瞳,露肩,鎖骨,長髮', 1, 'normal', 'public', ''),
(163, 'F7USg8YawAEQKsv.jpg', '2024-06-02 11:17:05', '春先和香', 'hololive', 'おるたん', '亞麻髮,粉瞳', 1, 'normal', 'public', ''),
(164, 'FDG1rXpaIAIP7o8.jfif', '2024-06-02 11:17:05', '時乃空', 'hololive', 'おるたん', '棕髮,藍瞳,百褶裙,大腿,腿環,長髮,伸手', 1, 'normal', 'public', ''),
(165, 'FNFo1-xaQAE1GqW.jpg', '2024-06-02 11:17:06', '櫻巫女', 'hololive', 'おるたん', '粉髮,綠瞳,放髮,長髮,胸部,肚子,睡衣,躺姿,單眼,散髮', 1, 'normal', 'public', ''),
(166, 'FNyOpk8VQAQpYeL.jpg', '2024-06-02 11:17:06', '時乃空', 'hololive', 'おるたん', '棕髮,棕瞳,髮箍,側髮束,休閒服,貓咪', 1, 'normal', 'public', ''),
(167, 'FZ3zzcgaMAAZBPR.jpg', '2024-06-02 11:17:06', '', '', '', '', 1, 'normal', 'public', ''),
(168, 'FZogZ-gagAAX2AX.jpg', '2024-06-02 11:17:06', '', '', '', '', 1, 'normal', 'public', ''),
(169, 'GGTCAu7aYAAC4RW.jpg', '2024-06-02 11:17:06', '時乃空', 'hololive', 'おるたん', '棕髮,藍瞳,帽T,帽子,大腿,長髮', 1, 'normal', 'public', ''),
(170, 'GH6IxAAaQAA-mpk (1).jpg', '2024-06-02 11:17:06', '櫻巫女', 'hololive', 'おるたん', '粉髮,綠瞳,休閒服,蹲姿,櫻花,長髮,帽子,花裝飾', 1, 'normal', 'public', ''),
(171, 'KV_chara01@x4Sp-dab62935.png', '2024-06-02 11:19:05', '時乃空', 'hololive', 'おるたん', '棕髮,藍瞳,百褶裙,大腿,腿環,長髮,過膝襪', 1, 'normal', 'public', ''),
(172, 'resize_image (1).jpg', '2024-06-02 11:19:05', '櫻巫女', 'hololive', 'おるたん', '粉髮,綠瞳,胸部,大腿,男友上衣', 1, 'normal', 'public', ''),
(173, 'resize_image.jpg', '2024-06-02 11:19:05', '時乃空', 'hololive', 'おるたん', '棕髮,棕瞳,百褶裙,大腿,雙馬尾,水,鎖骨,胸部', 1, 'normal', 'public', ''),
(174, 'sora.jpg', '2024-06-02 11:19:05', '', '', '', '', 1, 'normal', 'public', ''),
(175, 'GOWN4AcbAAAvult.jpg', '2024-06-02 11:19:53', '時雨羽衣', '', '時雨羽衣', '亞麻髮,綠瞳,短髮,特殊髮型,女僕裝,白絲,食物,荷葉邊', 1, 'normal', 'public', 'https://x.com/ui_shig/status/1793997441685205485/photo/1'),
(176, 'GOYgGzNa0AAnL4Q.jpg', '2024-06-02 11:24:06', '', '', '', '棕髮,青瞳,休閒服,長髮,辮子', 1, 'normal', 'public', 'https://x.com/unasaka0309/status/1794156892668993805/photo/1'),
(177, 'GOV94GeaQAEggZL.jpg', '2024-06-02 11:24:06', '星川莎拉', 'にじさんじ', '', '金髮,大海,水,粉瞳,單眼,臂環,頸環', 1, 'normal', 'public', 'https://x.com/FujiwaraHima/status/1793978439835517232/photo/1'),
(178, 'GN6oho5agAAISbb.jpg', '2024-06-02 11:24:06', '花火', '星穹鐵道', '', '黑髮,粉瞳,和服,翹腳,面具,頸環,雙馬尾', 1, 'normal', 'public', 'https://www.pixiv.net/artworks/116977653'),
(179, 'GOQBuuJboAEP4Qt.jpg', '2024-06-02 11:24:06', '', '偶像大師', '', '金髮,金瞳,馬尾,辮子,愛心手,逆光,手環,', 1, 'normal', 'public', 'https://x.com/mo_9x9/status/1793562044316397829/photo/1'),
(180, 'GORakSLbcAAlUBm.jpg', '2024-06-02 11:24:06', '砂狼白子', '蔚藍檔案', '', '灰髮,藍瞳,獸耳,死庫水,馬尾,鎖骨,胸部,大腿,露肩,肚子,害羞', 1, 'normal', 'public', 'https://x.com/Fanteam929/status/1793658141227536461/photo/1'),
(181, 'GOQTR7xaoAAQMGV.jpg', '2024-06-02 11:24:06', '星川', 'にじさんじ', '', '金髮,異色瞳,金瞳,紅瞳,泳裝,鎖骨,腋下,胸部,巨乳,肚子,長髮', 1, 'normal', 'public', 'https://x.com/SUICABAR72/status/1793579781365366872/photo/1'),
(182, 'GOIwUfLXwAAlbhB.jpg', '2024-06-02 11:24:06', '小鳥遊星野', '蔚藍檔案', '', '粉髮,異色瞳,金瞳,藍瞳,鎖骨,肚子,外套,大腿,眼鏡,荷葉邊,大海,雙馬尾', 1, 'normal', 'public', 'https://x.com/chocola_vt/status/1793048736161202473/photo/1'),
(183, 'GOGAtnsagAAPf89.jpg', '2024-06-02 11:24:06', '胡桃', '原神', '', '棕髮,紅瞳,特殊瞳,鎖骨,肚子,大腿,荷葉邊,雙馬尾,長髮', 1, 'normal', 'public', ''),
(184, 'GOLNy99agAAYuVK.jpg', '2024-06-02 11:24:06', '阿慈谷日富美', '蔚藍檔案', '', '金髮,金瞳,制服,大海,雙馬尾', 1, 'normal', 'public', 'https://x.com/Nillfier_2022/status/1793233846043095088/photo/1'),
(185, 'GOLohIzbIAAv-3X.jpg', '2024-06-02 11:24:06', '流螢', '星穹鐵道', '', '銀髮,漸色瞳,藍瞳,粉瞳,禮服,長髮,大腿,撐裙', 1, 'normal', 'public', 'https://x.com/taya_oco/status/1793251263653822471/photo/1'),
(186, 'GOD7lTobcAAVk2n.jpg', '2024-06-02 11:24:06', '', '原神', '', '棕髮,金瞳,鎖骨,胸部,露肩,頸環,短髮,臂環,黑絲,大腿,挑染,繃帶', 1, 'normal', 'public', ''),
(187, 'GOGF-ZwasAAulRd.jpg', '2024-06-02 11:24:06', '', '', '', '', 1, 'normal', 'public', ''),
(188, 'GN8AZISa8AAk3qK.jpg', '2024-06-02 11:24:06', '芭芭菈', '原神', '', '金髮,藍瞳,雙馬尾,頸環,肚子,泳裝,帽子,大腿', 1, 'normal', 'public', ''),
(189, 'GN9qo2DakAA6f-b.jpg', '2024-06-02 11:24:06', '阿慈谷日富美', '蔚藍檔案', '', '金髮,金瞳,帽子,長髮,雙馬尾,百褶裙,皮鞋', 1, 'normal', 'public', ''),
(190, 'GOAnoXxawAA97-h.jpg', '2024-06-02 11:24:06', '', '', '', '', 1, 'normal', 'public', ''),
(191, 'GN7vpRpaAAAp49-.jpg', '2024-06-02 11:24:06', '流螢', '星穹鐵道', '', '銀髮,漸色瞳,藍瞳,粉瞳,髮箍', 1, 'normal', 'public', ''),
(192, 'GNsTmAEaUAALD5m.jpg', '2024-06-02 11:24:06', '', '', '', '銀髮,藍瞳,鴨子坐,長髮', 1, 'normal', 'public', ''),
(193, 'Fu0L7thagAEC-XF.jpg', '2024-06-02 11:24:06', '', '', '', '', 1, 'normal', 'public', ''),
(194, 'GN0rqViaAAAnySy.jpg', '2024-06-02 11:24:06', '', '', '', '', 1, 'normal', 'public', ''),
(195, 'GN7wfRpa8AAGwa5.jpg', '2024-06-02 11:28:02', '流螢', '星穹鐵道', 'torino', '銀髮,漸色瞳,紫瞳,粉瞳,女僕裝,白絲,胸部,長髮', 1, 'normal', 'public', ''),
(196, 'GN0Ne6ka0AApVVL.jpg', '2024-06-02 11:28:03', '櫻坂雫', 'lovelive', '', '棕髮,藍瞳,泳裝,閉眼,大腿,肚子,腋下,單眼,側髮束,雨傘,臂環,飄逸', 1, 'normal', 'public', ''),
(197, 'GN2IEL2aYAAGsjW.jpg', '2024-06-02 11:28:03', '莉澤·赫露艾斯塔', 'にじさんじ', '', '白髮,挑染,淺藍髮,獸耳,雙馬尾,女僕裝,食物,荷葉邊', 1, 'normal', 'public', ''),
(198, 'GN2xjfWbwAAo6w5.jpg', '2024-06-02 11:28:03', '黑塔', '星穹鐵道', '', '棕髮,紫瞳,睡衣,露背,馬尾,花裝飾,木偶,背姿', 1, 'normal', 'public', ''),
(199, 'GNxdDQuakAALI_Q.jpg', '2024-06-02 11:28:03', '流螢', '星穹鐵道', '', '銀髮,藍瞳,胸部,漸色瞳,紫瞳,髮箍,女僕裝,獸耳,尾巴,長髮', 1, 'normal', 'public', 'https://x.com/night_known/status/1793596407871623535/photo/1'),
(200, 'GN6GN0VbQAEuj0F.jpg', '2024-06-02 11:52:40', '', '', '', '黑髮,青瞳,休閒服,頸環', 1, 'normal', 'public', ''),
(201, 'GNxtQ1QbQAE4edu.jpg', '2024-06-02 11:52:40', '', '', '', '黑髮,棕髮,綠瞳,制服,閉眼,接吻,雙人,百合,側身', 1, 'normal', 'public', ''),
(202, 'yande.re 1056377 sample animal_ears cleavage hakui_koyori hololive momoko_(momopoco) sashimi_necoya see_through.jpg', '2024-06-02 11:54:35', '博衣小夜璃', 'hololive', 'ももこ', '粉髮,紫瞳,尾巴,獸耳,長髮,辮子,食物,休閒服,帽子', 1, 'normal', 'public', ''),
(203, 'yande.re 1120802 sample animal_ears bra garter hakui_koyori hololive momoko_(momopoco) tail.jpg', '2024-06-02 11:54:35', '博衣小夜璃', 'hololive', 'ももこ', '粉髮,紫瞳,尾巴,獸耳,長髮,辮子,睡衣,食物,側躺', 1, 'normal', 'public', ''),
(204, 'yande.re 1056369 sample animal_ears hakui_koyori hololive momoko_(momopoco) sashimi_necoya tail.jpg', '2024-06-02 11:55:15', '博衣小夜璃', 'hololive', 'ももこ', '粉髮,紫瞳,尾巴,獸耳,項圈,食物,雙髮辮', 1, 'normal', 'public', ''),
(205, 'yande.re 1056373 sample animal_ears hakui_koyori hololive momoko_(momopoco) sashimi_necoya seifuku sweater tail.jpg', '2024-06-02 11:55:15', '博衣小夜璃', 'hololive', 'ももこ', '粉髮,紫瞳,尾巴,獸耳,項圈,長髮,辮子,食物', 1, 'normal', 'public', ''),
(206, 'yande.re 1120806 sample animal_ears bikini garter hakui_koyori hololive megane momoko_(momopoco) swimsuits tail.jpg', '2024-06-02 11:55:15', '博衣小夜璃', 'hololive', 'ももこ', '粉髮,紫瞳,泳裝,大腿,肚子,雙馬尾,獸耳,眼鏡,尾巴,游泳圈', 1, 'normal', 'public', ''),
(207, 'yande.re 942328 sample animal_ears hakui_koyori hololive momoko_(momopoco).jpg', '2024-06-02 12:02:03', '博衣小夜璃', 'hololive', 'ももこ', '粉髮,紫瞳,獸耳,項圈,長髮,辮子,氣球,花裝飾', 1, 'normal', 'public', ''),
(208, 'yande.re 1056354 sample animal_ears bra hakui_koyori hololive momoko_(momopoco) sashimi_necoya.jpg', '2024-06-02 12:02:03', '博衣小夜璃', 'hololive', 'ももこ', '粉髮,紫瞳,尾巴,獸耳,項圈,長髮,辮子,泳裝,側身', 1, 'normal', 'public', ''),
(209, '璋美.jpg', '2024-06-06 20:54:31', '', '', '', '', 1, 'normal', 'on', ''),
(210, 'https://pbs.twimg.com/media/GPn-HwfaEAAhtKl?format=jpg&name=4096x4096', '2024-06-10 00:01:38', '', '', '', '', 1, 'HTTP', 'public', ''),
(212, 'https://s.pximg.net/www/js/build/89b113d671067311.svg', '2024-06-10 00:07:31', '', '', '', '', 1, 'HTTP', '', ''),
(213, 'https://pbs.twimg.com/media/GPoI-KjasAAAYiU?format=jpg&name=4096x4096', '2024-06-11 19:14:31', '霍霍', '星穹鐵道', '', '綠髮,漸色瞳,綠瞳,金瞳,妖怪,帽子,夜晚,月亮,露肩,短髮', 1, 'HTTP', 'public', ''),
(214, 'FRbV148akAACnjV.jpg', '2024-06-11 19:23:10', '熒', '原神', '', '', 1, 'normal', '', ''),
(215, 'https://pbs.twimg.com/media/GPss518a4AAG5X2?format=jpg&name=4096x4096', '2024-06-11 19:56:23', '', '鳴潮', '', '', 1, 'HTTP', 'public', ''),
(216, 'yande.re 1080421 ass bikini blue_archive cameltoe halo heterochromia loli megane skirt_lift swimsuits takanashi_hoshino thong wet zi_yue_liuli.jpg', '2024-06-14 10:09:16', '小鳥遊星野', '蔚藍檔案', '紫月瑠璃', '', 1, 'normal', 'public', 'https://www.pixiv.net/artworks/107133569'),
(217, 'GQRQgIBXcAALKrE.jpg', '2024-06-21 11:15:52', '流螢', '星穹鐵道', '', '銀髮,漸色瞳,藍瞳,粉瞳,側髮束,長髮,髮箍,火焰', 1, 'normal', 'public', ''),
(218, 'uploadIMG.png', '2024-06-22 11:59:43', NULL, NULL, NULL, NULL, 38, 'icon', 'public', NULL),
(219, 'KV_smoke_2880.dd9c01d6.png', '2024-06-22 12:00:05', NULL, NULL, NULL, NULL, 38, 'image', 'public', NULL),
(220, 'KV_smoke_2880.dd9c01d6.png', '2024-06-22 12:00:11', NULL, NULL, NULL, NULL, 38, 'Wimage', 'public', NULL),
(227, 'JaJlkigLjn.png', '2024-06-22 11:53:58', '希兒', '崩壞3rd', '', '雙人', 1, 'normal', 'public', '');

-- --------------------------------------------------------

--
-- 資料表結構 `tag_data`
--

CREATE TABLE `tag_data` (
  `id` int(10) NOT NULL,
  `tag_name` varchar(30) NOT NULL,
  `creat_user_id` int(30) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `tag_data`
--

INSERT INTO `tag_data` (`id`, `tag_name`, `creat_user_id`, `type`) VALUES
(1, '金髮', 1, '髮色'),
(2, '銀髮', 1, '髮色'),
(5, '破曉', 1, '背景'),
(6, '逆光', 1, '光源'),
(7, '黑絲', 2, '衣服'),
(8, '藍髮', 2, '髮色'),
(9, '角', 2, ''),
(10, '金瞳', 1, '瞳色'),
(11, '過膝襪', 1, '衣服'),
(12, '翹腳', 1, '姿勢'),
(13, '藍髮', 1, '髮色'),
(14, '大海', 1, '背景'),
(15, '泳裝', 1, '衣服'),
(16, '藍瞳', 1, '瞳色'),
(17, '和服', 1, '衣服'),
(18, '露肩', 1, '身體部位'),
(19, '粉髮', 1, '髮色'),
(20, '棕髮', 1, '髮色'),
(21, '長髮', 1, '髮型'),
(22, '雙馬尾', 1, '髮型'),
(24, '女僕裝', 1, '衣服'),
(25, 'AI', 1, ''),
(26, '短裙', 1, '衣服'),
(27, '百褶裙', 1, '衣服'),
(28, '大腿', 1, '身體部位'),
(29, '星空', 1, '背景'),
(30, '黑絲', 37, '衣服'),
(31, '藍髮', 37, '髮色'),
(32, '角', 37, '裝飾'),
(33, '粉髮', 37, '髮色'),
(34, '銀髮', 37, ''),
(35, '制服', 37, '衣服'),
(36, '金髮', 37, ''),
(37, '網襪', 1, '衣服'),
(38, '地雷系', 1, '角色定位'),
(39, '黑髮', 1, '髮色'),
(40, '挑染', 1, '髮色'),
(41, '水手服', 1, '衣服'),
(42, '肚子', 1, '身體部位'),
(43, '白絲', 1, '衣服'),
(44, '髮箍', 1, '裝飾'),
(45, '兔女郎', 1, '角色定位'),
(46, '露背', 1, '身體部位'),
(47, '兔耳', 1, '裝飾'),
(48, '帽子', 1, '衣服'),
(49, '大衣', 1, '衣服'),
(50, '制服', 1, '衣服'),
(51, '黑絲', 1, '衣服'),
(52, '腋下', 1, '身體部位'),
(53, '煙火', 1, '背景'),
(54, '尾巴', 1, '裝飾'),
(55, '洋裝', 1, '衣服'),
(56, '櫻花', 1, '效果'),
(57, '連衣帽', 1, '衣服'),
(58, '單眼', 1, '身體部位'),
(59, '披肩', 1, '衣服'),
(60, '帽T', 1, '衣服'),
(61, '馬尾', 1, '髮型'),
(62, '雙髮辮', 1, '髮型'),
(63, '蘿莉', 1, '角色定位'),
(64, '生氣', 1, '表情'),
(65, '白髮', 1, '髮色'),
(66, '下衣失蹤', 1, '衣服'),
(67, '泡泡', 1, '效果'),
(68, '抱腿', 1, '姿勢'),
(69, '軟材質', 1, '衣服'),
(70, '巨乳', 1, '身體部位'),
(71, '水', 1, '背景'),
(72, '蹲姿', 1, '姿勢'),
(73, '辮子', 1, '髮型'),
(74, '側髮束', 1, '髮型'),
(75, '紫瞳', 1, '瞳色'),
(76, '武士刀', 1, '裝飾'),
(77, '包包頭', 1, '髮型'),
(78, '側身', 1, '姿勢'),
(79, '吐舌', 1, '姿勢'),
(80, '雨傘', 1, '裝飾'),
(81, '花裝飾', 1, '裝飾'),
(82, '木偶', 1, '角色定位'),
(83, '飄逸', 1, ''),
(84, '牽手', 1, '姿勢'),
(85, '雙人', 1, ''),
(86, '下雪', 1, '背景'),
(88, '巫女', 1, '角色定位'),
(89, '腿環', 1, '裝飾'),
(90, '獸耳', 1, '裝飾'),
(91, '武器', 1, '裝飾'),
(92, '胸部', 1, '身體部位'),
(93, '棕瞳', 1, '瞳色'),
(94, '內褲', 1, '衣服'),
(95, '梅花', 1, '效果'),
(96, '雙子', 1, ''),
(97, '腳', 1, '身體部位'),
(98, '紅瞳', 1, '瞳色'),
(99, '內衣', 1, '衣服'),
(100, '異色瞳', 1, '瞳色'),
(101, '禮服', 1, '衣服'),
(102, '夜晚', 1, '背景'),
(103, '睡衣', 1, '衣服'),
(104, '躺姿', 1, '姿勢'),
(105, '粉瞳', 1, '瞳色'),
(106, '凌晨', 1, '背景'),
(107, '男友上衣', 1, '衣服'),
(108, '放髮', 1, '髮型'),
(109, '紫髮', 1, '髮色'),
(110, '荷葉邊', 1, '裝飾'),
(111, '鴨子坐', 1, '姿勢'),
(112, '漸色瞳', 1, '瞳色'),
(113, '側躺', 1, '姿勢'),
(114, '玫瑰', 1, '裝飾'),
(115, '黑髮\r\n', 1, '髮色'),
(116, '異色髮', 1, '髮色'),
(117, '頸環', 1, '裝飾'),
(118, '魔女', 1, '角色定位'),
(119, '項圈', 1, '裝飾'),
(120, '鎖鏈', 1, '裝飾'),
(121, '鎖骨', 1, '身體部位'),
(122, '百合', 1, ''),
(123, '接吻', 1, '姿勢'),
(124, '閉眼', 1, '姿勢'),
(125, '花瓣', 1, '效果'),
(126, '眼鏡', 1, '裝飾'),
(127, '浴巾', 1, '衣服'),
(128, '煙', 1, '效果'),
(129, '青瞳', 1, '瞳色'),
(130, '啦啦隊服', 1, '衣服'),
(131, '彩球', 1, '裝飾'),
(132, '亞麻髮', 1, '髮色'),
(133, '愛心手', 1, '姿勢'),
(134, '特殊髮型', 1, '髮型'),
(135, '橘髮', 1, '髮色'),
(136, '下乳', 1, '身體部位'),
(137, '運動內衣', 1, '衣服'),
(138, '拳套', 1, '裝飾'),
(139, '臂環', 1, '裝飾'),
(140, '食物', 1, '裝飾'),
(141, '游泳圈', 1, '裝飾'),
(142, '氣球', 1, '裝飾'),
(143, '淺藍髮', 1, '髮色'),
(144, '背姿', 1, '姿勢'),
(145, '面具', 1, '裝飾'),
(146, '水下', 1, '背景'),
(147, '紫瞳', 2, ''),
(148, '灰髮', 1, '髮色'),
(149, '圍巾', 1, '裝飾'),
(150, '短髮', 1, '髮型'),
(151, '伸手', 1, '姿勢'),
(152, '黃昏', 1, '背景'),
(153, '翅膀', 1, '裝飾'),
(154, '食物', 1, '裝飾'),
(155, '手環', 1, '裝飾'),
(156, '運動服', 1, '衣服'),
(157, '死庫水', 1, '衣服'),
(158, '害羞', 1, '表情'),
(160, '後臀部', 1, '身體部位'),
(161, '散髮', 1, '髮型'),
(163, '貓咪', 1, ''),
(164, '綠髮', 1, ''),
(165, '妖怪', 1, ''),
(166, '月亮', 1, ''),
(167, '皮鞋', 1, ''),
(168, '繃帶', 1, ''),
(178, '', 1, '');

-- --------------------------------------------------------

--
-- 資料表結構 `test_attack`
--

CREATE TABLE `test_attack` (
  `id` int(11) NOT NULL,
  `password` varchar(11) NOT NULL,
  `account` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `test_attack`
--

INSERT INTO `test_attack` (`id`, `password`, `account`, `name`) VALUES
(1, 'J9012015', 'cool901215', 'OHIMEOPP');

-- --------------------------------------------------------

--
-- 資料表結構 `user_account`
--

CREATE TABLE `user_account` (
  `id` int(11) NOT NULL,
  `account` varchar(30) DEFAULT NULL,
  `password` varchar(12) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- 傾印資料表的資料 `user_account`
--

INSERT INTO `user_account` (`id`, `account`, `password`, `name`) VALUES
(38, 'visitor', 'visitor', 'visitor');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `img_data`
--
ALTER TABLE `img_data`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `tag_data`
--
ALTER TABLE `tag_data`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `test_attack`
--
ALTER TABLE `test_attack`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `user_account`
--
ALTER TABLE `user_account`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `img_data`
--
ALTER TABLE `img_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `tag_data`
--
ALTER TABLE `tag_data`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `test_attack`
--
ALTER TABLE `test_attack`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user_account`
--
ALTER TABLE `user_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
