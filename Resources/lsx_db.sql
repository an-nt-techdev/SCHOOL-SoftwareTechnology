-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th5 22, 2019 lúc 12:44 PM
-- Phiên bản máy phục vụ: 5.7.24
-- Phiên bản PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lsx_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `username` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ranking` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`username`, `password`, `ranking`) VALUES
('admin', 'admin', 'ADMIN'),
('dvip1999', 'thienan99', 'Diamond'),
('Master_Tester', '123', 'Member'),
('tester_1', '123', 'Member'),
('tester_10', '123', 'Member'),
('tester_11', '123', 'Member'),
('tester_12', '123', 'Member'),
('tester_13', '123', 'Member'),
('tester_14', '123', 'Member'),
('tester_15', '123', 'Member'),
('tester_16', '123', 'Member'),
('tester_17', '123', 'Member'),
('tester_18', '123', 'Member'),
('tester_19', '123', 'Member'),
('tester_2', '123', 'Member'),
('tester_20', '123', 'Member'),
('tester_24', '123', 'Member'),
('tester_3', '123', 'Member'),
('tester_4', '123', 'Member'),
('tester_5', '123', 'Member'),
('tester_6', '123', 'Member'),
('tester_7', '123', 'Member'),
('tester_8', '123', 'Member'),
('tester_9', '123', 'Member');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account_detail`
--

DROP TABLE IF EXISTS `account_detail`;
CREATE TABLE IF NOT EXISTS `account_detail` (
  `username_id` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `birthday` date NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`username_id`),
  UNIQUE KEY `Email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `account_detail`
--

INSERT INTO `account_detail` (`username_id`, `name`, `birthday`, `sex`, `email`) VALUES
('admin', 'Quản trị viên', '2019-05-15', 0, 'adminLSX@gmail.com'),
('dvip1999', 'Nguyễn Thiên Ân', '1999-05-01', 0, 'ndsg1964@gmail.com'),
('Master_Tester', 'Trùm', '2019-06-01', 1, 'lalala@gmail.com'),
('tester_1', 'Tôi đi tìm tôi', '2019-05-01', 0, 'toiditimtoi@gmail.com'),
('tester_10', 'Tôi đi tìm tôi', '2019-05-10', 1, 'test10@gmail.com'),
('tester_11', 'Tôi đi tìm tôi', '2019-05-11', 0, 'test11@gmail.com'),
('tester_12', 'Tôi đi tìm tôi', '2019-05-12', 1, 'test@gmail.com12'),
('tester_13', 'Tôi đi tìm tôi', '2019-05-13', 0, 'test@gmail.com13'),
('tester_14', 'Tôi đi tìm tôi', '2019-05-14', 1, 'test@gmail.com14'),
('tester_15', 'Tôi đi tìm tôi', '2019-05-15', 0, 'test@gmail.com15'),
('tester_16', 'Tôi đi tìm tôi', '2019-05-16', 1, 'test@gmail.com16'),
('tester_17', 'Tôi đi tìm tôi', '2019-05-17', 0, 'test@gmail.com17'),
('tester_18', 'Tôi đi tìm tôi', '2019-05-18', 1, 'test@gmail.com18'),
('tester_19', 'Tôi đi tìm tôi', '2019-05-19', 0, 'test@gmail.com19'),
('tester_2', 'huan', '2019-05-02', 0, 'huan@gmail.com'),
('tester_20', 'Tôi đi tìm tôi', '2019-05-20', 1, 'test@gmail.com20'),
('tester_24', 'Cay rồi nha', '2019-05-24', 0, 'hello@gmail.com'),
('tester_3', 'khoa', '2019-05-03', 0, 'khoa@gmail.com'),
('tester_4', 'trâm anh của Huấn', '2019-05-04', 1, 'test@gmail.com'),
('tester_5', 'Bạn học mẫu giáo của Huấn', '2019-05-05', 1, 'test1@gmail.com'),
('tester_6', 'bé răng khểnh của Khoa', '2019-05-06', 1, 'test2@gmail.com'),
('tester_7', 'hết tên để đặt', '2019-05-07', 0, 'test3@gmail.com'),
('tester_8', 'Tôi đi tìm tôi', '2019-05-08', 1, 'test8@gmail.com'),
('tester_9', 'Tôi đi tìm tôi', '2019-05-09', 0, 'test9@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `composer`
--

DROP TABLE IF EXISTS `composer`;
CREATE TABLE IF NOT EXISTS `composer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `detail` longtext COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `composer`
--

INSERT INTO `composer` (`id`, `name`, `image`, `detail`) VALUES
(1, 'Bảo Chấn', 'View/images/Composer/BaoChan.jpg', 'Bảo Chấn, tên đầy đủ là Nguyễn Phúc Bảo Chấn, sinh năm 1950, là con đầu trong một gia đình thuộc dòng dõi hoàng tộc Huế. Ông có người em là nhạc sĩ Bảo Phúc. Ông nội của hai người có tước vị Tuyên Hóa công, là con trai thứ 9 của Vua Dục Đức - Nguyễn Phúc Bửu Thiên và là em ruột của vua Thành Thái. Cha của Bảo Phúc - Bảo Chấn là nhạc sĩ Vĩnh Phan, chuyên lĩnh vực âm nhạc dân tộc, tước hiệu Đinh Hầu, từng sáng tác và giảng dạy âm nhạc. Còn mẹ là nghệ sĩ Bích Liễu, cũng từng là giọng ca chầu văn của nhạc cung đình. Bà là một trong những giọng ca hàng đầu xứ Huế thời xưa.\r\n\r\nNhững năm 90 được coi là thời kỳ huy hoàng của nhạc nhẹ Việt Nam cùng với đời sống sôi động của các bảng xếp hạng âm nhạc. Nửa cuối thập niên này, Bảo Chấn và Dương Thụ là hai cái tên nhạc sĩ có nhiều bài hát được yêu thích nhất lúc bấy giờ. Tình thôi xót xa, Nỗi nhớ dịu êm, Hoa cỏ mùa xuân, Bên em là biển rộng, Đêm nay anh mơ về em… thường xuyên có mặt trong top ten Làn Sóng Xanh, đưa tên tuổi của những Lam Trường, Hồng Nhung… thành các ngôi sao được nhắc đến nhiều nhất.\r\n\r\nBên cạnh công việc sáng tác, ông cùng người em Bảo Phúc là những nhạc sĩ hòa âm phối khí nổi tiếng. Ông từng theo học lớp phối khí nhạc jazz, rock trước năm 1975. Các ca khúc do ông phối khí được đánh giá mang màu sắc tươi mới, hài hòa mà vẫn không đánh mất bản sắc. Tiêu biểu kể đến việc là việc phối khí cho album Đoản khúc thu Hà Nội của ca sĩ Hồng Nhung (Hồng Nhung vol.1). Ông còn hòa âm thành công nhiều sáng tác của mình trong album của Lam Trường và rất nhiều ca sĩ khác. Trong số các nhạc sĩ hòa âm phối khí tiên phong của nhạc nhẹ Việt Nam, Bảo Chấn được xem như một đàn anh tiêu biểu.\r\n\r\nNhững sáng tác của Bảo Chấn có khúc thức khá đơn giản nhưng giai điệu mượt mà, nhiều lúc bay bổng cùng với lời ca trong sáng, lãng mạn được cho là đã giúp ông thành công. Có nhận định cho rằng ca từ của ông nhàn nhạt, có chỗ suồng sã. Nhận định khác nói nhạc của ông na ná nhạc Hồng Kông. Ông thừa nhận: \"Những ca khúc của tôi, gọi là nhạc thời trang cũng được. Ca khúc cũng là một loại hàng hóa. Miễn sản phẩm của mình làm cho cái siêu thị âm nhạc ấy phong phú, đa dạng, có người mua là đạt yêu cầu\". Ông cũng từng nói: \"Những bài đại chúng thích không phải là bài hay, chẳng qua tung ra đúng lúc, đúng dịp, gặp đúng ca sĩ thời thượng\". Thực tế Bên em là biển rộng, Hoa cỏ mùa xuân, Như cơn mưa đi mãi, Dấu vết, Nỗi nhớ dịu êm… những ca khúc thời trang như ông nói (sau này còn được gọi là \"nhạc nhẹ\") có đời sống khá bền với công chúng.\r\n\r\nBài hát đầu tiên ông sáng tác là Bài ca chưa viết hết lời kêu gọi thanh niên đi xây dựng quê hương, được viết trong những ngày ông đi công tác tại nông trường Phạm Văn Hai từ đầu thập kỷ 80. Hoa cỏ mùa xuân ông viết trong một lần đi sáng tác ở Đà Lạt cùng nhạc sĩ Dương Thụ. Hai người chơi thân với nhau từ năm 1980 và cùng đi sáng tác rất nhiều. Bên em là biển rộng cũng được viết trong một lần đi sáng tác với Dương Thụ. Từng có bài báo đã phê bình bài này: \"Người vừa hiền khô dễ thương lại vừa đẹp trai nhất vùng đến theo cùng hoa cỏ mùa xuân\' là thô, là suồng sã\". Ông đã cảm thấy rất buồn. Tuy nhiên những lời phê bình khiến ông phải suy nghĩ khi sáng tác. Sau này ông rẽ sang khuynh hướng khác, sáng tác chau chuốt hơn cả về nhạc và lời như các bài Dường như, Dấu vết, Rồi anh lại đến. Ông nói: \"Dù gì, tôi vẫn tự tin thừa nhận mình là một trong những người bổ nhát cuốc đầu tiên vào cái mạch ngầm dòng nhạc trẻ thập niên 90. Tôi cũng hiểu cái mạch ngầm ấy cùng với dòng nước mát trong tuôn trào còn có cả những thứ rác rưởi cần gạn đục khơi trong.\"\r\n\r\nTrong các ca khúc của Bảo Chấn luôn thấp thoáng hình ảnh của biển, của sóng dù ông không biết bơi. Bảo Chấn bày tỏ, chính vì mình không biết bơi nên biển đối với ông mới đẹp, nó như một người phụ nữ mà cả cuộc đời chưa bao giờ chinh phục được, cứ mãi như là một chàng trai si tình. Vì thế các ca khúc của ông thường gắn liền với những con sóng dạt dào của biển, như là nỗi nhớ, nỗi dày vò về mối tình mà mình mãi mãi chỉ yêu chứ không bao giờ có được. Ông cũng chia sẻ thêm rằng, không chỉ đối với hình ảnh biển và sóng, mà trong các ca khúc của ông cũng thường bắt gặp thấy những cơn mưa vì với ông, mỗi khi ngồi nhìn ngắm những cơn mưa là bản thân chúng ta có nhiều thời gian để suy tư hơn, nó làm ta thánh thiện hơn và như gột rửa tâm hồn mình.\r\n\r\nÔng không bài xích nhạc trẻ như nhiều người cùng thời, ông cho rằng mỗi người có một thời riêng.'),
(2, 'Bảo Phúc', 'View/images/Composer/BaoPhuc.jpg', 'Bảo Phúc sinh ra trong một gia đình thuộc dòng dõi hoàng tộc Huế. Anh có người anh là nhạc sĩ Bảo Chấn. Ông nội của hai người có tước vị Tuyên Hóa vương, là con trai thứ 9 của Vua Dục Đức - tên Nguyễn Phúc Bửu Thiên và là em ruột của vua Thành Thái. Cha của Bảo Phúc - Bảo Chấn là nhạc sĩ Vĩnh Phan, chuyên về lĩnh vực âm nhạc dân tộc, tước hiệu Đinh Hầu, từng sáng tác và giảng dạy âm nhạc. Còn mẹ là nghệ sĩ Bích Liễu, cũng từng là giọng ca chầu văn của nhạc cung đình Huế thời xưa.\r\n\r\nTuy nhiên, thực tế tuổi thơ bản thân nhạc sĩ đã phải trải qua nhiều biến cố gia đình và bươn chải với nhiều công việc như bán báo, bán chè, dạy thuê để kiếm sống.\r\n\r\nTuổi ấu thơ, Bảo Phúc là đứa con sớm bộc lộ tinh hoa âm nhạc nhất trong gia đình nên được bố mẹ rất cưng. Nhà nghèo nhưng Bảo Phúc vẫn được bố mẹ cho đi học nhạc. Năm lên 8 tuổi, Bảo Phúc cũng từng học ở Trường Quốc gia âm nhạc Huế, nhưng rồi bị đuổi học chỉ vì tội phanh áo ngực vào một trưa hè nóng nực. Bị đuổi học, nhưng chí đi học vẫn còn đó, thậm chí còn mãnh liệt hơn, Bảo Phúc đã tự học để rồi sau đó đậu vào trường Quốc gia âm nhạc Sài Gòn. Hai năm sau, anh đoạt giải nhất cuộc thi Âm nhạc toàn quốc. Trong thời gian này, anh bắt đầu viết ca khúc đầu tay.\r\n\r\nBảo Phúc sáng tác không nhiều, công việc chính của anh là hòa âm phối khí và viết nhạc phim. Ngoài âm nhạc, Bảo Phúc còn có tài hội họa. Điều này cũng phần nào ảnh hưởng đến quan điểm hoà âm phối khí của nhạc sĩ. Anh từng chia sẻ: Hòa âm - phối khí cho một album cũng giống như một bức tranh thủy mặc, trên đó là những nét chấm phá, có chỗ đậm, chỗ nhạt, chỗ dày, chỗ mỏng...\r\n\r\nCùng với hội họa là khả năng chơi được 25 loại nhạc cụ khác nhau từ dân tộc tới phương Tây: Đàn tranh, đàn bầu, đàn kim, đàn đá, piano, guitar,... Hai khả năng này giúp nhạc sĩ tạo nên những bản phối khí được đánh giá dung dị, mộc mạc nhưng đa dạng và nhiều cảm xúc. Điểm nhấn đặc biệt trong sự nghiệp âm nhạc của anh chính là kỷ lục hoà âm phối khí cho các ca khúc của nhạc sĩ Trịnh Công Sơn. Trong 600 ca khúc của Trịnh Công Sơn, Bảo Phúc đã đóng góp phần hòa âm phối khí gần 400 bài. Sinh thời, nhạc sĩ Trịnh Công Sơn đều hài lòng với những hòa âm ấy. Là đồng hương xứ Huế, lại hợp nhau, nhạc sĩ Trịnh Công Sơn rất thân thiết với Bảo Phúc. Họ thường ngồi bên nhau trà dư tửu hậu, đàn hát cho nhau nghe.\r\n\r\nTrong gia tài sáng tác của nhạc sĩ Bảo Phúc, số lượng các bài hát được phổ từ thơ khá nhiều. Những bài hát được phổ từ thơ khá thành công như: Dòng sông không trở lại (thơ Thảo Phương), Kẻ rong chơi cuối thế kỷ (thơ Nguyễn Liên Châu), Ngẫu hứng ru con, Để gió đưa vào lãng quên (thơ của Anh Thoa),…\r\n\r\nCùng với nhạc sĩ Bảo Chấn, hai anh em đã viết nhạc cho rất nhiều bộ phim. Anh cũng được cho là một trong những nhạc sĩ đi đầu trong công việc viết nhạc phim chuyên nghiệp tại Việt Nam. Những nhạc phim gắn liền với tên tuổi Bảo Phúc như Ngôi sao cô đơn, Những nẻo đường phù sa, Dòng sông không trở lại, Gót hồng, Khi đời có em, Nắng hồng soi mắt em... và có những bài anh sáng tác khi còn rất trẻ (12 tuổi) như Dáng xuân (phim Chuyện vui ngày tết). Tại liên hoan phim Việt Nam lần thứ 15, Bảo Phúc được nhận giải thưởng Nhạc sĩ xuất sắc cho bộ phim video Những chiếc lá thời gian.\r\n\r\nVới Những nẻo đường phù sa, bài hát được đánh giá là nối được bước của dòng nhạc cách mạng và liên tục có mặt ở Top 10 bảng xếp hạng Làn sóng xanh trong thời gian dài. Những nẻo đường phù sa cũng là ca khúc khiến người nghe nhớ đến âm nhạc của Bảo Phúc nhiều nhất.\r\n\r\nQua đời\r\nNgày 24/5/2009, trong lúc uống trà với bạn bè, nhạc sĩ Bảo Phúc bất ngờ bất tỉnh, nguyên nhân là do anh bị ung thư vùng đại não. Anh qua đời lúc 12 giờ 52 phút ngày 31/5/2009 tại bệnh viện Chợ Rẫy, thành phố Hồ Chí Minh.'),
(3, 'Đức Trí', 'View/images/Composer/DucTri.jpg', 'Đức Trí tên đầy đủ là Trương Đức Trí, sinh năm 1973 tại Thành phố Hồ Chí Minh, là một nhạc sĩ, nhà sản xuất âm nhạc người Việt Nam giành được 3 đề cử và thắng 1 hạng mục của giải Cống hiến. Ngoài ra anh cũng tham gia công tác giảng dạy và làm cố vấn nghệ thuật cho nhiều ca sĩ. Từ nhỏ Đức Trí đã làm quen với các nhạc cụ dân tộc, anh theo học ngành Lý luận sáng tác tại Nhạc viện thành phố Hồ Chí Minh và bắt đầu được biết đến với vai trò nhạc công chơi cho nhiều ban nhạc. Sau khi tốt nghiệp, Đức Trí nổi tiếng ở lĩnh vực hòa âm phối khí, có nhiều sáng tác trẻ được yêu thích.\r\n\r\nĐức Trí là nhạc sĩ Việt Nam đầu tiên từng tu nghiệp chính quy ngành Biên soạn và Sản xuất Âm nhạc đương đại tại trường nhạc danh tiếng Berklee College of Music ở Boston, Hoa Kỳ. Về nước, bên cạnh công việc sáng tác, anh đi vào hoạt động sản xuất âm nhạc chuyên nghiệp với công ty giải trí Music Faces.\r\n\r\nĐức Trí hay viết về chủ đề tình yêu, những vẻ đẹp không trọn vẹn, những giấc mơ...có giai điệu nhẹ nhàng, nồng nàn, dễ nhớ, không dùng nhiều kỹ thuật. Là một nhạc sĩ đắt khách trên thị trường nhưng bản thân anh lại là một người không bao giờ nhận đơn đặt hàng. Không thể biết mình có bao nhiêu ca khúc được khán giả yêu thích. Nhưng, có một điều tôi có thể khẳng định, tất cả các ca khúc tôi viết ra đều dành cho riêng mình chứ không phải cho một giọng ca nào cả. Cảm xúc không phải là thứ có thể nặn ra theo ý muốn của bản thân [...] Riêng tôi, tôi thích những ca khúc có giai điệu đẹp. Chính vì vậy, tôi vẫn thường hoàn thiện giai điệu của một ca khúc trước khi nghĩ đến việc đặt lời cho nó. Giai điệu đẹp sẽ khiến cho khán giả nhớ đến ca khúc trước tiên. Đó là nguyên tắc, chuẩn mực sáng tác của riêng Đức Trí.\r\n\r\nĐức Trí khẳng định: Chưa bao giờ trong cuộc đời sáng tác của tôi, tôi đặt ra mục tiêu ca khúc của mình phải được đông đảo khán giả đón nhận. Bởi tôi không sống được bằng nghề viết nhạc. Và hơn hết, tôi không thích mẫu số chung. Tôi thích ca khúc của tôi phải có 2 luồng dư luận trái ngược nhau. Vì như thế mới phản ánh đúng bản chất của ca khúc.\r\n\r\nVới anh, ca khúc chỉ là một phần rất nhỏ trong khái niệm về âm nhạc, không nên bắt nó phải tải một nội dung quá lớn. Anh không xem sáng tác là con đường chính, sáng tác chỉ là những phút giải toả hiếm hoi sau những chuỗi ngày mệt mỏi trong phòng thu.\r\n\r\nTrong các vai trò đã thử qua, Đức Trí cho rằng mình làm tốt nhất công việc của một producer (nhà sản xuất), thích hợp và có hứng thú nhất. Anh theo tất cả các dòng nhạc trừ techno. Anh quan niệm techno và nhạc dance nói chung không phải là âm nhạc để thưởng thức mà là công cụ để phục vụ cho việc nhảy, nó không phải là sáng tác và vì thế không cần nhạc sĩ để làm. Nhưng Đức Trí vẫn thực hiện những bài phối trên nền techno.\r\n\r\nỞ Ðức Trí có sự hội tụ của 3 dòng nhạc: Dân tộc - Cổ Ðiển - Hiện Ðại. Anh chia sẻ: Các nốt Ðô, Re, Mi, Fa, Son, La, Si và các chữ Hò, Xự, Xang, Xê, Cống có thể hòa nhập thành một thể thống nhất mà vẫn không mất đi nét riêng của từng thành tố. Sự kết hợp chúng lại với nhau sẽ tạo ra cấu trúc âm nhạc mới mẻ đầy sức thuyết phục.\r\n\r\nTốt nghiệp nhạc viện khoa Lý luận phê bình nhưng Đức Trí cương quyết không viết một bài nào liên quan đến phê bình, chỉ đi về nghiên cứu lý luận vì theo anh làm phê bình phải có lập trường và chính kiến, mà điều ấy các nhà sáng tác ở mình không ưa, đã không ưa thì họ không để mình sống vui vẻ thoải mái.\r\n\r\nThần tượng của anh là nhà sản xuất âm nhạc David Foster.'),
(4, 'Hoài An', 'View/images/Composer/HoaiAn.jpg', 'Hoài An (sinh năm 1977) là một nhạc sĩ Việt Nam có nhiều ca khúc nổi tiếng như Tình thơ, Nếu phôi pha ngày mai, Tình khúc vàng, Nếu mai rời xa...\r\n\r\nAnh là con của nhà giáo Võ Đại Mau, người viết nhiều sách trong lĩnh vực toán học. Gia đình có 7 anh chị em. Anh có em trai là nhạc sĩ Võ Hoài Phúc. Anh đã và đang cộng tác với Trung tâm Thúy Nga được hơn 15 năm.\r\n\r\nAnh đồng sở hữu Công ty Nghệ sĩ Việt, chuyên cung cấp bản quyền nhạc số, sáng tác nhạc cho quảng cáo TV, chương trình truyền hình, phim, game..., tổ chức sự kiện và chương trình biểu diễn, quản lý nghệ sĩ & trung tâm đào tạo nghệ thuật và kỹ năng sống.\r\n\r\nHoài An còn là biên tập viên báo tin học Echip từ năm 2003-2007 và Sóng Nhạc.'),
(5, 'Ngô Thụy Miên', 'View/images/Composer/NgoThuyMien.jpg', 'Nhạc sĩ Ngô Thụy Miên sinh ngày 26 tháng 9 năm 1948 tại Hải Phòng, và là con thứ nhì trong một gia đình bảy người con. Ông lớn lên trong môi trường sách vở và thơ văn, do gia đình ông có mở một nhà sách tên Thanh Bình ở thành phố Hải Phòng, và sau này ở trên đường Phan Đình Phùng (nay là đường Nguyễn Đình Chiểu) khi vào định cư ở Sài Gòn. Tại đây, ông học trường Trung học Nguyễn Trãi. và sau đó là Trường Đại học Khoa học Sài Gòn.\r\n\r\nTrong thập niên 1960, Ngô Thụy Miên có theo học vĩ cầm với Giáo sư Đỗ Thế Phiệt, và nhạc pháp với Giáo sư Hùng Lân tại Trường Quốc gia Âm nhạc Sài Gòn. Thời gian học ở đây, ông quen biết với Đoàn Thanh Vân (con gái của diễn viên Đoàn Châu Mậu), và hai người đã có một mối tình.\r\n\r\nTừ năm 1970 đến 1975, Ngô Thụy Miên làm kiểm soát viên không lưu tại phi trường Tân Sơn Nhất. Cũng khoảng thời gian đó, ông là Trưởng ban nhạc Luân Phiên tại Đài phát thanh Quân đội.\r\n\r\nNăm 1963, ông bắt đầu viết nhạc. Tình khúc đầu tiên mà ông sáng tác là bài \"Chiều nay không có em\" hoàn tất vào tháng 2 năm 1965, được giới sinh viên học sinh lúc bấy giờ hưởng ứng rất nồng nhiệt.\r\n\r\nVài năm sau, ông cho xuất bản một tập nhạc đầu tay lấy tựa \"Tình khúc Đông Quân\" (Đông Quân chính là bút hiệu đầu đời của ông trước khi đổi qua bút hiệu Ngô Thụy Miên bây giờ) in ronéo phát hành tại Sài Gòn năm 1969. Trong đó có nhiều bài đáng chú ý như: Giáng ngọc, Mùa thu này cho em (sau đổi là Mùa thu cho em), Gọi nắng (sau đổi là Giọt nắng hồng), Dấu vết tình yêu (sau đổi là Dấu tình sầu), Cho những mùa thu (sau đổi là Thu trong mắt em), Tình khúc tháng 6, Mùa thu về trong mắt em (sau đổi là Mắt thu) và Ngày mai em đi... Tiếp theo, Ngô Thụy Miên có những nhạc phẩm phổ từ thơ của thi sĩ Nguyên Sa như: Áo lụa Hà Đông, Paris có gì lạ không em, Tuổi 13...\r\n\r\nNăm 1974, Ngô Thụy Miên thực hiện băng nhạc đầu tay Tình Ca Ngô Thụy Miên gồm 17 tình khúc đã được viết trong khoảng thời gian 1965 – 1972. Với sự góp mặt của các ca sĩ và nhạc sĩ như Khánh Ly, Duy Trác, Thái Thanh, Lệ Thu, Thanh Lan, Duy Quang,...\r\n\r\nSau ngày 30 tháng 4 năm 1975, ông vượt biên đến tị nạn tại đảo Pulau Bidong của Mã Lai, và chính thức ra mắt một sáng tác viết từ năm 1975 là bài Em còn nhớ mùa xuân gởi tặng riêng cho người yêu của ông là Đoàn Thanh Vân. Sau sáu tháng ở trại tị nạn, nhạc sĩ được nước thứ ba bảo lãnh cho sang Montréal (Canada) vào tháng 4 năm 1979.\r\n\r\nTừ San Diego (Hoa Kỳ), Đoàn Thanh Vân được tin người yêu đã đến được Canada, đã bay sang nối kết lại cuộc tình đã bị dở dang vì thời cuộc. Cùng năm 1979, cả hai qua sống tại San Diego rồi dời lên Orange County. Qua năm 1980, Ngô Thụy Miên bắt đầu đi làm về ngành điện toán cho trường UCLA, tại thành phố Olympia thuộc tiểu bang Washington.\r\n\r\nTrong thập niên 1990, nhạc sĩ tiếp tục sáng tác với những ca khúc mới như Cần thiết, Em về mùa thu, Trong nỗi nhớ muộn màng… và nhất là Riêng một góc trời (1997). Năm 2000, nhạc phẩm Mưa trên cuộc tình tôi của ông được khán thính giả đón nhận một cách đặc biệt.\r\n\r\nTổng cộng đến nay, nhạc sĩ Ngô Thụy Miên đã sáng tác được trên 70 ca khúc, với khoảng 20 bài từ trong nước. Theo đánh giá của nhiều người, thì Ngô Thụy Miên chính là \"một nhạc sĩ tài hoa đích thực\"...\r\n\r\nTrung tâm Thúy Nga từng thực hiện Paris By Night 21: Tình ca Ngô Thụy Miên (1993) và Paris By Night 66: Người tình và Quê hương (2002) (cùng với nhạc sĩ Trần Trịnh và nhạc sĩ Nhật Ngân) để vinh danh ông và những sáng tác của ông.\r\n\r\nNói về việc bén duyên với các bản tình ca, nhạc sĩ Ngô Thuỵ Miên cho biết:\r\n\r\n\"Với tôi, chiến tranh chỉ là giai đoạn. Tình yêu mới là vĩnh cửu. Từ khi bắt đầu viết nhạc, tôi đã chọn cho mình một hướng đi, đó là tình ca. Và trước tôi cũng như sau tôi đã có nhiều nhạc sĩ viết về chiến tranh, về quê hương, về thân phận… Tất cả chúng tôi đều đóng góp cho nền âm nhạc Việt Nam, mỗi người một khuynh hướng khác nhau. Tôi chỉ xin được nhớ đến như một người viết Tình Ca không hơn không kém.\r\n\r\nTôi không viết nhạc để sống, mà tôi sống để viết nhạc… Nếu đời hay người đời chia sẻ được với tôi thì đó là một niềm vui\".'),
(6, 'Nguyễn Ngọc Thiện', 'View/images/Composer/NguyenNgocThien.jpg', 'Nguyễn Ngọc Thiện (sinh ngày 20 tháng 11 năm 1951) là một nhạc sĩ Việt Nam. Nhạc ông mang phong cách trẻ trung, nhẹ nhàng, trữ tình thường nói về tình yêu và tuổi trẻ. Ngoài ra, ông còn là một nha sĩ, được Nhà nước Việt Nam phong tặng danh hiệu \"Thầy thuốc ưu tú\".\r\n\r\nÔng sáng tác âm nhạc từ thời sinh viên nhưng sau giải phóng năm 1975, tên tuổi ông mới được biết đến rộng rãi trong giới trẻ hâm mộ nhạc.\r\nÔng gia nhập Hội Âm nhạc thành phố vào năm 1984.\r\nNhững ca khúc Nguyễn Ngọc Thiện trữ tình và trẻ trung, thiên về đề tài tình yêu và tuổi trẻ.\r\nÔng đã xuất bản hai tập ca khúc và một số bài hát được phát hành trong băng âm thanh và băng video. Nguyễn Ngọc Thiện là thành viên nhóm \"Những người bạn\". Đã xuất bản Tập nhạc Nguyễn Ngọc Thiện và kèm băng cassette tác giả (DIHAVINA và Hội nhạc sĩ VN).\r\nÔng tốt nghiệp Khoa Sáng tác hệ Đại học 5 năm, Nhạc viện Thành phố Hồ Chí Minh, năm 1989.\r\nÔng hiện là bác sĩ khoa Răng Hàm Mặt, viện Răng Hàm Mặt.'),
(7, 'Nguyễn Nhất Huy', 'View/images/Composer/NguyenNhatHuy.jpg', 'Nhạc sĩ Nguyễn Nhất Huy sinh ngày 26-2-1975 tại Thành phố Hồ Chí Minh.\r\n\r\nNguyễn Nhất Huy từng là một nhà thơ được giới sinh viên yêu mến. Nhưng với niềm đam mê nghệ thuật ông đã rẽ sang hướng sáng tác những bản nhạc. Nhiều sáng tác của ông được các bạn trẻ yêu mến như: Người Về Cuối Phố, Thương Nhớ Người Dưng, Đêm Cô Đơn, Bờ Bến Lạ, Tình Mẹ, Nghĩ Về Cha, Người Thầy, Vẫn Nợ Cuộc Đời...\r\n\r\nHầu như những sáng tác của Nhất Huy đều được ca sĩ Cẩm Ly truyền tải rất thành công tới khán giả yêu nhạc.'),
(8, 'Quốc Dũng', 'View/images/Composer/QuocDung.jpg', 'Ông tên thật là Nguyễn Quốc Dũng, sinh năm 1951 tại Thái Lan. Năm 1954, khi Quốc Dũng 3 tuổi, gia đình ông hồi hương trở về Việt Nam. Năm 10 tuổi, Quốc Dũng vào học tại trường Quốc gia Âm nhạc ở Sài Gòn và năm 16 tuổi ông tốt nghiệp thủ khoa môn nhạc pháp Tây phương. Sau khi đỗ Tú tài 2, Quốc Dũng vào học tại Viện Đại học Vạn Hạnh.\r\n\r\nĐam mê âm nhạc từ nhỏ, 15 tuổi Quốc Dũng đã trình diễn mandolin trên truyền hình trong dàn nhạc đại hòa tấu. Bản nhạc đầu tiên của Quốc Dũng được ông viết khi mới 11 tuổi. Nhưng đó chỉ là một nhạc phẩm không lời. Phải đến năm 17 tuổi ông mới hoàn chỉnh bản nhạc đó thành ca khúc đầu tay Em đã thấy mùa xuân chưa. Sau đó ông viết nhiều ca khúc nổi tiếng khác như Mai, Đường xưa, Cơn gió thoảng, Chuyện ba người, Còn mãi nơi đây, Điệp khúc mùa xuân, Thoát ly, Hoang vắng...\r\n\r\nVào những năm đầu thập niên 1970, khi phong trào nhạc trẻ phổ biến ở miền Nam Việt Nam, Quốc Dũng cùng Nguyễn Trung Cang và Lê Hựu Hà là những nhạc sĩ đầu tiên Việt hóa nhạc trẻ, bắt đầu soạn các ca khúc nhạc trẻ bằng tiếng Việt. Khi đó ông cùng với Thanh Mai tạo thành một đôi song ca nổi tiếng. Với khả năng sáng tác, biểu diễn và sử dụng mandolin, guitar, piano, trống, bass, keyboard, organ, Quốc Dũng là một trong những gương mặt tiêu biểu của nhạc trẻ thời đó.\r\n\r\nSau 1975, Quốc Dũng chọn ở lại Việt Nam và kết hôn lần thứ hai với ca sĩ Bảo Yến khi ông làm biên tập, hòa âm phối khí cho Đài truyền hình Thành phố Hồ Chí Minh[1].\r\n\r\nNăm 2005, Trung tâm Thúy Nga thực hiện DVD Paris By Night 78: Đường xưa, giới thiệu dòng nhạc của ba nhạc sĩ Quốc Dũng, Châu Kỳ và Tùng Giang.\r\n\r\nNgoài vai trò nhạc sĩ, Quốc Dũng còn là diễn viên, từng đóng vai nam chính trong bộ phim Trường tôi của đạo diễn Lê Dân.'),
(9, 'Vũ Thành An', 'View/images/Composer/VuThanhAn.jpg', 'Vũ Thành An (1943–) là một trong những nhạc sĩ nổi bật của miền Nam Việt Nam thời kỳ 1954 - 1975. Các \"Bài không tên\" là những tác phẩm nổi tiếng của ông. Hiện nay, ông là một phó tế của Giáo hội Công giáo Rôma, đã ngừng sáng tác nhạc tình ca mà chỉ sáng tác thánh ca.\r\n\r\nVũ Thành An sinh tại huyện Hải Hậu thuộc tỉnh Nam Định (về sau đổi thành quận Hải Hậu thuộc tỉnh Bùi Chu). Năm 1954 ông theo gia đình di cư vào miền Nam. Năm 1960, ông vào học trường trung học Nguyễn Trãi, có theo học nhạc sĩ Chung Quân cùng Ngô Thụy Miên, Đức Huy. Năm 1961 ông thi hỏng Tú tài và về trường Hưng Đạo học tiếp Đệ nhị. Năm 1963, Vũ Thành An thi đậu Tú tài toàn phần.\r\n\r\nSau đó ông được linh mục Trần Đức Huynh, giám đốc trường Hưng Đạo cho dạy lớp Đệ thất để có tiền học Đại học. Cuối năm 1963, Vũ Thành An vào làm phóng viên ở Đài phát thanh Sài Gòn, ở đó ông gặp nhà thơ Nguyễn Đình Toàn. Năm 1965, ông viết Tình khúc thứ nhất, thơ Nguyễn Đình Toàn và nổi tiếng ngay từ ca khúc đầu tay đó. Những năm tiếp theo, ông viết nhiều Bài không tên khác. Năm 1967, Vũ Thành An nhập ngũ khóa 25 Sĩ quan dự bị Thủ Đức và 1969 ông lập gia đình.\r\n\r\nNăm 1969, ông phát hành tập nhạc Những bài không tên. Các tác phẩm của Vũ Thành An được yêu thích ở khắp miền Nam khi đó. Người ta có thể nghe tại gần như hầu hết các quán cà phê nhạc của Sài Gòn và những thành phố lớn khác, tại các quân trường và trên các làn sóng phát thanh. Tên tuổi của Vũ Thành An cùng với Tình khúc thứ nhất, Em đến thăm anh đêm ba mươi và các Bài không tên gắn liền với giới trẻ thời bấy giờ. Vũ Thành An cùng với Trịnh Công Sơn, Ngô Thụy Miên, Từ Công Phụng, Lê Uyên Phương tạo thành một lớp nhạc sĩ mới đầy tài năng.\r\n\r\nNăm 1971, Vũ Thành An tốt nghiệp đại học Luật khoa Sài Gòn. Ông tiếp tục làm việc tại đài phát thanh Sài Gòn với cấp bậc sĩ quan, và trải qua nhiều chức vụ: Trưởng cơ sở dân vận Gia Định 1973, Trưởng phân khối văn hóa, Phụ tá trưởng khối chương trình, Trưởng khối chương trình và Trưởng phân khối kế hoạch hệ thống truyền thanh 1974.\r\n\r\nNgày 30 tháng 4 năm 1975, Vũ Thành An là người cuối cùng rời Đài phát thanh Sài Gòn, lúc 10 giờ 30 giờ sáng. Sau đó ông phải học tập cải tạo suốt mười năm dài từ 1975 đến 1985 tại miền Bắc. Theo lời Vũ Thành An, ông bắt đầu sáng tác Thánh ca, Những Bài Nhân Bản trong thời gian cải tạo từ năm 1981.\r\n\r\nNăm 1991, Vũ Thành An rời Việt Nam và định cư tại Hoa Kỳ. Năm 1996, ông ghi danh học chương trình Cao học Thần học của Tổng giáo phận Portland, Oregon. Năm 2000, Vũ Thành An được đào tạo làm chức Phó Tế và phụ trách Đài phát thanh Việt Nam Hải Ngoại ở Portland, Oregon. Vũ Thành An ngừng sáng tác tình khúc và chỉ tiếp tục soạn các bản thánh ca, và tham gia các công việc từ thiện.\r\n\r\nNăm 2002, trung tâm Thúy Nga thực hiện Paris By Night 64: Đêm văn nghệ thính phòng vinh danh ông cùng nhạc sĩ Tuấn Khanh và Từ Công Phụng'),
(10, 'Minh Khang', 'View/images/Composer/MinhKhang.jpg', 'Nhạc sĩ Minh Khang sinh ngày 27 tháng 8 năm 1978 ở tại thành phố Hồ Chí Minh. Nhạc sĩ xếp hạng thứ 1576 trên thế giới và ở trong top 11 các nhạc sĩ nổi tiếng trong nước. Cuộc đời anh có khá nhiều đau khổ khi còn nhỏ.\r\n\r\nNhạc sĩ đã được khán giả biết đến qua rất nhiều sáng tác nổi tiếng như: cầu vồng khuyết, giọt nước mắt chảy ngược, bạc trắng tình đời, mưa sao băng, … Và là nhạc sĩ hòa âm phối khí cực đắt show tại thành phố Hồ Chí Minh.\r\n\r\nNhững sáng tác của anh theo xu hướng âm nhạc cho giới trẻ. Anh xem công việc sáng tác nhạc là niềm đam mê ăn vào máu thịt của bản thân mình.\r\n\r\nNhạc sĩ còn tâm đắc với các thể loại như Blues Jazz. Có những sáng tác đậm chất trữ tình như: cứ ngỡ đê mê, dòng sông không trôi, khói lam chiều đã được đông đảo khán giả đón nhận.\r\n\r\nVào năm 2005, nhạc sĩ đã thực hiện dự án âm nhạc xã hội, nó khá mất nhiều tiền bạc công sức và thời gian. Ca khúc “Đứa bé” với sự tham gia của nhiều nghệ sĩ nổi tiếng trong nước và ngoài nước đồng thời có sự tham gia của hơn 200 ca sĩ.\r\n\r\nDự án này nhằm gây quỹ từ thiện và được đông đảo khán giả đón nhận và gây được tiếng vang lớn. Quỹ từ thiện Đứa bé  được Thúy Hạnh quyên tặng 100 triệu đồng cho những hoàn cảnh khó khăn.\r\n\r\nSự nghiệp của anh một phần cũng gắn liền với ca khúc nổi tiếng Đứa bé, đã gây tiếng vang lớn trong lòng người nghe và cũng là gây quỹ từ thiện cho những đứa bé có hoàn cảnh khó khăn.\r\n\r\nCùng với đó Đối thoại Ký ức là dịp tổng kết chặng đường 20 năm trong nghề. Cùng với đó là 2 ca khúc Áo trắng ngời sáng tương lai, Mồ côi và Màu trắng, màu đen.'),
(11, 'Trường Huy', 'View/images/Composer/TruongHuy.jpg', 'Tôi sinh ra trong một gia đình nghèo, có tuổi thơ vất vả, ngoài việc đi học còn phải đi làm thuê để phụ giúp gia đình. Vốn đam mê âm nhạc, tôi đã dành dụm được một số tiền để mua cây guitar và tự mày mò học. Những đêm trăng sáng, tôi ôm đàn ngồi trước hiên nhà, hát say sưa bên tiếng muỗi vo ve.\r\nTôi viết ca khúc đầu tay khi đang học lớp 10 có tựa đề Thiên thần nhỏ, phỏng theo truyện của Nguyễn Nhật Ánh. Bài hát tiếp theo Ngôi trường của tôi đã làm bạn bè cười phá lên vì có đoạn tả về hai hàng cây xanh tươi mà trường tôi thì chẳng có bóng dáng một cây nào. Khi sắp rời cấp III, tôi lại sáng tác Nhớ trường xưa với những cảm xúc hồn nhiên nhất.\r\nVới mơ ước được học và hiểu biết hơn về nhạc lý, sau một thời gian làm thêm, tôi quyết định đầu tư 2 chỉ vàng vào việc học. Thế nhưng khi mang tiền đến thì bị thày từ chối. Cũng may là tôi được thọ giáo nhạc sĩ Trường Sa. Đó là người thày đầu tiên đã dạy không công, giúp tôi tự tin trên con đường sáng tác. Tôi đã lấy tên đệm của thày và của mình thành Trường Huy để đề tựa dưới mỗi bài hát.\r\nNăm 1995, khi còn là sinh viên năm thứ hai Đại học Sư phạm TP HCM, trong một chuyến picnic, tôi xung phong hát 2 sáng tác mới Mắt buồn và Tình xa khuất. Không ngờ, trong số bạn bè hôm ấy, có người bạn là con của chủ hãng băng đĩa Kim Lợi. Anh đề nghị tôi đưa hai ca khúc về cho mẹ nghe thử và sau đó hãng này đã tung ra ca khúc Mắt buồn do Minh Tuyết trình bày. Tôi bắt đầu được giới âm nhạc chú ý. Năm 1997, tôi đoạt 2 giải B và C cuộc thi sáng tác ca khúc sinh viên do Hội Âm nhạc TP HCM tổ chức.\r\nNăm 1998, Phương Thanh hát Một thời đã xa đoạt Giọng hát vàng ASEAN và giúp nâng tầm các ca khúc của tôi. Sau đó, Cô bé mắt nai, Tình em mùa xuân, Cho em lời cuối... liên tục lọt vào Top Làn Sóng Xanh.\r\nNhiều khán giả hỏi rằng vì sao ca khúc của Huy thường đề cập đến chuyện thất tình, bị phụ tình... Thật ra, đây chỉ là sự tình cờ. Tôi thường dựa vào cảm xúc thật và sự đồng cảm với những người xung quanh để viết nhạc. Tuy nhiên, các bài hát buồn lại được khán giả biết đến nhiều hơn.\r\nGần 10 năm sáng tác, tôi không nghĩ viết nhạc để kiếm danh tiếng, với tôi, âm nhạc là hơi thở không thể thiếu trong cuộc đời. '),
(12, 'Trịnh Nam Sơn', 'View/images/Singer/TrinhNamSon.jpg', 'Nhạc sĩ Trịnh Nam Sơn học sáng tác và hòa nhạc tại Dick Grove School Of Music và tốt nghiệp hạng danh dự vào năm 1986. Nhanh chóng được bạn trẻ trong và ngoài nước yêu thích với giọng hát thật ấm và truyền cảm, Anh đã từng lưu diễn khắp nơi trên đất Mỹ, Đông - Tây Âu, Canada, và đã từng gặp gỡ khán giả Việt Nam trong 2 chương trình Duyên dáng Việt Nam 12 & 13 do Báo Thanh Niên tổ chức.\r\n\r\nThuở nhỏ, Trịnh Nam Sơn hay theo cha đi câu cá chép ở hồ Xuân Hương rồi đem về thả trong chiếc hồ nhỏ trước sân nhà. Gia đình anh nghèo, nhưng anh biết ơn tuổi thơ cơ cực và đẹp đẽ với những buổi sáng thức dậy tràn ngập ánh mặt trời, ngắm những bông hoa păng-xê nở giữa các luống ngô khoai, những cơn mưa bong bóng phập phồng của Đà Lạt... Bởi các ca khúc Tình yêu cho Đà Lạt, Bong bóng mưa đã được chào đời từ chính nỗi hoài niệm về những ký ức đó.\r\n\r\nChặng đường âm nhạc của Trịnh Nam Sơn là một chuỗi dài nghiệt ngã. Ngày đầu đặt chân lên đất Mỹ, vốn liếng âm nhạc của anh chỉ vừa bằng một tay chơi guitar nghiệp dư, thậm chí anh còn phải đánh vần từng giai điệu. Thế rồi anh quyết tâm phải học đến nơi đến chốn về guitar. Anh đăng ký theo học sáng tác tại trường nhạc khí nổi tiếng Dick Grove, Mỹ.\r\n\r\nTừng tham gia các đại hòa tấu ở Mỹ, Trịnh Nam Sơn hy vọng sẽ có mặt trong những chương trình hòa tấu ở VN. Anh nói: \"Tôi rất mong được làm những đêm nhạc hòa tấu kết hợp nửa cổ điển, nửa hiện đại tại VN. Bước đầu có thể hơi gian nan nhưng nó sẽ mang lại màu sắc mới phong phú cho âm nhạc.\r\n\r\nHiện anh là người chuyên viết nhạc nền cho phim quảng cáo, phim truyện, sáng tác nhạc không lời và có thêm nghề phụ là lập trình tin học. Con gái 21 tuổi của anh đang theo học ngành báo chí.\r\n\r\nNgoài ca nhạc, Trịnh Nam Sơn hiện là lập trình viên cho một số hãng phim và thỉnh thoảng viết nhạc cho một số phim tài liệu cùng một số nhạc nền cho phim.\r\n\r\nDĩ vãng là tác phẩm đầu tay của Trịnh Nam Sơn. Ban đầu đây là tác phẩm nhạc khí anh viết khi đang theo học về khí nhạc và chỉ huy dàn nhạc tại trường Dick Grove School of Music ở Hollywood. Tính đến nay, anh đã viết mấy chục bản khí nhạc và hai bản nhạc phim tài liệu.\r\n\r\nSau này, khi muốn phổ biến Dĩ vãng, Trịnh Nam Sơn đã nhờ mấy người bạn là nhà thơ viết giúp cho phần lời, nhưng họ nói không có thời gian. Anh đành tự viết lời Việt. Sau đó, anh nhờ đạo diễn Lưu Huỳnh, lúc đó cũng học cùng trường với Trịnh Nam Sơn, nhưng học về đạo diễn làm giúp một video ca nhạc.\r\n\r\nLúc gửi gắm tác phẩm của mình cho Lưu Huỳnh, anh cũng chưa nghĩ là mình sẽ hát, mà định mời ca sỹ. Khổ nỗi, lúc đó, người ta chưa biết đến Trịnh Nam Sơn là ai, nên anh mời hết người nọ, đến người kia đều bị từ chối. Thế là, anh quyết định tự hát.\r\n\r\nKhông những thế, anh còn tự đánh ghi ta, đệm đàn piano và thổi kèn saxophone cho bài hát của mình. Với sự nhiệt tình giúp đỡ của Lưu Huỳnh, album đã được quay khá công phu. Dĩ vãng được thu vào băng nhựa VHS là công nghệ mới nhất thời đó.\r\n\r\nKhi quay xong, Trịnh Nam Sơn cũng chưa nghĩ đến chuyện lỗ lãi. Chỉ đơn giản nghĩ rằng, làm thế nào để giới thiệu album này tới nhiều người. Hồi đó, chưa có nhiều phương tiện quảng bá như bây giờ.\r\n\r\nTrịnh Nam Sơn đã đi gõ cửa hết trung tâm sản xuất băng đĩa này, đến trung tâm sản xuất băng đĩa kia của cộng đồng người Việt tại Hải ngoại, nhưng đều nhận được những cái lắc đầu. Không nản chí, anh quyết định tự đi phát hành. Anh thiết kế poster đĩa nhạc của mình rồi đi dán khắp nơi.\r\n\r\nRồi Dĩ vãng cũng được ra mắt, tại một quán café. Đến giờ, Trịnh Nam Sơn vẫn còn nhớ mãi ngày đó. Anh thuê một quán café nhỏ, thuê dàn âm thanh xịn và đến đó trình diễn. Anh kể, khán giả có mặt ở đây rất ấn tượng, nhưng rồi, cái tên Trịnh Nam Sơn và Dĩ vãng vẫn nhạt nhòa với số đông.\r\n\r\nThời đó, quảng cáo hữu hiệu nhất là tới tiệm bán máy video, cho họ mượn băng để thử máy. Những người đi mua đầu video thấy lạ với một clip ca nhạc có hình ảnh chất lượng cao hơn rất nhiều so với băng video thông thường.\r\n\r\nVà mọi người bắt đầu để ý tới nhạc của Trịnh Nam Sơn. Cuối cùng, trời không phụ lòng người, hãng thu thanh Khánh Hà đã mua bản quyền và sản xuất đĩa nhạc, nhờ đó mà Dĩ vãng được đưa đến công chúng.\r\n\r\nSau này, Trịnh Nam Sơn và Khánh Hà thường xuyên hợp tác với nhau. Khánh Hà cũng thường xuyên hát bài của Trịnh Nam Sơn trong nhiều năm ở hải ngoại. Năm 91, Trịnh Nam Sơn tiếp tục ra đĩa nhạc Về đây em rất được yêu chuộng tại hải ngoại và tới cuối năm 91 là Con đường màu xanh.\r\n\r\nKhoảng 94, khi nhạc Việt Nam bắt đầu bị cạnh tranh bởi nhạc Hoa lời Việt, nhạc Âu Mỹ lời dịch, Trịnh Nam Sơn chuyển sang làm tư vấn bất động sản và chỉ còn “dạo chơi trong vườn hoa âm nhạc”.'),
(13, 'Quốc An', 'View/images/Composer/QuocAn.jpg', 'Nhạc sĩ Quốc An tên đầy đủ là Lưu Quốc An, sinh ngày 21/4/1973 tại TP.HCM.\r\n\r\nKhởi nghiệp từ một nhạc công guitar, hiện nay Quốc An được biết đến như một trong những nhạc sĩ trẻ có nhiều ca khúc được các bạn trẻ yêu thích nhất, đặc biệt là giới học sinh - sinh viên. \r\n\r\n8 tuổi, Quốc An bắt đầu học guitar cổ điển. 14, 15 tuổi chơi nhạc cho các Nhà Văn hoá Thiếu nhi quận Tân Bình và Nhà Văn hoá Thanh thiếu niên quận 10. Tốt nghiệp PTTH, anh theo học guitar 3 năm tại Trường Cao đẳng Văn hoá Nghệ thuật TP.HCM. \r\n\r\nTừ những ngày còn là sinh viên, Quốc An đã cùng bạn bè thành lập ban nhạc Students, tham gia cuộc thi unplugged dành riêng cho các ban nhạc sinh viên. Sau này ban nhạc đổi tên thành Waterfall, chuyên biểu diễn các nhạc phẩm nước ngoài tại các khách sạn Caravelle, New World. Không muốn chỉ chơi lại các nhạc phẩm nước ngoài, Quốc An mày mò sáng tác và cho ra đời ca khúc đầu tay với tựa đề Nụ hôn đầu tiên. \r\n\r\nNăm 2001, Quốc An viết Cây đàn sinh viên dựa theo ý thơ của Thuận Thiên, thu âm lần đầu tiên tại Vafaco qua giọng hát Mỹ Tâm. Sau đó, nhiều ca sĩ khác đã thể hiện bài hát này như Việt Quang, nhóm 1088 và bài hát được phổ biến rộng rãi khi thường xuyên xuất hiện trong các chương trình sinh hoạt văn hoá văn nghệ của giới sinh viên. Tên tuổi Quốc An bắt đầu được nhiều người biết đến. \r\n\r\nSau thành công của Cây đàn sinh viên, Quốc An liên tục có những ca khúc gây được sự chú ý như Hát với dòng sông, Hát cho người ở lại, Trái tim buồn, Xin đừng quên tôi… Các sáng tác của anh được nhiều ca sĩ trẻ lựa chọn thể hiện trong album riêng. Năm 2002, Quốc An được trao giải 1 trong 10 nhạc sĩ được yêu thích nhất của chương trình Làn Sóng Xanh do Đài Tiếng nói Nhân dân TP.HCM tổ chức. \r\n\r\nMùa hè năm 2002, Quốc An cùng với những người bạn nhạc sĩ trẻ như Hoài An, Nguyễn Nhất Huy, Võ Thiện Thanh, Công Tuấn thành lập ban nhạc KTX, chuyên biểu diễn phục vụ sinh viên. Ban nhạc đã cùng Mỹ Tâm, Cẩm Ly thực hiện những tour biểu diễn tại các trường đại học trong địa bàn TP.HCM. \r\n\r\nTuy ban nhạc chỉ duy trì hoạt động trong 1 năm nhưng chính những hoạt động này đã giúp khán giả trẻ có cơ hội được giao lưu, gặp gỡ trực tiếp với các nhạc sĩ mà họ yêu mến và chính Quốc An cũng như những người bạn của anh có thêm chất liệu và cảm hứng cho những sáng tác của mình. \r\n\r\nHiện nay, ngoài công việc sáng tác, Quốc An còn làm biên tập viên cho các hãng băng đĩa, trong đó có Bến Thành Audio. Bên cạnh đó, anh cũng đang hướng dẫn, giúp đỡ một số ca sĩ trẻ thực hiện album riêng như Cao Phương Anh, Tuấn Lực, Bá Thắng, Lâm Vũ..., tạo điều kiện cho họ sớm tiếp cận với công chúng.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history_vote`
--

DROP TABLE IF EXISTS `history_vote`;
CREATE TABLE IF NOT EXISTS `history_vote` (
  `username_id` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `song_id` int(11) NOT NULL,
  `stars` int(11) NOT NULL,
  PRIMARY KEY (`username_id`,`song_id`),
  KEY `Song_Id` (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `history_vote`
--

INSERT INTO `history_vote` (`username_id`, `song_id`, `stars`) VALUES
('admin', 3, 4),
('admin', 4, 4),
('admin', 5, 4),
('admin', 6, 5),
('admin', 7, 4),
('admin', 8, 4),
('admin', 9, 5),
('admin', 10, 5),
('admin', 11, 5),
('admin', 12, 4),
('admin', 13, 5),
('admin', 14, 3),
('admin', 15, 4),
('admin', 16, 5),
('admin', 17, 4),
('admin', 18, 4),
('admin', 19, 5),
('admin', 20, 4),
('admin', 21, 5),
('admin', 23, 2),
('admin', 24, 3),
('admin', 25, 4),
('admin', 26, 5),
('admin', 27, 5),
('admin', 28, 5),
('admin', 30, 3),
('admin', 31, 5),
('admin', 32, 4),
('admin', 33, 4),
('admin', 34, 4),
('admin', 35, 5),
('admin', 36, 3),
('admin', 37, 5),
('admin', 38, 5),
('dvip1999', 3, 5),
('dvip1999', 4, 5),
('dvip1999', 5, 4),
('dvip1999', 6, 5),
('dvip1999', 7, 5),
('dvip1999', 8, 4),
('dvip1999', 9, 5),
('dvip1999', 10, 4),
('dvip1999', 11, 5),
('dvip1999', 12, 4),
('dvip1999', 13, 4),
('dvip1999', 14, 4),
('dvip1999', 15, 5),
('dvip1999', 16, 5),
('dvip1999', 17, 4),
('dvip1999', 18, 5),
('dvip1999', 19, 5),
('dvip1999', 20, 5),
('dvip1999', 21, 5),
('dvip1999', 23, 3),
('dvip1999', 24, 4),
('dvip1999', 25, 5),
('dvip1999', 26, 5),
('dvip1999', 27, 4),
('dvip1999', 28, 5),
('dvip1999', 30, 3),
('dvip1999', 31, 5),
('dvip1999', 32, 4),
('dvip1999', 33, 4),
('dvip1999', 34, 5),
('dvip1999', 35, 4),
('dvip1999', 36, 3),
('dvip1999', 37, 5),
('dvip1999', 38, 5),
('Master_Tester', 3, 5),
('Master_Tester', 4, 4),
('Master_Tester', 5, 4),
('Master_Tester', 6, 5),
('Master_Tester', 7, 4),
('Master_Tester', 8, 3),
('Master_Tester', 9, 4),
('Master_Tester', 10, 4),
('Master_Tester', 11, 5),
('Master_Tester', 12, 5),
('Master_Tester', 13, 4),
('Master_Tester', 14, 3),
('Master_Tester', 15, 4),
('Master_Tester', 16, 5),
('Master_Tester', 17, 4),
('Master_Tester', 18, 4),
('Master_Tester', 19, 4),
('Master_Tester', 20, 4),
('Master_Tester', 21, 4),
('Master_Tester', 23, 3),
('Master_Tester', 24, 4),
('Master_Tester', 25, 5),
('Master_Tester', 26, 5),
('Master_Tester', 27, 4),
('Master_Tester', 28, 5),
('Master_Tester', 30, 4),
('Master_Tester', 31, 5),
('Master_Tester', 32, 4),
('Master_Tester', 33, 4),
('Master_Tester', 34, 5),
('Master_Tester', 35, 4),
('Master_Tester', 36, 4),
('Master_Tester', 37, 5),
('Master_Tester', 38, 5),
('tester_1', 3, 5),
('tester_1', 4, 4),
('tester_1', 5, 4),
('tester_1', 6, 5),
('tester_1', 7, 5),
('tester_1', 8, 4),
('tester_1', 9, 5),
('tester_1', 10, 4),
('tester_1', 11, 4),
('tester_1', 12, 4),
('tester_1', 13, 5),
('tester_1', 14, 4),
('tester_1', 15, 5),
('tester_1', 16, 5),
('tester_1', 17, 3),
('tester_1', 18, 4),
('tester_1', 19, 5),
('tester_1', 20, 5),
('tester_1', 21, 5),
('tester_1', 23, 2),
('tester_1', 24, 3),
('tester_1', 25, 5),
('tester_1', 26, 5),
('tester_1', 27, 5),
('tester_1', 28, 5),
('tester_1', 30, 4),
('tester_1', 31, 5),
('tester_1', 32, 4),
('tester_1', 33, 4),
('tester_1', 34, 5),
('tester_1', 35, 4),
('tester_1', 36, 4),
('tester_1', 37, 5),
('tester_1', 38, 5),
('tester_10', 3, 5),
('tester_10', 4, 4),
('tester_10', 5, 5),
('tester_10', 6, 5),
('tester_10', 7, 4),
('tester_10', 8, 2),
('tester_10', 9, 5),
('tester_10', 10, 4),
('tester_10', 11, 5),
('tester_10', 12, 5),
('tester_10', 13, 4),
('tester_10', 14, 5),
('tester_10', 15, 5),
('tester_10', 16, 5),
('tester_10', 17, 5),
('tester_10', 18, 1),
('tester_10', 19, 5),
('tester_10', 20, 5),
('tester_10', 21, 5),
('tester_10', 23, 3),
('tester_10', 24, 5),
('tester_10', 25, 5),
('tester_10', 26, 5),
('tester_10', 27, 5),
('tester_10', 28, 5),
('tester_10', 30, 2),
('tester_10', 31, 5),
('tester_10', 32, 5),
('tester_10', 33, 1),
('tester_10', 34, 3),
('tester_10', 35, 5),
('tester_10', 36, 5),
('tester_10', 37, 5),
('tester_10', 38, 5),
('tester_11', 3, 3),
('tester_11', 4, 5),
('tester_11', 5, 4),
('tester_11', 6, 5),
('tester_11', 7, 5),
('tester_11', 8, 5),
('tester_11', 9, 5),
('tester_11', 10, 4),
('tester_11', 11, 5),
('tester_11', 12, 5),
('tester_11', 13, 4),
('tester_11', 14, 5),
('tester_11', 15, 5),
('tester_11', 16, 5),
('tester_11', 17, 3),
('tester_11', 18, 4),
('tester_11', 19, 3),
('tester_11', 20, 5),
('tester_11', 21, 5),
('tester_11', 23, 4),
('tester_11', 24, 4),
('tester_11', 25, 4),
('tester_11', 26, 3),
('tester_11', 27, 5),
('tester_11', 28, 5),
('tester_11', 30, 5),
('tester_11', 31, 4),
('tester_11', 32, 5),
('tester_11', 33, 5),
('tester_11', 34, 4),
('tester_11', 35, 4),
('tester_11', 36, 4),
('tester_11', 37, 3),
('tester_11', 38, 1),
('tester_12', 3, 5),
('tester_12', 4, 4),
('tester_12', 5, 5),
('tester_12', 6, 5),
('tester_12', 7, 5),
('tester_12', 8, 5),
('tester_12', 9, 5),
('tester_12', 10, 4),
('tester_12', 11, 5),
('tester_12', 12, 5),
('tester_12', 13, 5),
('tester_12', 14, 4),
('tester_12', 15, 5),
('tester_12', 16, 5),
('tester_12', 17, 5),
('tester_12', 18, 1),
('tester_12', 19, 3),
('tester_12', 20, 5),
('tester_12', 21, 1),
('tester_12', 23, 5),
('tester_12', 24, 4),
('tester_12', 25, 5),
('tester_12', 26, 2),
('tester_12', 27, 5),
('tester_12', 28, 5),
('tester_12', 30, 4),
('tester_12', 31, 5),
('tester_12', 32, 5),
('tester_12', 33, 5),
('tester_12', 34, 5),
('tester_12', 35, 5),
('tester_12', 36, 4),
('tester_12', 37, 5),
('tester_12', 38, 5),
('tester_13', 3, 5),
('tester_13', 4, 5),
('tester_13', 5, 1),
('tester_13', 6, 5),
('tester_13', 7, 1),
('tester_13', 8, 1),
('tester_13', 9, 2),
('tester_13', 10, 5),
('tester_13', 11, 5),
('tester_13', 12, 1),
('tester_13', 13, 3),
('tester_13', 14, 5),
('tester_13', 15, 5),
('tester_13', 16, 5),
('tester_13', 17, 1),
('tester_13', 18, 1),
('tester_13', 19, 5),
('tester_13', 20, 2),
('tester_13', 21, 1),
('tester_13', 23, 1),
('tester_13', 24, 1),
('tester_13', 25, 1),
('tester_13', 26, 5),
('tester_13', 27, 1),
('tester_13', 28, 5),
('tester_13', 30, 1),
('tester_13', 31, 5),
('tester_13', 32, 1),
('tester_13', 33, 1),
('tester_13', 34, 2),
('tester_13', 35, 1),
('tester_13', 36, 1),
('tester_13', 37, 5),
('tester_13', 38, 5),
('tester_14', 3, 5),
('tester_14', 4, 3),
('tester_14', 5, 5),
('tester_14', 6, 4),
('tester_14', 7, 5),
('tester_14', 8, 2),
('tester_14', 9, 5),
('tester_14', 10, 5),
('tester_14', 11, 4),
('tester_14', 12, 2),
('tester_14', 13, 3),
('tester_14', 14, 1),
('tester_14', 15, 5),
('tester_14', 16, 4),
('tester_14', 17, 2),
('tester_14', 18, 1),
('tester_14', 19, 4),
('tester_14', 20, 3),
('tester_14', 21, 5),
('tester_14', 23, 1),
('tester_14', 24, 2),
('tester_14', 25, 5),
('tester_14', 26, 5),
('tester_14', 27, 1),
('tester_14', 28, 4),
('tester_14', 30, 4),
('tester_14', 31, 1),
('tester_14', 32, 5),
('tester_14', 33, 5),
('tester_14', 34, 5),
('tester_14', 35, 5),
('tester_14', 36, 3),
('tester_14', 37, 1),
('tester_14', 38, 2),
('tester_15', 3, 5),
('tester_15', 4, 4),
('tester_15', 5, 1),
('tester_15', 6, 5),
('tester_15', 7, 5),
('tester_15', 8, 5),
('tester_15', 9, 1),
('tester_15', 10, 5),
('tester_15', 11, 1),
('tester_15', 12, 5),
('tester_15', 13, 1),
('tester_15', 14, 1),
('tester_15', 15, 5),
('tester_15', 16, 5),
('tester_15', 17, 3),
('tester_15', 18, 5),
('tester_15', 19, 5),
('tester_15', 20, 5),
('tester_15', 21, 4),
('tester_15', 23, 5),
('tester_15', 24, 1),
('tester_15', 25, 1),
('tester_15', 26, 4),
('tester_15', 27, 5),
('tester_15', 28, 4),
('tester_15', 30, 5),
('tester_15', 31, 5),
('tester_15', 32, 5),
('tester_15', 33, 5),
('tester_15', 34, 5),
('tester_15', 35, 5),
('tester_15', 36, 1),
('tester_15', 37, 1),
('tester_15', 38, 1),
('tester_16', 3, 5),
('tester_16', 4, 5),
('tester_16', 5, 1),
('tester_16', 6, 5),
('tester_16', 7, 5),
('tester_16', 8, 1),
('tester_16', 9, 5),
('tester_16', 10, 5),
('tester_16', 11, 4),
('tester_16', 12, 1),
('tester_16', 13, 5),
('tester_16', 14, 1),
('tester_16', 15, 5),
('tester_16', 16, 5),
('tester_16', 17, 1),
('tester_16', 18, 1),
('tester_16', 19, 4),
('tester_16', 20, 5),
('tester_16', 21, 1),
('tester_16', 23, 5),
('tester_16', 24, 1),
('tester_16', 25, 1),
('tester_16', 26, 5),
('tester_16', 27, 1),
('tester_16', 28, 5),
('tester_16', 30, 1),
('tester_16', 31, 4),
('tester_16', 32, 5),
('tester_16', 33, 5),
('tester_16', 34, 5),
('tester_16', 35, 5),
('tester_16', 36, 1),
('tester_16', 37, 1),
('tester_16', 38, 1),
('tester_17', 3, 4),
('tester_17', 4, 5),
('tester_17', 5, 1),
('tester_17', 6, 5),
('tester_17', 7, 4),
('tester_17', 8, 1),
('tester_17', 9, 5),
('tester_17', 10, 1),
('tester_17', 11, 5),
('tester_17', 12, 1),
('tester_17', 13, 5),
('tester_17', 14, 1),
('tester_17', 15, 5),
('tester_17', 16, 4),
('tester_17', 17, 1),
('tester_17', 18, 5),
('tester_17', 19, 5),
('tester_17', 20, 5),
('tester_17', 21, 5),
('tester_17', 23, 2),
('tester_17', 24, 1),
('tester_17', 25, 5),
('tester_17', 26, 4),
('tester_17', 27, 5),
('tester_17', 28, 4),
('tester_17', 30, 5),
('tester_17', 31, 5),
('tester_17', 32, 5),
('tester_17', 33, 5),
('tester_17', 34, 5),
('tester_17', 35, 5),
('tester_17', 36, 1),
('tester_17', 37, 1),
('tester_17', 38, 1),
('tester_2', 3, 5),
('tester_2', 4, 5),
('tester_2', 5, 4),
('tester_2', 6, 5),
('tester_2', 7, 5),
('tester_2', 8, 4),
('tester_2', 9, 5),
('tester_2', 10, 5),
('tester_2', 11, 5),
('tester_2', 12, 5),
('tester_2', 13, 5),
('tester_2', 14, 5),
('tester_2', 15, 5),
('tester_2', 16, 5),
('tester_2', 17, 4),
('tester_2', 18, 4),
('tester_2', 19, 5),
('tester_2', 20, 5),
('tester_2', 21, 5),
('tester_2', 23, 1),
('tester_2', 24, 5),
('tester_2', 25, 4),
('tester_2', 26, 5),
('tester_2', 27, 5),
('tester_2', 28, 5),
('tester_2', 30, 4),
('tester_2', 31, 5),
('tester_2', 32, 4),
('tester_2', 33, 5),
('tester_2', 34, 5),
('tester_2', 35, 5),
('tester_2', 36, 4),
('tester_2', 37, 5),
('tester_2', 38, 5),
('tester_24', 3, 5),
('tester_24', 4, 4),
('tester_24', 5, 3),
('tester_24', 6, 5),
('tester_24', 7, 5),
('tester_24', 8, 4),
('tester_24', 9, 5),
('tester_24', 10, 4),
('tester_24', 11, 5),
('tester_24', 12, 5),
('tester_24', 13, 4),
('tester_24', 14, 4),
('tester_24', 15, 4),
('tester_24', 16, 5),
('tester_24', 17, 3),
('tester_24', 18, 4),
('tester_24', 19, 5),
('tester_24', 20, 4),
('tester_24', 21, 5),
('tester_24', 23, 5),
('tester_24', 24, 3),
('tester_24', 25, 4),
('tester_24', 26, 5),
('tester_24', 27, 3),
('tester_24', 28, 5),
('tester_24', 30, 4),
('tester_24', 31, 4),
('tester_24', 32, 5),
('tester_24', 33, 5),
('tester_24', 34, 4),
('tester_24', 35, 5),
('tester_24', 36, 4),
('tester_24', 37, 5),
('tester_24', 38, 5),
('tester_3', 3, 5),
('tester_3', 4, 3),
('tester_3', 5, 4),
('tester_3', 6, 5),
('tester_3', 7, 5),
('tester_3', 8, 3),
('tester_3', 9, 5),
('tester_3', 10, 3),
('tester_3', 11, 5),
('tester_3', 12, 5),
('tester_3', 13, 4),
('tester_3', 14, 5),
('tester_3', 15, 4),
('tester_3', 16, 5),
('tester_3', 17, 3),
('tester_3', 18, 3),
('tester_3', 19, 5),
('tester_3', 20, 4),
('tester_3', 21, 5),
('tester_3', 23, 1),
('tester_3', 24, 2),
('tester_3', 25, 3),
('tester_3', 26, 5),
('tester_3', 27, 3),
('tester_3', 28, 5),
('tester_3', 30, 3),
('tester_3', 31, 5),
('tester_3', 32, 5),
('tester_3', 33, 3),
('tester_3', 34, 5),
('tester_3', 35, 4),
('tester_3', 36, 2),
('tester_3', 37, 4),
('tester_3', 38, 4),
('tester_4', 3, 3),
('tester_4', 4, 4),
('tester_4', 5, 3),
('tester_4', 6, 5),
('tester_4', 7, 3),
('tester_4', 8, 2),
('tester_4', 9, 5),
('tester_4', 10, 4),
('tester_4', 11, 5),
('tester_4', 12, 4),
('tester_4', 13, 4),
('tester_4', 14, 5),
('tester_4', 15, 4),
('tester_4', 16, 5),
('tester_4', 17, 3),
('tester_4', 18, 3),
('tester_4', 19, 5),
('tester_4', 20, 4),
('tester_4', 21, 5),
('tester_4', 23, 4),
('tester_4', 24, 4),
('tester_4', 25, 4),
('tester_4', 26, 5),
('tester_4', 27, 4),
('tester_4', 28, 4),
('tester_4', 30, 4),
('tester_4', 31, 5),
('tester_4', 32, 5),
('tester_4', 33, 5),
('tester_4', 34, 4),
('tester_4', 35, 5),
('tester_4', 36, 4),
('tester_4', 37, 3),
('tester_4', 38, 5),
('tester_5', 3, 5),
('tester_5', 4, 4),
('tester_5', 5, 3),
('tester_5', 6, 5),
('tester_5', 7, 4),
('tester_5', 8, 4),
('tester_5', 9, 5),
('tester_5', 10, 5),
('tester_5', 11, 5),
('tester_5', 12, 3),
('tester_5', 13, 2),
('tester_5', 14, 4),
('tester_5', 15, 5),
('tester_5', 16, 5),
('tester_5', 17, 3),
('tester_5', 18, 2),
('tester_5', 19, 5),
('tester_5', 20, 3),
('tester_5', 21, 5),
('tester_5', 23, 5),
('tester_5', 24, 4),
('tester_5', 25, 5),
('tester_5', 26, 5),
('tester_5', 27, 3),
('tester_5', 28, 5),
('tester_5', 30, 2),
('tester_5', 31, 4),
('tester_5', 32, 3),
('tester_5', 33, 5),
('tester_5', 34, 4),
('tester_5', 35, 4),
('tester_5', 36, 3),
('tester_5', 37, 5),
('tester_5', 38, 5),
('tester_6', 3, 4),
('tester_6', 4, 4),
('tester_6', 5, 4),
('tester_6', 6, 5),
('tester_6', 7, 4),
('tester_6', 8, 4),
('tester_6', 9, 5),
('tester_6', 10, 4),
('tester_6', 11, 5),
('tester_6', 12, 5),
('tester_6', 13, 4),
('tester_6', 14, 4),
('tester_6', 15, 4),
('tester_6', 16, 5),
('tester_6', 17, 5),
('tester_6', 18, 3),
('tester_6', 19, 5),
('tester_6', 20, 5),
('tester_6', 21, 4),
('tester_6', 23, 3),
('tester_6', 24, 2),
('tester_6', 25, 4),
('tester_6', 26, 5),
('tester_6', 27, 3),
('tester_6', 28, 3),
('tester_6', 30, 5),
('tester_6', 31, 5),
('tester_6', 32, 5),
('tester_6', 33, 3),
('tester_6', 34, 4),
('tester_6', 35, 5),
('tester_6', 36, 5),
('tester_6', 37, 5),
('tester_6', 38, 5),
('tester_7', 3, 4),
('tester_7', 4, 4),
('tester_7', 5, 4),
('tester_7', 6, 5),
('tester_7', 7, 5),
('tester_7', 8, 4),
('tester_7', 9, 5),
('tester_7', 10, 4),
('tester_7', 11, 5),
('tester_7', 12, 3),
('tester_7', 13, 5),
('tester_7', 14, 4),
('tester_7', 15, 5),
('tester_7', 16, 3),
('tester_7', 17, 5),
('tester_7', 18, 5),
('tester_7', 19, 5),
('tester_7', 20, 4),
('tester_7', 21, 5),
('tester_7', 23, 3),
('tester_7', 24, 4),
('tester_7', 26, 4),
('tester_7', 27, 5),
('tester_7', 28, 5),
('tester_7', 30, 4),
('tester_7', 31, 5),
('tester_7', 32, 5),
('tester_7', 33, 4),
('tester_7', 34, 5),
('tester_7', 35, 5),
('tester_7', 36, 5),
('tester_7', 37, 5),
('tester_7', 38, 5),
('tester_8', 3, 4),
('tester_8', 4, 5),
('tester_8', 5, 3),
('tester_8', 6, 5),
('tester_8', 7, 4),
('tester_8', 8, 4),
('tester_8', 9, 5),
('tester_8', 10, 4),
('tester_8', 11, 5),
('tester_8', 12, 3),
('tester_8', 13, 4),
('tester_8', 14, 3),
('tester_8', 15, 4),
('tester_8', 16, 5),
('tester_8', 17, 3),
('tester_8', 18, 2),
('tester_8', 19, 5),
('tester_8', 20, 5),
('tester_8', 21, 4),
('tester_8', 23, 4),
('tester_8', 24, 3),
('tester_8', 25, 5),
('tester_8', 26, 5),
('tester_8', 27, 3),
('tester_8', 28, 5),
('tester_8', 30, 4),
('tester_8', 31, 5),
('tester_8', 32, 3),
('tester_8', 33, 5),
('tester_8', 34, 5),
('tester_8', 35, 4),
('tester_8', 36, 5),
('tester_8', 37, 5),
('tester_8', 38, 5),
('tester_9', 3, 5),
('tester_9', 4, 5),
('tester_9', 5, 5),
('tester_9', 6, 5),
('tester_9', 7, 5),
('tester_9', 8, 4),
('tester_9', 9, 5),
('tester_9', 10, 4),
('tester_9', 11, 5),
('tester_9', 12, 4),
('tester_9', 13, 5),
('tester_9', 14, 4),
('tester_9', 15, 5),
('tester_9', 16, 5),
('tester_9', 17, 2),
('tester_9', 18, 1),
('tester_9', 19, 5),
('tester_9', 20, 4),
('tester_9', 21, 5),
('tester_9', 23, 5),
('tester_9', 24, 5),
('tester_9', 25, 4),
('tester_9', 26, 5),
('tester_9', 27, 4),
('tester_9', 28, 5),
('tester_9', 30, 5),
('tester_9', 31, 5),
('tester_9', 32, 5),
('tester_9', 33, 3),
('tester_9', 34, 5),
('tester_9', 35, 5),
('tester_9', 36, 3),
('tester_9', 37, 4),
('tester_9', 38, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlist`
--

DROP TABLE IF EXISTS `playlist`;
CREATE TABLE IF NOT EXISTS `playlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `username_id` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Username_Id` (`username_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `playlist_detail`
--

DROP TABLE IF EXISTS `playlist_detail`;
CREATE TABLE IF NOT EXISTS `playlist_detail` (
  `playlist_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`playlist_id`,`song_id`),
  KEY `Song_Id` (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `singer`
--

DROP TABLE IF EXISTS `singer`;
CREATE TABLE IF NOT EXISTS `singer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `detail` longtext COLLATE utf8mb4_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `singer`
--

INSERT INTO `singer` (`id`, `name`, `image`, `detail`) VALUES
(1, 'Đan Trường', 'View/images/Singer/DanTruong.jpg', 'Đan Trường (sinh ngày 29 tháng 11 năm 1976) tên đầy đủ là Phạm Đan Trường, là một nam ca sĩ, diễn viên người Việt Nam và được biết đến với biệt danh “anh Bo”. Anh là một trong những ca sĩ thành công bậc nhất của làn sóng hát nhạc Hoa và video ca nhạc cổ trang vào những năm cuối thập niên 90 tại Việt Nam, và là một gương mặt tiêu biểu của thời kỳ đầu Làn Sóng Xanh.\r\n\r\nĐan Trường khởi đầu ca hát vào năm 1996, khi mới 20 tuổi, sau khi đoạt giải Nhì tại cuộc thi “Giọng hát hay quận 10”, Thành phố Hồ Chí Minh. Năm 1997, anh trở thành ca sĩ độc quyền của công ty HT Production và được đông đảo công chúng biết đến qua hàng loạt những ca khúc nhạc Hoa lời Việt mà nổi bật nhất là ca khúc “Kiếp ve sầu”. Đến cuối năm 1999, sự thành công của Đan Trường cùng ca khúc “Đi về nơi xa” trong album cùng tên mới thực sự nhận được sự chú ý lớn từ giới chuyên môn lẫn truyền thông trong nước. Bản hit này đã trở thành “hiện tượng âm nhạc” và mang về cho anh giải thưởng “Ca sĩ được yêu thích nhất” tại Giải thưởng Làn Sóng Xanh.\r\n\r\nTrong những năm của thập niên 2000, Đan Trường đã phát hành nhiều album đạt thành công thương mại như: Bóng dáng thiên thần (2000), Lời ru tình (2001), Trái tim bình yên - Dòng sông băng (2002), Đến 1 lúc nào đó (2004), Thập nhị mỹ nhân (2007),... Đan Trường là ca sĩ đầu tiên tại Việt Nam thực hiện việc mua độc quyền các ca khúc để xây dựng hình ảnh và phong cách âm nhạc. Anh được đánh giá là ca sĩ thành công với nhiều dòng nhạc khác nhau, từ canto-pop, pop ballad cho đến nhạc truyền thống, nhạc dân ca trữ tình.\r\n\r\nTrong suốt sự nghiệp ca hát hơn 20 năm, Đan Trường đã nhận được nhiều giải thưởng âm nhạc. Anh là ca sĩ đầu tiên nhận giải \"Gương mặt ca sĩ của năm\" và 7 lần liên tiếp nhận giải \"Ca sĩ được yêu thích nhất\" của Giải thưởng Làn Sóng Xanh, đoạt 6 Giải Mai Vàng, 3 lần liên tiếp nhận giải \"Nam ca sĩ được yêu thích nhất\" của HTV Awards trước khi chính thức rút lui tại các giải thưởng này. Ngoài ra, anh còn nhận được những giải thưởng khác như: Ngôi Sao Bạch Kim, VTV - Bài Hát Tôi Yêu, Album Vàng, Zing Music Awards... và được đề cử \"Ca sĩ của năm\" tại Giải thưởng Âm nhạc Cống hiến. Anh cũng là đại diện của Việt Nam tham dự liên hoan âm nhạc Asian Pop Music Concert 2016 tại Hàn Quốc. Đan Trường làm giám khảo/huấn luyện viên cho các cuộc thi như: Ngôi Sao Phương Nam, Thần tượng Bolero, Tuyệt Đỉnh Song Ca, Solo cùng Bolero. Bên cạnh âm nhạc, anh còn tham gia vào lĩnh vực phim ảnh với những bộ phim nổi bật như: \"Võ lâm truyền kỳ\" (2007), \"... Thứ ba học trò\" (2009), \"Yêu anh! Em dám không?\" (2013),... Ngoài ra, anh còn được Tổng cục Du lịch Đài Loan chọn làm “Người giới thiệu du lịch Đài Loan\" (2005) và được Tổng Lãnh sự quán Hà Lan chọn làm \"Đại sứ du lịch Hà Lan tại Việt Nam\" (2007).\r\n\r\nĐan Trường sở hữu chất giọng nam trung trữ tình (lirico baritone) với âm sắc có sự linh hoạt cao. Anh thường xuyên xử lý những note trầm rất thấp một cách thoải mái, những note trung nhẹ nhàng, êm dịu, đôi khi lại thể hiện những note cao rất sáng và bay bổng. Đặc trưng trong cách hát của Đan Trường là anh thường sáng tạo những đoạn luyến láy (melisma) để tạo nét độc đáo và mới lạ cho bài hát. Nhạc sĩ Quốc An đã từng nhận xét: \"Trong mỗi ca khúc, chàng trai này đều sáng tạo thêm những cách luyến láy, làm cho bài hát trở nên sống động và truyền cảm.\"[163] Mặc dù có quãng giọng khá rộng, nhưng kỹ thuật hát không phải là điểm mạnh nổi bật của Đan Trường. Chính giọng hát có sự linh hoạt cao đã giúp Đan Trường thành công với nhiều dòng nhạc khác nhau, từ canto-pop, pop rock, cho đến dòng nhạc truyền thống, nhạc dân ca trữ tình.\r\n\r\nTrong suốt sự nghiệp âm nhạc của mình, Đan Trường đã hát song ca hoặc hợp tác cùng rất nhiều những nghệ sỹ hàng đầu như: Cẩm Ly, Phương Thanh, Thanh Thảo, Quang Linh, Mỹ Tâm, Hồ Quỳnh Hương, Hồ Ngọc Hà,... Cẩm Ly được đánh giá là ca sĩ hát đôi hợp nhất và thành công nhất với anh. Cặp song ca \"vàng\" Đan Trường - Cẩm Ly đã tạo nên rất nhiều bản hit thuộc nhiều dòng nhạc khác nhau như: \"Nếu phôi pha ngày mai\", \"Mưa buồn\", \"Khung trời ngày xưa\", \"Tuyết hồng\", \"Chim trắng mồ côi\", “Hai bờ cách biệt”,... Ngoài ra, Đan Trường còn tham gia thực hiện hoà âm cho các album nhạc và làm đạo diễn cho các video nhạc của anh.'),
(2, 'Lam Trường', 'View/images/Singer/LamTruong.jpg', 'Lam Trường tên thật là Tiêu Lam Trường (sinh ngày 14 tháng 10 năm 1974) là một ca sĩ, diễn viên Việt Nam.\r\n\r\nLam Trường thường được người hâm mộ gọi thân mật là \"Anh Hai\" và thường viết là \"A2\". Anh là con út trong một gia đình người Việt gốc Hoa (Triều Châu). Ngay từ nhỏ Lam Trường đã tỏ ra có năng khiếu trong lĩnh vực âm nhạc. Mặc dù gặp phải sự ngăn cấm của bố khi quyết định theo đuổi nghề ca hát, nhưng bằng chính thực lực của mình Lam Trường cũng đã nhận được sự đồng ý của bố.\r\n\r\nLam Trường có gốc Cầu số 2 - quê Bạc Liêu - xứ sở ông tổ Cải lương Cao Văn Lầu - cái noi của những người nổi tiếng, ngoài ra còn có ca sĩ Ngọc Sơn, danh hài Cát Phượng, Hoa hậu Đặng Thu Thảo\r\n\r\nTháng 10 năm 1995, Lam Trường đạt giải nhì cuộc thi \"Thập đại tinh tú\", một cuộc thi hát của cộng đồng người Hoa tại thành phố Hồ Chí Minh.\r\n\r\nNăm 1997, ngoài album riêng đầu tay Baby I love you, anh còn gây ấn tượng ở nhiều ca khúc quốc tế khác.\r\n\r\nNăm 1998, Lam Trường trở thành một \"hiện tượng\" với bài hát Tình thôi xót xa (Bảo Chấn). Liền sau đó là một loạt bài hát khác như: \"Tôi ngàn năm đợi\", \"Mưa phi trường\"... Một thời gian dài liên tục anh có mặt trong Top ten Làn Sóng Xanh của Đài Tiếng nói Nhân dân Thành phố Hồ Chí Minh.\r\n\r\nNăm 2000, với thành công của liveshow đầu tiên \"Lời trái tim muốn nói\" và album Chút tình thơ ngây. Năm 2002, Lam Trường thực hiện live show thứ hai \"Cho bạn cho tôi\" và phát hành album single cùng tên \"Cho bạn cho tôi\" cũng chính là một sáng tác mới của anh sau sáng tác đầu tay \"Có một ngày\" phát hành năm 2001.\r\n\r\nTháng 9 năm 2002, Lam Trường sang Nhật biểu diễn theo lời mời của Đài Truyền hình NHK ngay sau khi nhận giải thưởng Làn Sóng Xanh của Đài Tiếng nói Nhân dân Thành phố Hồ Chí Minh.\r\n\r\nNăm 2003, anh tiếp tục ra những album như Đêm lạnh, Dù ta không còn yêu.\r\n\r\nNgày 24 tháng 3 năm 2007, Lam Trường thực hiện Liveshow \"Chuyện Hôm Qua\" tại nhà thi đấu Quân khu 7, thành phố Hồ Chí Minh.\r\n\r\nNăm 2007, anh đại diện Việt Nam tham gia đại hội âm nhạc châu Á \"Asia song Festival\" tại Hàn Quốc.\r\n\r\nNăm 2004, Lam Trường kết hôn với Ngô Ý An, một Việt kiều cư ngụ tại thành phố Houston, tiểu bang Texas ở Mỹ. Hôn thê của anh là một kỹ sư vi tính. Hai người có một con trai tên Tiêu Kiến Văn. Hai người ly hôn vào năm 2009. Sau khi chia tay, con trai anh ở với mẹ.\r\n\r\nNăm 2013, Lam Trường đính hôn với Yến Phương, một du học sinh trường Cao đẳng cộng đồng Green River thành phố Auburn, bang Washington, Mỹ. Cô kém anh gần 17 tuổi. Năm 2014, Lam Trường chính thức kết hôn với Yến Phương, hiện anh vẫn đi về giữa Mỹ và Việt Nam để tiện việc chăm sóc gia đình nhỏ của mình cũng như kết hợp lưu diễn ở Mỹ. 2017, con gái chung của Lam Trường và Yến Phương đã sinh và được đặt tên là Tiêu Yên Lam (Phoebe).'),
(3, 'Cẩm Ly', 'View/images/Singer/CamLy.jpg', 'Cô tên thật là Trần Thị Cẩm Ly, sinh ngày 30 tháng 3 năm 1970 tại Sài Gòn. Nguyên quán ở Quy Nhơn, Bình Định. Cô là con thứ ba (vì vậy thường được các fan hâm mộ gọi là Chị Tư theo thông lệ miền Nam) trong một gia đình có 6 anh chị em, cha là nhạc sĩ Trần Quang Hiển, hai em gái Hà Phương và Minh Tuyết cũng là ca sĩ (hiện đang định cư tại hải ngoại). Năm 2004, cô kết hôn cùng nhạc sĩ Minh Vy (tên thật là Đoàn Hữu Minh). Hiện nay Cẩm Ly có hai con gái là Cẩm Uyên (2005, tên thường gọi là Thỏ) và Cẩm Anh (2008, tên thường gọi là La).\r\n\r\nTừ nhỏ, ba chị em Cẩm Ly đã bộc lộ năng khiếu ca hát. Năm 1993, Cẩm Ly cùng Minh Tuyết đi hát và cũng ngay năm đó cô và em của mình đã đoạt giải nhất song ca do nhà hát Hòa Bình tổ chức. Sau sự kiện này Cẩm Ly bắt đầu sự nghiệp ca hát chuyên nghiệp của mình khi quyết định đầu quân cho Kim Lợi Studio, một phòng thu âm có tiếng thời bấy giờ.\r\n\r\nĐến năm 1997, Minh Tuyết sang Mỹ du học, Cẩm Ly phải ngừng hát một thời gian vì lý do sức khỏe. Một năm sau đó, cô hát trở lại và cho ra hai album cùng ca sĩ Cảnh Hàn và năm 1999, cô cùng ca sĩ Đan Trường ra album \"Nếu phôi pha ngày mai\". Năm 2000, cô đánh dấu sự nghiệp solo bằng album đầu tay \"Mãi không phai\".\r\n\r\nTrong những năm tiếp theo, cô trình bày các nhạc phẩm của nhạc sĩ Nguyễn Nhất Huy như \"Người về cuối phố\", \"Bờ bến lạ\", \"Thương nhớ người dưng\", \"Mây chiều\", \"Tình không đổi thay\". Album dân ca đầu tiên của Cẩm Ly mang tên \"Em gái quê\" do Kim Lợi Studio phát hành, gồm 11 ca khúc mang âm hưởng dân ca: \"Quên cây cầu dừa\", \"Nỗi buồn chim sáo\", \"Phượng buồn\", \"Chạnh lòng\", \"Nhớ mẹ lý mồ côi\", \"Mưa chiều miền Trung\".\r\n\r\nTháng 7/2001, Cẩm Ly trở thành ca sĩ Việt Nam đầu tiên có chương trình DVD và đây cũng là thời điểm cô xác lập cho mình một phong cách ổn định, hoàn toàn tách ra độc lập với Đan Trường. Cẩm Ly hiện là ca sĩ độc quyền thành công nhất của Kim Lợi studio.\r\n\r\nCẩm Ly là ca sĩ đầu tiên thực hiện liveshow miễn phí phục vụ sinh viên \"Vòng Quanh Ký Túc Xá\" trong hai năm 2003, 2004.\r\n\r\nNăm 2008, Cẩm Ly đã tổ chức riêng cho mình một liveshow tại sân khấu Lan Anh để kỷ niệm 15 năm ca hát và đánh dấu lần đầu tiên đảm nhận vai chính trong một vở cải lương. Cùng thời điểm đó, cô xuất hiện trong chương trình Paris By Night 92 - Nhạc yêu cầu của Trung tâm Thuý Nga.\r\n\r\nNăm 2009, cô tổ chức liveshow \"Tự tình quê hương\", liveshow thứ 2 trong sự nghiệp âm nhạc của mình, đồng thời cho ra mắt 2 album \"Em không thể quên - Tình khúc Minh Vy\" và album dân ca trữ tình \"Biển tình\".\r\n\r\nNăm 2011, cô tổ chức liveshow riêng thứ 3 \"Tự tình quê hương 2\", thể hiện trên cả bốn phong cách: trữ tình, dân ca, nhạc trẻ và cải lương tuồng cổ.\r\n\r\nNăm 2012 Cẩm Ly tổ chức liveshow \"Tự tình quê hương 3\".\r\n\r\nNăm 2013, Cẩm Ly cùng Minh Tuyết tổ chức liveshow \"Tự tình quê hương 4\" đánh dấu kỷ niệm 20 năm ca hát của hai chị em. Liveshow diễn ra trong hai đêm tại Nhà hát Hòa Bình, Tp. Hồ Chí Minh với sự ủng hộ của đông đảo khán giả.\r\n\r\nTrong năm 2014, Cẩm Ly tham gia với vai trò là HLV của Giọng hát Việt nhí đưa Thiện Nhân giành chức vô địch mùa thứ hai. Cùng với đó, cô cùng với Nhạc sĩ Minh Vy tham gia vai trò HLV Chương trình Vợ chồng mình hát và cũng là nhà vô địch.\r\n\r\nNăm 2015, Cẩm Ly tiếp tục thực hiện chuỗi liveshow \"Tự tình quê hương 5\" tại Nhà hát Hòa Bình, Thành phố Hồ Chí Minh.'),
(4, 'Bằng Kiều', 'View/images/Singer/BangKieu.jpg', 'Bằng Kiều, tên đầy đủ là Nguyễn Bằng Kiều, sinh ngày 13 tháng 07 năm 1973 tại Hà Nội, là một ca sĩ Việt Nam.\r\n\r\nBằng Kiều từng tham gia các ban nhạc Chìa khóa vàng, Hoa sữa, Quả dưa hấu và sau đó tách ra hát solo riêng. Năm 2002 anh định cư tại Mỹ và kết hôn với ca sĩ Trizzie Phương Trinh. Do những phát ngôn gây tranh cãi, cuối năm 2004, anh bị tước quyền công dân Việt Nam. Năm 2008, Bằng Kiều đã có chuyến quay trở về Việt Nam đầu tiên. Hiện nay Bằng Kiều là ca sĩ độc quyền của trung tâm Thúy Nga.\r\n\r\nGiọng ca của Bằng Kiều được xếp vào giọng nam cao (tenor), được đánh giá là trong và giàu tình cảm. Anh thuộc lớp ca sĩ cùng thời với Lam Trường, Minh Thuận, Phương Thanh, Mỹ Linh, Dương Chí Linh, Quang Linh.\r\n\r\nTháng 9 năm 2012, Bằng Kiều trở lại Việt Nam và được Cục biểu diễn nghệ thuật cấp phép thực hiện liveshow trong vòng 3 tháng từ tháng 10 tới tháng 12.\r\n\r\nBằng Kiều hiện đang hợp tác với Trung tâm Thúy Nga và là một trong số các nam ca sĩ ăn khách vào bậc nhất hải ngoại, Anh thường xuyên xuất hiện trong loạt chương trình Paris By Night, với các dấu ấn tiêu biểu như: Lắng nghe mùa xuân về (Paris By Night 80), Em tới thăm anh đêm 30 (Paris By Night 85), Bản tình cuối (Paris By Night 86), Phút cuối (Paris By Night 88), Biển cạn (Paris By Night 98), Xin đừng quay lại (Paris By Night 99), Mùa thu cho em - mộng dưới hoa (Paris By Night 96), Em ơi Hà Nội Phố (Paris By Night 91), Xin lỗi anh (với Minh Tuyết - Paris By Night 100).\r\n\r\nNgoài ra, Bằng Kiều còn tham gia một số vở hài kịch trong Paris by Night.\r\n\r\nCuối tháng 2 năm 2008, sau hơn 4 năm ở Hoa Kỳ, Bằng Kiều cùng gia đình trở về thăm Việt Nam. Anh cho biết mình \"rất vui\", tuyên bố không tham gia biểu diễn và từ chối trả lời các phỏng vấn với lý do \"không muốn và không biết nói gì vào lúc này\". Trong lần về nước này, Bằng Kiều tham dự nhiều chương trình ca nhạc với tư cách khán giả tặng hoa cho đồng nghiệp. Anh có xuất hiện trên sân khấu liveshow của nhạc sĩ Phú Quang, sân khấu Nhà hát lớn Hà Nội, Cung Văn hóa Hữu nghị Hà Nội, tặng hoa cho Ngọc Anh và Hà Trần. Xúc động vì tình cảm của khán giả với sự xuất hiện của anh, Bằng Kiều chia sẻ rằng \"Hy vọng một dịp nào đó lại có thể hát cho mọi người trên sân khấu quê nhà\". Nhân chuyến viếng thăm này, vấn đề quyền biểu diễn tại Việt Nam của Bằng Kiều được đưa ra bàn luận. Trong cuộc trả lời vào năm 2008 với một trang báo điện tử nhân dịp Bằng Kiều về nước, Cục trưởng Cục Nghệ thuật biểu diễn cho hay, vẫn chưa có thông tin về việc Bằng Kiều có ý định biểu diễn tại Việt Nam hay không, tuy vậy, nếu anh muốn hát tại Việt Nam, thì sẽ phải làm đơn xin Cục, sau đó, Cục Nghệ thuật biểu diễn sẽ xin ý kiến của Cục An ninh Văn hóa rồi mới đưa ra quyết định.\r\n\r\nTháng 3 năm 2010, Bằng Kiều bất ngờ về nước và xuất hiện trong buổi tiệc sinh nhật của ca sĩ Hồng Nhung. Tiếp đó, nhân chuyến lưu diễn tại Phnom Penh tháng 12 năm 2011, Bằng Kiều và gia đình về nước lần thứ ba. Anh có tổ chức một buổi họp fan thân mật mang tính riêng tư ở club Passion tại Hà Nội. Tuy nhiên có quá nhiều người tụ tập nên công an phường đề nghị tạm dừng buổi họp mặt vì lý do gây mất trật tự công cộng  và yêu cầu giải tán xe đậu trên lề đường sau khi buổi họp mặt diễn ra chưa được 15 phút. Các fan được thông báo chuyển địa điểm gặp gỡ đến công viên Thống Nhất. Một lý do khác cho lần về nước này của Bằng Kiều là để tham dự đêm nhạc diễn ra ở tại Hà Nội kỷ niệm 47 năm đi hát của ca sĩ Thanh Tuyền.\r\n\r\nNgày 25 tháng 09 năm 2012, Bằng Kiều cùng nữ ca sĩ Khánh Ly được Cục Nghệ thuật Biểu diễn chính thức cấp phép biểu diễn tại Việt Nam với thời hạn đến hết tháng 12 cùng năm.'),
(5, 'Minh Thuận', 'View/images/Singer/MinhThuan.jpg', 'Minh Thuận tên thật Nguyễn Minh Thuận, sinh ngày 12 tháng 9 năm 1969 tại Sài Gòn trong một gia đình Công giáo với tên thánh là Giuse. Từ khi 5 tuổi, Minh Thuận đã được mẹ dẫn vào tham gia ca hát trong ca đoàn của nhà thờ, nhưng sự nghiệp của Minh Thuận thật sự bắt đầu vào năm 1984 tại Nhà Văn hóa Quận 5.\r\n\r\nNăm 1988 Minh Thuận tham gia nhóm ca khúc chính trị Tiến Đạt.\r\n\r\nNăm 1991, Minh Thuận và Nhật Hào bắt đầu có tên tuổi trong làng giải trí. Lần đầu tiên hai anh bắt nhóm với nhau rất tình cờ. Đó là trong một chương trình tìm kiếm ca sĩ trẻ ở Nhà Văn hóa Quận 10, khi ấy mỗi người chỉ đóng vai trò hát lấp vào khoảng trống khi các ngôi sao như Nhã Phương, Bảo Yến, Ái Châu, Lê Tuấn... chưa tới mà chờ riêng để tới lượt thì lâu quá, thế nên hai anh ráp lại hát chung, không ngờ khán giả lại tỏ ra phấn khích, rần rần vỗ tay. Từ đó, nhóm mới bắt đầu tìm kiếm dòng nhạc phù hợp, xây dựng hình tượng, phong cách riêng. Mái tóc dài cũng không phải là chủ ý. Giải thích lý do để tóc dài là do cả hai làm biếng đến tiệm cắt tóc, nên lúc đi hát cả hai cột lên cho gọn, không ngờ lại được khán giả yêu thích, thế là họ quyết định để tóc dài từ đó. Mái tóc dài đặc trưng của Minh Thuận - Nhật Hào “Tôi vô tình quen biết một số bạn bè người Hoa, được nghe nhiều băng đĩa nhạc phim Hồng Kông, khi ấy nhạc Canto-pop đang thịnh hành ở châu Á mà ở Việt Nam vẫn chưa nhiều người biết tới, thế là chúng tôi nảy ra ý định hát những ca khúc nhạc Hoa đã chuyển sang lời Việt, tự dưng lại thành một xu thế mới” - Minh Thuận chia sẻ.\r\n\r\nNăm 1992, Minh Thuận và Nhật Hào đã chính thức phát hành album riêng của nhóm tựa đề \"Chàng Trai Beijin\" với những ca khúc nhạc Hoa của Tứ Đại Thiên Vương (Hồng Kông) được viết lời Việt. Album đã tạo nên cơn sốt trong làng nhạc trẻ lúc bấy giờ và đưa đôi song ca lên đến đỉnh cao sự nghiệp. Sự thành công này khiến cả hai bắt đầu liên tục thu âm, phát hành bộ album riêng mang tên \"Chàng Trai Bắc Kinh\" cho đến tận Vol 16. Minh Thuận - Nhật Hào xuất hiện trong hầu hết các chương trình ca nhạc lớn nhỏ. Có đêm cả hai đã chạy show hát ở 22 điểm tại thành phố Sài Gòn và đến nay chưa có ca sĩ nào vượt qua được kỷ lục này.\r\n\r\nNăm 1995, đôi song ca Minh Thuận - Nhật Hào vẫn đang ở đỉnh cao của sự nghiệp. Lúc này thị trường nhạc trẻ Việt Nam ảnh hưởng bởi các ca khúc nhạc Hoa, Hồng Kông chuyển sang lời Việt và được các ca sĩ Việt Nam trình bày bằng ca từ trau chuốt, giai điệu đẹp đẽ chiếm cảm tình của đông đảo khán giả. Có thể kể đến những cái tên quen thuộc: Minh Thuận, Nhật Hào, Lam Trường, Sỹ Ben, Tú Linh, Tú Châu, Cảnh Hàn, Mộng Na, Tài Linh.... Bài hát của những ngôi sao này xuất hiện ở mọi nơi, có nhiều bài hát được khán giả thuộc nằm lòng, nổi bật trong số đó là Minh Thuận và Lam Trường.\r\n\r\nLúc này, các trung tâm băng nhạc nổi tiếng của Sài Gòn đã bắt đầu sản xuất các chương trình ca nhạc tạp kỹ, tất nhiên cái tên Minh Thuận & Nhật Hào xuất hiện hàng loạt trong các video ca nhạc của các trung tâm như Rạng Đông, Kim Lợi,Bến Thành Audio,hãng phim Trẻ,... qua các MV như: Người Tình Mùa Đông, Hát Cùng Mùa Xuân, Đàn Sầu, Lời Sám Hối,.... Hầu hết các MV có nét độc đáo, mới lạ và có chút liêu trai tạo sự khác biệt. Đó cũng chính là phong cách đôi song ca Minh Thuận - Nhật Hào muốn hướng đến.\r\n\r\nCuối năm 1995 Minh Thuận - Nhật Hào thực hiện cuốn băng video tập hợp những bài hát quen thuộc và thành công nhất của cả hai mang tên \"Chàng trai Beijin\" do trung tâm Việt Hùng thực hiện với cảnh quay ở các bãi biển đẹp của miền Trung Việt Nam. Album gồm 8 bài hát: I Love You OK?, Tình Đã Phai, Hãy Để Tôi Được Khóc, Tiếc Nuối, Thất Tình, Nếu Em Là Truyền Thuyết, Uyên Ương Hồ Điệp Mộng, Sayonara. Album video này cho thấy sự trưởng thành của đôi song ca Minh Thuận & Nhật Hào ở giọng hát, phong cách & vũ đạo.\r\n\r\nKhoảng năm 1996, đôi song ca Minh Thuận - Nhật Hào tách ra solo để lại nhiều tiếc nuối cho người hâm mộ. Minh Thuận bắt đầu sự nghiệp ca hát riêng và gặp nhiều khó khăn vì khán giả đã quen hình ảnh song ca 2 người trước đây. Minh Thuận chia sẻ: \"Đôi khi hai người cũng có những bất đồng nho nhỏ nhưng không đáng kể, nhưng bản thân Minh Thuận cho rằng đã đến lúc cả hai phải chia tay để mỗi người tạo sự nghiệp riêng vì các nhóm hát thường nếu không phải thành viên trong gia đình thì khó duy trì hát cùng nhau lâu dài. Cả hai đều còn trẻ, chia tay khi còn ở đỉnh cao sự nghiệp sẽ khiến khán giả nhớ lâu hơn khi qua thời đỉnh cao\". Đôi song ca Minh Thuận - Nhật Hào dù không còn hát chung nhưng vẫn duy trì tình cảm anh em tốt đẹp. Nhật Hào đã định cư ở Hoa Kỳ, thỉnh thoảng vẫn về Việt Nam tham gia ca hát và rủ Minh Thuận hát chung để gợi lại nhiều kỷ niệm đẹp.\r\n\r\nMinh Thuận bắt đầu sự nghiệp hát đơn ca bằng việc tham gia biên tập cho chương trình ca nhạc MƯA HỒNG của trung tâm băng nhạc Rạng Đông quy tụ nhiều ca sĩ như: Phương Thanh, Sỹ Ben, Tam Ca Áo Trắng, Cẩm Vân, Khắc Triệu, Thùy Trang, Hoàng Dũng, Lý Hải... Khán giả thấy Minh Thuận solo với phong cách mới tiến bộ rõ rệt từng ngày qua các video clip như Tình Xưa Không Phai, Nuối Tiếc Khi Chia Tay, Khi Nào Em Mới Biết....được quay chăm chút trong từng khung hình, nhiều cảnh đẹp khắp mọi nơi trên đất nước từ Phan Thiết đến tận Sa Pa.\r\n\r\nỞ thời điểm hát đơn khi mà những ca khúc nhạc Hoa vẫn chiếm tình cảm đông đảo khán giả, Minh Thuận tham gia hát với Sỹ Ben bằng những ca khúc nhạc Hoa lời Việt ghi đậm dấu ấn trong sự nghiệp của mình bằng bộ album Nụ Hôn Biệt Ly 1 & 2. Chất giọng Minh Thuận trong bộ album này đượm buồn man mác, anh hát như chất chứa bao nhiêu tình cảm của mình. Thành công nhất là ca khúc Nụ Hôn Biệt Ly (Lời Việt: Việt Hùng). Tính đến nay Minh Thuận đã hát, hòa âm lại rất nhiều lần ca khúc đóng dấu tên tuổi của mình.\r\n\r\nNgoài hát đơn, anh còn hát song ca với người bạn thân Phương Thanh, lúc đó cô là một ca sĩ trẻ bắt đầu được chú ý. Những bài hát của đôi song ca Minh Thuận - Phương Thanh có tiết tấu vui nhộn, hài hước trong các MV như: Telephone, Đôi Cánh Thiên Thần, Lý Ngựa Ô, Con Gái Bây Giờ.... hoặc trữ tình tha thiết khi cả hai hát trong phòng thu như: Tấm Lòng Em Trong Sáng, Còn Mãi Mùa Đông, Tình Dẫu Muộn Màng.... Đặc biệt, Minh Thuận rất ưu ái hỗ trợ người bạn thân với vai trò khách mời trong MV \"What\'s Up?\" (Điều Gì Sẽ Xảy Ra?) và tham gia hát bè cho cô trong các ca khúc như: Chia Tay Trong Mưa, Trống Vắng.... điều mà hiếm có một ngôi sao nào dám hết mình vì bạn như Minh Thuận.\r\n\r\nNăm 1996, Minh Thuận phát hành album Vol 1 mang tên \"Tình Đầu Chưa Nguôi\". 10 ca khúc trong album này hầu hết là các ca khúc Hoa được nhạc sĩ Lê Hựu Hà dịch lời Việt. Album được khán giả yêu thích bình chọn top 5 album hay nhất năm 1996. Đây là album được khán giả công nhận là album thành công nhất của Minh Thuận với các ca khúc được nhiều khán giả yêu thích và thuộc nằm lòng như: Dù Có Là Người Tình, Tình Yêu Muôn Thuở, Tiểu Phương....\r\n\r\nCùng năm 1996, Minh Thuận tự biên tập và phát hành album Vol 2 mang tên \"Lời Chúc Phúc\" với các ca khúc nhạc Hoa lời Việt được viết riêng cho Minh Thuận.\r\n\r\nNăm 1997, Minh Thuận tự biên tập và phát hành album Vol 3 \"Ngụ Ngôn Tình Yêu\". Trong thời gian này, thị trường ca nhạc bắt đầu sự trỗi dậy của nhạc Việt, Minh Thuận tự biên tập và làm nhà sản xuất album cho mình với album Vol 4 \"Trả Nợ Tình Xa\". Đây được xem là bước đi mới của Minh Thuận khi mà tên tuổi của anh vốn gắn liền với các ca khúc nhạc Hoa lời Việt. Chất giọng anh cũng khỏe khoắn hơn nhưng vẫn rất giàu tình cảm, khán giả được trải nghiệm giọng hát Minh Thuận hoàn toàn mới về phong cách cũng như cách xử lý bài hát. Đây là khởi đầu của Minh Thuận cho chặng đường chinh phục khán giả bằng con đường hát nhạc Việt sau này. Album này được nhiều lời khen ngợi và bài hát Nỗi Nhớ Dịu Êm, Em Đi Qua Tôi được xuất hiện trên bảng xếp hạng Làn Sóng Xanh (sau này Lam Trường cũng hát bài Nỗi Nhớ Dịu Êm và được khán thính giả của Làn Sóng Xanh bình chọn nhiều hơn). Ngoài ra còn có ca khúc Người Về Từ Lòng Đất, Con Gái Bây Giờ cũng được khán giả yêu thích.\r\n\r\nNăm 1998, Minh Thuận cùng với Nhật Hào hợp tác với Trung tâm Hoàng Đỉnh thực hiện nhiều bộ album Liên khúc Rap, Liên khúc Tình Yêu, Liên khúc Mùa Xuân và một vài album nhạc trẻ. Tuy là lần hợp tác trở lại với Nhật Hào nhưng với vai trò đơn ca. Bộ album này chưa gây nhiều dấu ấn cho khán giả như những album song ca trước đây nhưng cũng làm khán giả thỏa mãn vì sự xuất hiện trở lại của đôi song ca Minh Thuận - Nhật Hào.\r\n\r\nNăm 1999, Minh Thuận phát hành album Vol 5 \"Rêu Phong\" tập hợp 10 tình khúc nhạc Việt do Minh Thuận biên tập. Bìa album lần đầu tiên hợp tác với nhà thiết kế Kin gây ấn tượng ngay từ khâu hình ảnh: hiện đại & mới mẻ. Những ca khúc được anh chọn trong album được sáng tác bởi những tác giả có nhiều bài hát được yêu thích như Tuấn Khanh, Quốc Hùng, Bảo Chấn.... Những ca khúc này mang hơi thở hiện đại hơn những ca khúc đã đóng dấu với tên tuổi của anh trước đó. Đặc biệt bài Rêu Phong là một sự làm mới táo bạo khi anh trình bày trên sân khấu ca nhạc. Khán giả bắt gặp một Minh Thuận dữ dội, phiêu linh, gào thét cháy bỏng hết mình với ban nhạc và khán giả.\r\n\r\nCuối năm 1999, Minh Thuận tự làm nhà sản xuất và biên tập trong album mới mang tên \"Ta Chẳng Còn Ai\" thu chung với Phương Thanh. Trong album lần này, có một điểm nhấn đã tạo dấu son chói lọi trong sự nghiệp solo của Minh Thuận, đó là ca khúc Nỗi Đau Ngọt Ngào của nhạc sỹ Quốc Dũng. Bài hát này đã đưa tên tuổi Minh Thuận vụt sáng thành ngôi sao trong sự nghiệp solo của anh. Bài hát liên tục đứng hạng nhất bình chọn Làn Sóng Xanh nhiều tháng liền và nằm trong top 10 Bài Hát được yêu thích nhất của năm 2000. Cho đến bây giờ, khán giả vẫn nhắc đến cái tên Minh Thuận gắn liền với bài hát Nỗi Đau Ngọt Ngào. Bài hát này đã được Trung tâm Kim Lợi sản xuất MV với sự góp mặt của diễn viên Ngô Thanh Vân. Album này ngoài những bài Minh Thuận hát đơn ca, còn có một số bài song ca với Phương Thanh như Tình Yêu Mắt Nai, Rock Con Diều. Đặc biệt là bài Rock Con Diều với giai điệu mạnh mẽ, cuồng nhiệt đã khuấy động khán giả mỗi khi anh thể hiện ca khúc này trên sân khấu.\r\n\r\nNăm 2000, Minh Thuận khởi đầu xu hướng mua độc quyền bài hát thu album và trình diễn trên sân khấu. Đây là hướng đi cần thiết khi mà tình trạng nhạc Việt đến thời điểm đó có nhiều ca sĩ hát một bài thì việc ký độc quyền sẽ theo hướng có lợi cho ca sĩ khi đóng dấu tên tuổi gắn liền với bài hát. Đó là album Vol 7 \"Mùa Hạ Mãi Xa\" tập hợp 10 bài hát và hầu hết được anh ký độc quyền. Album này được anh trau chuốt phần trình bày bìa, hình ảnh mới lạ độc đáo và bài hát chủ đề Mùa Hạ Mãi Xa liên tục góp mặt trong bảng xếp hạng Làn Sóng Xanh và các chương trình ca nhạc lớn như: Duyên Dáng Việt Nam 9, Kỷ niệm 10 Năm Kim Lợi. Ngoài ra các bài hát khác trong album cũng được anh trình bày trên sân khấu: Tôi Muốn Nhìn Mưa Rơi, Tình Không Dễ Phai (Ấn Tượng Sài Gòn 5), Bước Chân Cuối Cùng (Sắc Màu Đêm Sài Gòn), Radio Buồn (với Hiền Thục - chương trình Thế giới Tình Yêu).... Thời điểm này anh miệt mài chạy show từ Bắc chí Nam trên khắp các sân khấu ca nhạc cả nước.\r\n\r\nCũng từ năm 2000, Minh Thuận còn bắt đầu thể nghiệm vai trò diễn viên kịch với vai diễn đầu tiên trong Yêu Thầy của đạo diễn Quốc Thảo, vai thầy Tuấn gây cơn sốt cho khán giả mỗi khi vở này công diễn. Vở kịch này đã giúp Minh Thuận đoạt giải diễn viên xuất sắc năm 2000-2001. Anh cảm thấy may mắn và trân trọng trong những lần xuất hiện với sàn kịch, mong muốn được thể hiện trong nhiều vai diễn khác hơn.\r\n\r\nVới bước khởi đầu nhiều thuận lợi, Minh Thuận tham gia nhiều vở hơn với lĩnh vực này: Chùa Đàn (đạo diễn Khánh Hoàng), 41 Đóa Hồng (đạo diễn Hồng Vân), Vinh Quang Và Hư Ảo, Tôi Là Ai... Anh không nghĩ mình có đủ tài năng để thực hiện một cuộc lấn sân ngoạn mục, mà chỉ nghĩ là cơ hội để thực hiện một ước mơ từ lâu mình khao khát.\r\n\r\nNăm 2001, Minh Thuận phát hành album Vol 8 \"Tình Phiêu Lãng\" hầu hết là những sáng tác của các nhạc sĩ rất được yêu thích như: Quốc An (ca khúc Tình Phiêu Lãng), Phương Uyên (ca khúc Anh Tôi), Trần Long Ẩn (ca khúc Một Đời Người Một Rừng Cây),... Vẫn là một Minh Thuận luôn kỹ lưỡng chăm chút cho từng bài hát ca từ ý nghĩa không chỉ về đề tài tình yêu đôi lứa mà còn là những bài hát về quê hương (Mây Và Quê Hương Tôi), đề tài xã hội (Anh Tôi), tình yêu đất nước (Một Đời Người Một Rừng Cây).... Chất giọng cũng dầy dặn, có chiều sâu cảm xúc hơn. Và bài hát chủ đề Tình Phiêu Lãng cũng giúp anh góp mặt một thời gian dài trên Bảng xếp hạng Làn Sóng Xanh.\r\n\r\nNăm 2002, anh cho ra đời tiếp album Vol 9 mang tên \"Lời Nguyện Cầu Trong Đêm\" thực hiện chung với Mỹ Tâm, một ca sĩ trẻ. Ít ai nghĩ hai giọng hát này có thể kết hợp cùng nhau, tuy nhiên các ca khúc cả hai song ca cùng nhau có thể nói khá ăn ý như: Lời Nguyện Cầu Trong Đêm, Nay Cô Em Mắt Nhung....cũng tạo hiệu ứng tốt với khán giả.\r\n\r\nCùng năm 2002, Minh Thuận mạnh dạn đầu tư thay đổi phong cách của mình khi thực hiện album Vol 10 \"Người Phương Xa\" do Kim Lợi sản xuất. Bìa album được khá nhiều lời khen vì cách trình bày mới lạ, cùng với những hình ảnh đẹp. Các ca khúc trong album hầu hết là nhạc Hoa, Nhạc Ý do nhạc sĩ Hà Quang Minh viết lời Việt được anh chắc lọc ca từ trong từng bài hát\r\n\r\nNăm 2003, Minh Thuận phát hành bộ album CD - VCD - Karaoke - DVD Người Phương Xa - Gọi Nhau Trong Đêm với những cảnh quay thực hiện ở nước ngoài và một số cảnh đẹp tại Việt Nam. Album còn có sự góp mặt của các ca sỹ Thu Minh, Phương Thanh, Cẩm Ly, Ngô Thanh Vân.... Để thực hiện DVD này và chứng tỏ lòng đam mê với nghề, khi quay MV Gọi Nhau Trong Đêm, Minh Thuận đã bỏ ra rất nhiều tiền để quay dưới nước toàn bộ đồ dùng đắt tiền lúc bấy giờ như giường tủ, máy tính, sofa.... chỉ để phục vụ một lần cho các cảnh quay trong MV. Hơn nữa quá trình quay cũng rất vất vả. Clip chỉ có 5 phút nhưng mất rất nhiều ngày để quay. Khó khăn nhất là việc lặn xuống nước để hát. Trên bờ phải gõ theo nhịp bài hát để dưới nước Minh Thuận hát cho đúng nhịp và đúng ý đồ đạo diễn. Anh đã phải nhịn thở và ngâm mình dưới nước rất lâu để hoàn thành MV này. DVD Người Phương Xa - Gọi Nhau Trong Đêm nhận được nhiều lời khen ngợi của khán giả vì sự đầu tư nghiêm túc cho nghệ thuật của anh.\r\n\r\nCũng trong năm 2003, Minh Thuận thực hiện 1 album rất đặc biệt mang tên \"Ngày Thơ Ấu Đã Xa\". Chủ đề album là một bài hát của nhạc sĩ Quốc Vượng được anh thể hiện khá thành công. Xuyên suốt album là những ca khúc về gia đình, quê hương, tuổi thơ: Chiếc Xích Đu Ngày Thơ, Ngày Thơ Ấu Đã Xa, Bão Lũ,... được hòa âm cùng tiếng đàn mandolin, đàn bầu, sáo, melodica, violon, sax,... đưa người nghe trở về với tuổi thơ với bao kỷ niệm về mái trường, gia đình, bạn bè, chiếc xích đu bên thềm sứ trắng, tiếng trẻ thơ khóc giữa bão lũ tràn về.... Những ca mang đậm nét quê hương được anh thể hiện bằng một hơi thở mới giàu cảm xúc. Bìa trong album là hình ảnh của Minh Thuận từ lúc nhỏ với chiếc đàn guitar và lớn dần theo từng năm tháng bên cạnh gia đình, người thân bạn bè đến những khoảnh khắc vinh quang của sự nghiệp trên sân khấu.\r\n\r\nNăm 2004, Minh Thuận tiếp tục thực hiện một album về một đề tài khá lạ mang tên \"Chiếc Bóng\" với sự đầu tư cao về mỹ thuật cũng như hình ảnh video clip. Album CD-VCD Chiếc Bóng - Khi Nào Em Buồn giới thiệu một Minh Thuận \"vừa cũ vừa mới\".\r\n\r\nCũng trong năm này, Minh Thuận phát hành album \"13 Năm Sau Chàng Trai Bắc Kinh Trở Lại\". Album được thực hiện kỹ càng với hơn 40 bài, thoạt đầu định làm một box set 4 CD sau rút xuống 30 bài vừa đúng 2 CD. Các ca khúc được hoà âm mới, gần với gu nghe nhạc hiện tại hơn. Album gồm những ca khúc rất đỗi quen thuộc với công chúng Việt Nam như Tình Đã Phai, Thất Tình, Uyên Ương Hồ Điệp Mộng, Khi Nào Em Mới Biết, Những Lời Dối Gian, Dù Có Là Người Tình, Tình Đầu Chưa Nguôi, Nụ Hôn Biệt Ly.... Các ca khúc này đã đưa Minh Thuận - Nhật Hào trở thành cặp song ca nam được yêu thích bậc nhất trên các sân khấu ca nhạc lúc bấy giờ. Đồng thời các bài hát cũng được phát hành qua bộ tuyển tập album cassette \"Chàng Trai Beijin\". Các ca khúc trong album được Minh Thuận thu âm lại toàn bộ nhằm kỷ niệm một giai đoạn đẹp của sự nghiệp năm xưa cũng như tri ân đến những khán giả một thời từng yêu thích những ca khúc này và hâm mộ đôi song ca Minh Thuận - Nhật Hào.\r\n\r\nPhần hình ảnh của album này được đánh giá là khá táo bạo trong thời điểm đó. Minh Thuận chia sẻ thêm: \"Từ trước đến giờ có lẽ mọi người cũng đã quen nhìn tôi trên sân khấu với những trang phục và cách thể hiện hơi khác người. Tôi hoàn toàn không có chủ đích là phải tạo ra một sự khác biệt nào cả mà nó bộc phát từ trong tiềm thức của tôi. Khi thực hiện album này, tôi ý thức được điều đó và đã cố tự \"kiềm\" bớt mình, đem những hình ảnh trần vào những trang bên trong album. Tôi công nhận là hình ảnh có hở hang nhưng dung tục thì tuyệt đối không. Đó chỉ đơn giản là những hình ảnh đẹp mà tôi muốn gửi đến mọi người, hơn nữa nó còn có liên hệ về mặt ý nghĩa với 2 bài hát trong album là Ngụ Ngôn Tình Yêu và Tình Yêu Vô Tận\".\r\n\r\nĐến năm 2006, Minh Thuận vẫn thỉnh thoảng xuất hiện trên sân khấu nhưng không ra album mới mà âm thầm chuẩn bị hoạt động kinh doanh và tìm hiểu thêm về diễn xuất để có thể hoạt động song song hai lĩnh vực ca hát và điện ảnh.\r\n\r\nNăm 2007, Minh Thuận tham gia bộ phim Cô Gái Xấu Xí với vai diễn Ninh Lâm (Lâm caro). Vai diễn này của anh đã gây ấn tượng đối với khán giả và rất được yêu thích. Trước khi đảm nhận vai diễn này, Minh Thuận làm giám đốc casting của phim. Anh giúp đạo diễn Minh Chung tìm được những diễn viên phù hợp với từng nhân vật trong phim. Riêng vai Lâm - ban đầu được \"nhắm\" cho 2-3 người khác nhưng đạo diễn không ưng ý. Cuối cùng, đạo diễn Minh Chung gợi ý Minh Thuận thử. Nhìn hình dáng và diễn xuất phù hợp, đạo diễn quyết định chọn anh. Nói về tên Lâm Caro, đạo diễn cho biết: \"Cái tên này do Minh Thuận tạo ra. Vì muốn tạo điểm nhấn cho nhân vật, Thuận đã chọn sở thích màu caro cho Lâm. Mỗi khi Lâm xuất hiện các món đồ đi kèm luôn có màu caro. Vì thế tôi đổi tên Lâm thành Lâm caro\".\r\n\r\nẤn tượng sâu đậm nhất của Minh Chung về đồng nghiệp là sự sáng tạo và đam mê, hết mình với nghề. \"Tôi làm việc với nhiều diễn viên nhưng nói thật hiếm có diễn viên nào chăm chút cho nhân vật như Minh Thuận. Nhìn Thuận nhiệt tình mà thấy thương. Tất cả đạo cụ cho nhân vật anh ấy tự làm, tự mua. Để có những chiếc áo, kính, túi xách và xe màu caro, Minh Thuận không ngại đi khắp nơi tìm kiếm. Riêng cây bút, mắt kính anh tự mua đồ về làm. Chiếc xe đạp, anh mất cả ngày hì hục dán decal. Điều này giọng ca Tình thơ có thể nhờ thiết kế đoàn phim làm nhưng anh muốn tự tay thực hiện\".\r\n\r\nNăm 2008, sau nhiều lần thử vai trò hát tân cổ và trích đoạn cải lương trong các vở như: Sông Quê, Cô Gái Đồ Long... nhận được nhiều sự cổ vũ của khán giả, Minh Thuận đã liều lĩnh đưa nhạc kịch lên sân khấu. Vở cải lương kinh điển Lan và Điệp quy tụ nhiều ca sỹ ngôi sao như: Cẩm Ly, Thu Minh, Phương Thanh, Thanh Thảo, Đàm Vĩnh Hưng... mà anh là người khởi xướng, giám đốc sản xuất kiêm diễn viên chính. Minh Thuận dồn hết tâm huyết để thực hiện vở cải lương này. Anh nỗ lực tập luyện rất nhiều với hy vọng vai diễn Điệp của anh sẽ có sức thuyết phục khán giả, có lẽ chính vì vậy mà diễn xuất của anh khá xúc động và trong từng phân đoạn đều biểu đạt. Ở những đoạn cao trào của vở diễn, Minh Thuận đã khiến nhiều khán giả phải rơi nước mắt.\r\n\r\nVở cải lương đã mang lại cho anh rất nhiều thành công và giải thưởng, từ Top 5 đề cử Mai Vàng ở hạng mục Nghệ sĩ cải lương được yêu thích năm 2008 cho đến Kỷ lục \"Vở ca kịch - cải lương đầu tiên có ca sĩ nhạc nhẹ tham gia diễn xuất nhiều nhất\", \"Kỷ lục \"Nam ca sĩ đầu tiên đóng vai chính trong vở cải lương Chuyện Tình Lan Và Điệp có ca sĩ nhạc nhẹ tham gia nhiều nhất\", Top 5 đề cử Nam nghệ sĩ được yêu thích giải HTV Awards 2009.\r\n\r\nMinh Thuận vào viện chữa tai biến mạch máu não và phát hiện bị ung thư phổi vào ngày 2 tháng 9 năm 2016. Trước đó anh cứ cho mình là bị viêm phổi. Tối 3 tháng 9 năm 2016, anh đã rơi vào trạng thái nguy kịch. Anh đã qua đời vào lúc 8 giờ 57 phút sáng ngày 18 tháng 9 năm 2016 tại bệnh viện Phạm Ngọc Thạch, Thành phố Hồ Chí Minh. Hưởng dương 47 tuổi. Lễ tang của Minh Thuận được tổ chức theo nghi thức Công giáo, với Thánh Lễ an táng tại nhà thờ Tân Dân. Sau đó anh đã được hỏa táng tại nghĩa trang Bình Hưng Hòa. Sau đó, tro cốt của Minh Thuận được mang về an nghỉ tại nhà thờ An Lạc, quận Tân Bình.'),
(6, 'Mỹ Tâm', 'View/images/Singer/MyTam.JPG', 'Phan Thị Mỹ Tâm (sinh ngày 16 tháng 1 năm 1981) là nữ ca sĩ, nhạc sĩ và diễn viên người Việt Nam. Sinh ra tại Đà Nẵng, cô sớm bộc lộ năng khiếu về âm nhạc và liên tiếp giành chiến thắng tại nhiều cuộc thi ca hát lớn nhỏ lúc còn ở độ tuổi thiếu niên. Cô khởi nghiệp ca hát bằng album đầu tay Mãi yêu (2001) và album kế tiếp Đâu chỉ riêng em (2002) không lâu sau khi tốt nghiệp thủ khoa tại trường Nhạc viện Thành phố Hồ Chí Minh. Album phòng thu thứ ba, Yesterday & Now (2003) giúp cô lập kỷ lục về doanh số bán ra tại thị trường trong nước.\r\n\r\nTrong những năm còn lại của thập niên 2000, Mỹ Tâm phát hành một chuỗi các sản phẩm âm nhạc thành công về mặt chuyên môn và thương mại, bao gồm các album đề cử cho giải Cống hiến Hoàng hôn thức giấc (2005), Vút bay (2006), Trở lại (2008). Năm 2004, Mỹ Tâm tổ chức chương trình biểu diễn \"Liveshow Ngày ấy & bây giờ\", có mức kinh phí đầu tư lớn nhất tại Việt Nam lúc đó. Trong thập niên 2010, cô thực hiện chuyến lưu diễn \"Heartbeat\" và phát hành Tâm (2013) và Tâm 9 (2018), liên tiếp gặt hái thành công thương mại. Bên cạnh việc tự sáng tác, cô còn hát các ca khúc của tác giả khác như \"Tóc nâu môi trầm\", \"Họa mi tóc nâu\", \"Ước gì\", \"Hát với dòng sông\", \"Xích lô\" hay \"Cây đàn sinh viên\".\r\n\r\nMỹ Tâm giành được 5 giải Cống hiến, 1 giải Âm nhạc châu Âu của MTV, 11 lần liên tiếp nhận giải \"Ca sĩ được yêu thích nhất\" và 3 năm liên tiếp nhận giải \"Gương mặt của năm\" của Giải thưởng Làn Sóng Xanh. Tại sự kiện Top Asia Corporate Ball 2014 ở Kuala Lumpur, cô thắng giải \"Huyền thoại Âm nhạc châu Á\" và là \"Nghệ sĩ có album bán chạy nhất lãnh thổ\" do Liên đoàn Công nghiệp ghi âm quốc tế (IFPI) công nhận trong năm 2014. Cô xuất hiện trong danh sách \"Top 50 Phụ nữ ảnh hưởng nhất Việt Nam\" (2017) do tạp chí Forbes công bố. Cô còn là ca sĩ Việt Nam đầu tiên có một album lọt vào top 10 Billboard World Album vào tháng 1 năm 2018. Mỹ Tâm còn làm giám khảo cho các cuộc thi như Vietnam Idol: Thần tượng Âm nhạc Việt Nam (2012–13), Sao Mai điểm hẹn (2010), Giọng hát Việt (2015), góp mặt trong phim truyền hình Cho một tình yêu (2010). Năm 2019, cô lần đầu đạo diễn phim điện ảnh Chị trợ lý của anh.\r\n\r\nTừ khi khởi nghiệp bằng album đầu tay vào năm 2001, phong cách âm nhạc của Mỹ Tâm thường được ghi nhận bởi những ảnh hưởng mạnh mẽ của dòng nhạc trẻ. Dù vậy, cô cũng từng tham gia thể nghiệm với nhiều thể loại âm nhạc khác nhau. Nếu như ở Hoàng hôn thức giấc (2005), các sáng tác mang yếu tố của dòng nhạc Trung Đông nổi bật hơn cả, thì âm điệu R&B, dance và hip-hop lại được thể hiện rõ rệt với Vút bay (2006) và Nhịp đập (2008). Ngoài ra, cô cũng từng thử sức với dòng nhạc trữ tình, nhạc Latin, ballad hay pop soul. Phong cách trình diễn của cô được so sánh với Britney Spears và Jennifer Lopez. Về ca từ, các nhạc phẩm mà Mỹ Tâm thể hiện thường mang các chủ đề liên quan đến tình cảm lứa đôi, tình bạn và cuộc sống đời thường. Trang Vietnamplus khẳng định Mỹ Tâm \"đã mở rộng thế giới pop \'mộc mạc\' của mình bằng sự kết hợp và pha trộn nhiều thể loại âm nhạc trẻ trung, thời thượng, hấp dẫn giới trẻ\".\r\n\r\nMỹ Tâm sở hữu chất giọng nữ trung trầm (mezzo alto), với âm vực rộng 3 quãng 8, trải dài từ C#3 đến C6, cùng nốt với giọng ngực cao nhất là E5. Nhà báo Tùng Lâm đánh giá \"Giọng hát điêu luyện, mạnh mẽ và đầy xúc cảm của Mỹ Tâm không chỉ giúp cô có chỗ đứng vững chắc trong làng nhạc Việt, mà còn là cơ sở để người hâm mộ đặt trọn vẹn niềm tin khi cô đại diện cho Việt Nam \'đem chuông đi đánh xứ người\'.\"\r\n\r\nMỹ Tâm còn được công chúng nhìn nhận ở cương vị của một nhạc sĩ. Cô bắt đầu viết nhạc từ khi còn ngồi ở ghế nhà trường tại Đà Nẵng và tiếp tục theo đuổi lối sáng tác chuyên nghiệp từ khi theo học thanh nhạc. Trong khi các nhạc phẩm trước đây của cô như \"Tình mơ\", \"Mãi yêu\" hoặc các bài hát nhạc nước ngoài phổ lời Việt ít nhận được sự chú ý của khán giả, thì sự nghiệp sáng tác của cô chỉ bắt đầu nở rộ kể từ khi Hoàng hôn thức giấc (2005) được ra mắt. Trong bài nhận xét album Tâm (2013) trên tờ Tuổi Trẻ, nhà báo Quỳnh Nguyễn từng nhận định \"Có lẽ Tâm là ngôi sao nhạc pop duy nhất của Việt Nam thể hiện thành công ca khúc của nhiều nhạc sĩ khác nhau nhưng cũng thành công với những sáng tác của chính mình.\" Vân An của VnExpress cho rằng \"Mỹ Tâm có tài dẫn chuyện vừa chân thật, \'tưng tửng\' nhưng lại cuốn hút đến kỳ lạ\" khi \"dẫn dắt khán giả hòa nhịp cùng dòng cảm xúc của mình để họ cảm được bài hát ấy một cách nhẹ nhàng và tự nhiên nhất\".'),
(7, 'Phương Thanh', 'View/images/Singer/PhuongThanh.jpg', 'Phương Thanh (tên thật là Bùi Thị Phương Thanh, có biệt danh là \"Chanh\") là một ca sĩ của Việt Nam, từng giành 1 đề cử giải Cống hiến. Chuyên trị dòng nhạc pop-rock với chất giọng khàn lạ. Cô cũng được biết tới với vai trò là diễn viên trong một số bộ phim điện ảnh.\r\n\r\nCô sinh ngày 27 tháng 4 năm 1973 tại huyện Nông Cống, tỉnh Thanh Hóa. Hiện cô sống và làm việc chủ yếu tại Thành phố Hồ Chí Minh.\r\n\r\nNăm 1997, cùng với sự xuất hiện và phát triển mạnh mẽ của thương hiệu Làn Sóng Xanh, một trong những bảng xếp hạng âm nhạc do Đài tiếng nói Nhân dân Thành phố Hồ Chí Minh thực hiện, nền âm nhạc Việt Nam chứng kiến sự lột xác hoàn toàn cùng sự xuất hiện của dàn sao Thanh Lam, Hồng Nhung, Mỹ Linh ở phía Bắc và Lam Trường, Phương Thanh ở phía Nam.\r\n\r\nSuốt 10 năm, bảng xếp hạng Làn Sóng Xanh luôn có sự góp mặt của Phương Thanh cùng những ca khúc của mình. Đối với Phương Thanh đây là thời gian cô cảm thấy sung sức nhất. Cô tâm sự: \"Tốp ca sĩ Làn sóng xanh đầu tiên như Thanh Lam, Hồng Nhung, Mỹ Linh, Lam Trường,... mỗi người một vẻ, mỗi người một dòng nhạc, không ai giống ai. Vì thế mà mỗi khi bước ra sân khấu, mỗi người cứ việc hát hết sức mình, còn chuyện ai hay hơn ai thì cứ việc dựa vào tiếng vỗ tay của khán giả là biết. Còn thời bây giờ, khi đã có tên tuổi vững vàng, có một lượng fan nhất định rồi, mỗi khi bước ra sân khấu, mình biết ngay là không khí sẽ như thế nào, không còn như lúc trước nữa\".\r\n\r\nNăm 2007, Phương Thanh phát hành album Sang mùa, với ca khúc chủ đề là một sáng tác của đạo diễn Nguyễn Quang Dũng, một trong những người bạn thân thiết của Phương Thanh. Đúng như tên của album, Phương Thanh đã lật cuộc đời mình sang trang mới, một mùa mới với hình ảnh và nét nhạc đằm thắm hơn, nữ tính hơn[4]. Cô chia sẻ: \"Hơn 10 năm đi hát, giọng hát của Phương Thanh gần như chuyên trị những ca khúc buồn. Hát ca khúc buồn riết rồi những giai điệu buồn đó cứ như ám vào đời mình. Đến thời điểm này thì tôi sợ quá rồi, phải Sang mùa thôi\".'),
(8, 'Thanh Thảo', 'View/images/Singer/ThanhThao.jpg', 'Thanh Thảo có tên thật là Phạm Trịnh Phương Thảo (sinh 8 tháng 3 năm 1977 tại Thành phố Hồ Chí Minh) là một nữ ca sĩ nổi tiếng người Việt Nam được khán giả biết đến với biệt danh là \"búp bê\". Nghệ danh \"Thanh Thảo\" do cô chọn để tránh không trùng với nghệ danh của ca sĩ Phương Thảo.Ngoài công việc của một ca sĩ, Thanh Thảo đã từng là chủ tịch HĐQT sáng lập nên công ty tổ chức biểu diễn, quản lý ca sĩ mang tên Music Box Entertainment với một số ca sĩ độc quyền như: Từ Minh Hy (nhưng tạm thời Từ Minh Hy đã giải nghệ do có những mâu thuẫn không thể giải quyết với các thành viên HĐQT), Ngô Kiến Huy, Ngân Khánh, Nam Cường, Justin Nguyễn, Gia Hân, Sa Khang, Nhóm P&P, Thụy Anh,... Hiện nay sau khi xảy ra tranh chấp với 1 thành viên khác trong HĐQT - Thúy Vinh, Tháng 4 năm 2011 Thanh Thảo đã thành lập 1 công ty mới mang tên Thanh Thảo Production hoạt động riêng lẻ. Và sản phẩm BE A STAR là một sản phẩm thuộc công ty Thanh Thảo Production nhằm mục đích tìm ra những nhân tố mới để Thanh Thảo Pro phát triển thành ngôi sao trong làng nhạc đương đại, cũng giống như Ngô Kiến Huy đã từng được phát hiện trong chương trình Vươn tới ngôi sao của công ty Music Box của Thanh Thảo tổ chức.\r\n\r\nNgay từ nhỏ, Thanh Thảo đã có mơ ước được đứng hát trên sân khấu. Những bước chân đầu tiên trong sự nghiệp, Thanh Thảo nhận được sự hỗ trợ hết mình của nhạc sĩ Đức Trí. Sau đó là những tên tuổi Phương Uyên, Lê Quang, Nguyễn Hà...\r\n\r\n1998 Thanh Thảo bắt đầu được biết đến khi đầu quân về Trung tâm băng nhạc Rạng Đông qua sự giới thiệu của ca sĩ Ngọc Sơn. Tuy nhiên phải đến khi Thanh Thảo thể hiện ca khúc \"Ôi tình yêu\" và nhiều ca khúc khác được viết lại lời Việt từ nguyên bản tiếng Thái của nhóm song ca nhạc dance China Dolls, tên tuổi của cô mới được nâng lên một vị trí mới. Liên tiếp sau đó, Thanh Thảo tiếp tục thành công với những ca khúc như \"Khóc cho yêu thương\" được viết lại lời Việt từ nguyên bản tiếng Hàn \"Run to you\" của DJ Doc, Thiên thần bóng đêm viết lại lời Việt từ nguyên bản tiếng Anh Heaven của Groove Coverage.\r\n\r\nThương hiệu \"Búp bê\"\r\nNăm 2002 đánh dấu chặng đường mới của Thanh Thảo với album Búp bê đẹp xinh với ca khúc chủ đề là một sáng tác của Phương Uyên. Không chỉ phát huy được thế mạnh của mình trong dòng nhạc dance, sự thành công của album còn thể hiện với việc khai sinh cho Thanh Thảo hình ảnh mới với thương hiệu \"Búp bê\". Liên tiếp nhiều năm sau đó đến thời điểm hiện tại, hình ảnh này vẫn được tiếp tục duy trì và phát huy: \"Búp bê biết yêu\", \"Búp bê không tình yêu\", \"Búp bê happy\", \"Búp bê con trai\" và \"Búp bê buồn\".'),
(10, 'Tô Chấn Phong', 'View/images/Singer/ToChanPhong.jpg', 'Tô Chấn Phong (sinh năm 1972) là một ca sĩ Người Mỹ gốc Việt, đầu thập niên 90 anh là hiện tượng của làng nhạc hải ngoại, một gương mặt và giọng ca quyến rũ nhiều khán giả trẻ. Anh sinh tại Đà Lạt nhưng lớn lên tại cư xá Thanh Đa - Sài Gòn, vượt biên bằng đường biển năm 1979, sau đó định cư tại California, Hoa Kỳ.\r\n\r\nTô Chấn Phong là con thứ hai trong một gia đình gồm 6 người con tại Sài Gòn. Khi còn nhỏ, anh học Trường Taberd, sau ngày 30 tháng 4 năm 1975, anh về học ở một trường ở Cư Xá Thanh Đa. Anh cùng với bố mẹ và anh chị em vượt biên vào năm 1979, tàu bị cướp nhiều lần trên biển, sau đó gặp một tàu chở dầu vớt và đưa vào một đảo ở Malaysia, sau đó được đưa qua Phillipines, ở đó 11 tháng, trước khi được bảo lãnh đến Florida vào năm 1980. Anh cư ngụ tại đây theo học hết trung học cho tới năm 1986 rồi cùng với gia đình về California học đại học chuyên ngành kế toán, rồi học đến năm thứ 3 ngành kinh doanh.\r\n\r\nTô Chấn Phong đến với ca nhạc một cách tình cờ. Anh chưa từng học nhạc bao giờ, nhưng thỉnh thoảng vẫn tham gia những sinh hoạt văn nghệ sau khi tự học nhạc lý để tập dượt một mình kèn harmonica và guitar. Năm 1990, cuốn video đầu tiên do Tô Chấn Phong và Lưu Huỳnh (người bạn làm đạo diễn điện ảnh) thực hiện và sản xuất ra đời với tựa đề \"Hè 90\". Cũng từ việc thực hiện cuốn video này mà Tô Chấn Phong gặp Khánh Hà. Trong cuốn video này còn có Đức Huy, Thái Thảo... và Trịnh Nam Sơn (chú của anh).\r\n\r\nTheo Phong thì lần đầu tiên anh gặp Khánh Hà là một \"tiếng sét ái tình\". Chỉ chừng một năm sau, hai người chính thức sống chung và đã có với nhau một bé trai tên Tô Chấn Phong Jr., sinh 1996. Hiện tại hai người vẫn sống với nhau hạnh phúc dù Khánh Hà hơn Phong 13 tuổi.\r\n\r\nTô Chấn Phong bắt đầu sự nghiệp ca nhạc khoảng năm 1991, khi ra CD Yêu nhau trong mưa.\r\n\r\nTô Chấn Phong đã thực hiện riêng cho mình được một số CD, không kể góp tiếng trong nhiều CD khác của Trung tâm Khánh Hà. Phong hát nhiều nhạc phẩm Việt Nam như: \"Chìm Vào Lãng Quên, Một Thuở Yêu Người, Kỷ Niệm nào Vội Tan, Con Tim Thật Thà... Riêng nhạc phẩm \"Kỷ Niệm Chiều Mưa\" đã để lại nơi anh nhiều kỷ niệm nhất vì là bài anh hát chung với Khánh Hà lần đầu tiên.\r\n\r\nTô Chấn Phong hát nhẹ nhàng, êm dịu, không quá kỹ thuật và cũng không có ý định phô diễn, cứ thế những cảm xúc lãng đãng len vào lòng người nghe. Năm 2007, anh mới về Việt Nam lần đầu sau 27 năm[1]. Anh hay hát đôi với Lưu Bích, Trịnh Nam Sơn và Khánh Hà.');
INSERT INTO `singer` (`id`, `name`, `image`, `detail`) VALUES
(11, 'Trịnh Nam Sơn', 'View/images/Singer/TrinhNamSon.jpg', 'Nhạc sĩ Trịnh Nam Sơn học sáng tác và hòa nhạc tại Dick Grove School Of Music và tốt nghiệp hạng danh dự vào năm 1986. Nhanh chóng được bạn trẻ trong và ngoài nước yêu thích với giọng hát thật ấm và truyền cảm, Anh đã từng lưu diễn khắp nơi trên đất Mỹ, Đông - Tây Âu, Canada, và đã từng gặp gỡ khán giả Việt Nam trong 2 chương trình Duyên dáng Việt Nam 12 & 13 do Báo Thanh Niên tổ chức.\r\n\r\nThuở nhỏ, Trịnh Nam Sơn hay theo cha đi câu cá chép ở hồ Xuân Hương rồi đem về thả trong chiếc hồ nhỏ trước sân nhà. Gia đình anh nghèo, nhưng anh biết ơn tuổi thơ cơ cực và đẹp đẽ với những buổi sáng thức dậy tràn ngập ánh mặt trời, ngắm những bông hoa păng-xê nở giữa các luống ngô khoai, những cơn mưa bong bóng phập phồng của Đà Lạt... Bởi các ca khúc Tình yêu cho Đà Lạt, Bong bóng mưa đã được chào đời từ chính nỗi hoài niệm về những ký ức đó.\r\n\r\nChặng đường âm nhạc của Trịnh Nam Sơn là một chuỗi dài nghiệt ngã. Ngày đầu đặt chân lên đất Mỹ, vốn liếng âm nhạc của anh chỉ vừa bằng một tay chơi guitar nghiệp dư, thậm chí anh còn phải đánh vần từng giai điệu. Thế rồi anh quyết tâm phải học đến nơi đến chốn về guitar. Anh đăng ký theo học sáng tác tại trường nhạc khí nổi tiếng Dick Grove, Mỹ.\r\n\r\nTừng tham gia các đại hòa tấu ở Mỹ, Trịnh Nam Sơn hy vọng sẽ có mặt trong những chương trình hòa tấu ở VN. Anh nói: \"Tôi rất mong được làm những đêm nhạc hòa tấu kết hợp nửa cổ điển, nửa hiện đại tại VN. Bước đầu có thể hơi gian nan nhưng nó sẽ mang lại màu sắc mới phong phú cho âm nhạc.\r\n\r\nHiện anh là người chuyên viết nhạc nền cho phim quảng cáo, phim truyện, sáng tác nhạc không lời và có thêm nghề phụ là lập trình tin học. Con gái 21 tuổi của anh đang theo học ngành báo chí.\r\n\r\nNgoài ca nhạc, Trịnh Nam Sơn hiện là lập trình viên cho một số hãng phim và thỉnh thoảng viết nhạc cho một số phim tài liệu cùng một số nhạc nền cho phim.\r\n\r\nDĩ vãng là tác phẩm đầu tay của Trịnh Nam Sơn. Ban đầu đây là tác phẩm nhạc khí anh viết khi đang theo học về khí nhạc và chỉ huy dàn nhạc tại trường Dick Grove School of Music ở Hollywood. Tính đến nay, anh đã viết mấy chục bản khí nhạc và hai bản nhạc phim tài liệu.\r\n\r\nSau này, khi muốn phổ biến Dĩ vãng, Trịnh Nam Sơn đã nhờ mấy người bạn là nhà thơ viết giúp cho phần lời, nhưng họ nói không có thời gian. Anh đành tự viết lời Việt. Sau đó, anh nhờ đạo diễn Lưu Huỳnh, lúc đó cũng học cùng trường với Trịnh Nam Sơn, nhưng học về đạo diễn làm giúp một video ca nhạc.\r\n\r\nLúc gửi gắm tác phẩm của mình cho Lưu Huỳnh, anh cũng chưa nghĩ là mình sẽ hát, mà định mời ca sỹ. Khổ nỗi, lúc đó, người ta chưa biết đến Trịnh Nam Sơn là ai, nên anh mời hết người nọ, đến người kia đều bị từ chối. Thế là, anh quyết định tự hát.\r\n\r\nKhông những thế, anh còn tự đánh ghi ta, đệm đàn piano và thổi kèn saxophone cho bài hát của mình. Với sự nhiệt tình giúp đỡ của Lưu Huỳnh, album đã được quay khá công phu. Dĩ vãng được thu vào băng nhựa VHS là công nghệ mới nhất thời đó.\r\n\r\nKhi quay xong, Trịnh Nam Sơn cũng chưa nghĩ đến chuyện lỗ lãi. Chỉ đơn giản nghĩ rằng, làm thế nào để giới thiệu album này tới nhiều người. Hồi đó, chưa có nhiều phương tiện quảng bá như bây giờ.\r\n\r\nTrịnh Nam Sơn đã đi gõ cửa hết trung tâm sản xuất băng đĩa này, đến trung tâm sản xuất băng đĩa kia của cộng đồng người Việt tại Hải ngoại, nhưng đều nhận được những cái lắc đầu. Không nản chí, anh quyết định tự đi phát hành. Anh thiết kế poster đĩa nhạc của mình rồi đi dán khắp nơi.\r\n\r\nRồi Dĩ vãng cũng được ra mắt, tại một quán café. Đến giờ, Trịnh Nam Sơn vẫn còn nhớ mãi ngày đó. Anh thuê một quán café nhỏ, thuê dàn âm thanh xịn và đến đó trình diễn. Anh kể, khán giả có mặt ở đây rất ấn tượng, nhưng rồi, cái tên Trịnh Nam Sơn và Dĩ vãng vẫn nhạt nhòa với số đông.\r\n\r\nThời đó, quảng cáo hữu hiệu nhất là tới tiệm bán máy video, cho họ mượn băng để thử máy. Những người đi mua đầu video thấy lạ với một clip ca nhạc có hình ảnh chất lượng cao hơn rất nhiều so với băng video thông thường.\r\n\r\nVà mọi người bắt đầu để ý tới nhạc của Trịnh Nam Sơn. Cuối cùng, trời không phụ lòng người, hãng thu thanh Khánh Hà đã mua bản quyền và sản xuất đĩa nhạc, nhờ đó mà Dĩ vãng được đưa đến công chúng.\r\n\r\nSau này, Trịnh Nam Sơn và Khánh Hà thường xuyên hợp tác với nhau. Khánh Hà cũng thường xuyên hát bài của Trịnh Nam Sơn trong nhiều năm ở hải ngoại. Năm 91, Trịnh Nam Sơn tiếp tục ra đĩa nhạc Về đây em rất được yêu chuộng tại hải ngoại và tới cuối năm 91 là Con đường màu xanh.\r\n\r\nKhoảng 94, khi nhạc Việt Nam bắt đầu bị cạnh tranh bởi nhạc Hoa lời Việt, nhạc Âu Mỹ lời dịch, Trịnh Nam Sơn chuyển sang làm tư vấn bất động sản và chỉ còn “dạo chơi trong vườn hoa âm nhạc”.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `song`
--

DROP TABLE IF EXISTS `song`;
CREATE TABLE IF NOT EXISTS `song` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namesong` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `composer_id` int(11) NOT NULL,
  `singer_id` int(11) NOT NULL,
  `link` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Singer_Id` (`singer_id`),
  KEY `Composer_Id` (`composer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `song`
--

INSERT INTO `song` (`id`, `namesong`, `composer_id`, `singer_id`, `link`) VALUES
(3, 'Cho tình mãi xa', 10, 1, '2Ii_NpKal8U'),
(4, 'Bóng dáng thiên thần', 6, 1, 'UhG6aIo-QgM'),
(5, 'Bóng biển', 8, 1, '-B1pQT9upic'),
(6, 'Còn lại một mình', 6, 1, 'hLl8OfV2z0k'),
(7, 'Kiếp ve sầu', 1, 1, 'ccCig7MGs_g'),
(8, 'Mãi là niềm đau', 7, 1, 'yiuDUHSEoXY'),
(9, 'Mưa buồn', 4, 1, 't0fQEEZ5usk'),
(10, 'Katy Katy', 3, 2, 'fPgAKkz9FC4'),
(11, 'Tình thôi xót xa', 1, 2, '1IvcTNRlaNA'),
(12, 'Gót hồng', 2, 2, 'cu24COn7wfQ'),
(13, 'Xin được là tình cuối', 8, 3, 'IASkylWIigg'),
(14, 'Một ngày mùa đông', 1, 4, '9Gg_UU36d4U'),
(15, 'Nỗi đau ngọt ngào', 8, 5, 'aJ7eivfOcko'),
(16, 'Một thời đã xa', 11, 7, 'P2Q1qeWbfwg'),
(17, 'Tình xa khuất', 11, 7, 'ILZeCE2YMUc'),
(18, 'Ta chẳng còn ai', 3, 7, '6NDR_F5HZIw'),
(19, 'Ta chẳng còn ai', 3, 8, 'v5H8FZ18cIA'),
(20, 'Có quên được đâu', 3, 8, 'Jk_GQfl9NbI'),
(21, 'Khi giấc mơ về', 3, 7, 'Tgj5jL6CC9o'),
(23, 'Bản tình ca cho em', 5, 4, '8Jhrgr4DeSU'),
(24, 'Mãi mãi một tình yêu', 4, 1, 'zpM7j8CIhAk'),
(25, 'Tình Khúc Vàng', 4, 1, 'IPu2k259W6U'),
(26, 'Người về cuối phố', 7, 3, 'JI-46CMYeJ8'),
(27, 'Bờ bến lạ', 7, 3, 'I1wb-B_giWA'),
(28, 'Đường xưa', 8, 10, 'WbGndV5fjR0'),
(30, 'Dĩ vãng', 12, 11, 'RbsQ5sZPuCc'),
(31, 'Con đường màu xanh', 12, 11, 'Txzah3uMrNQ'),
(32, 'Nhớ', 12, 11, 'mdWQwhzoJ4U'),
(33, 'Nuối tiếc', 12, 11, 'TwnWr6951fs'),
(34, 'Hát với dòng sông', 13, 6, 'SrOzK8_fXB4'),
(35, 'Mùa hè yêu thương', 13, 6, '-6878qytEiE'),
(36, 'Tình phiêu lãng', 13, 5, 'vdhl3CIN2oI'),
(37, 'Mẹ tôi', 13, 1, '1A29RPrmmkU'),
(38, 'Cây đàn sinh viên', 13, 6, 'n2y3DnBfxK8');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `top_month`
--

DROP TABLE IF EXISTS `top_month`;
CREATE TABLE IF NOT EXISTS `top_month` (
  `top` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`top`,`song_id`),
  KEY `Song_Id` (`song_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `top_month`
--

INSERT INTO `top_month` (`top`, `song_id`) VALUES
(1, 6),
(2, 16),
(3, 28),
(4, 11),
(5, 19),
(6, 15),
(7, 26),
(8, 9),
(9, 31),
(10, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `top_week`
--

DROP TABLE IF EXISTS `top_week`;
CREATE TABLE IF NOT EXISTS `top_week` (
  `top` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  PRIMARY KEY (`top`,`song_id`),
  KEY `Song_Id` (`song_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `top_week`
--

INSERT INTO `top_week` (`top`, `song_id`) VALUES
(1, 6),
(2, 11),
(3, 16),
(4, 28),
(5, 31),
(6, 9),
(7, 19),
(8, 38),
(9, 37),
(10, 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vote_song`
--

DROP TABLE IF EXISTS `vote_song`;
CREATE TABLE IF NOT EXISTS `vote_song` (
  `song_id` int(11) NOT NULL,
  `stars` int(11) NOT NULL,
  `point` float NOT NULL,
  PRIMARY KEY (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `vote_song`
--

INSERT INTO `vote_song` (`song_id`, `stars`, `point`) VALUES
(3, 4, 4.57143),
(4, 4, 4.28571),
(5, 3, 3.42857),
(6, 4, 4.95238),
(7, 4, 4.38095),
(8, 3, 3.33333),
(9, 4, 4.61905),
(10, 4, 4.14286),
(11, 4, 4.66667),
(12, 3, 3.7619),
(13, 4, 4.04762),
(14, 3, 3.57143),
(15, 4, 4.66667),
(16, 4, 4.80952),
(17, 3, 3.19048),
(18, 3, 3),
(19, 4, 4.66667),
(20, 4, 4.33333),
(21, 4, 4.2381),
(23, 3, 3.19048),
(24, 3, 3.09524),
(25, 3, 3.95),
(26, 4, 4.61905),
(27, 3, 3.7619),
(28, 4, 4.71429),
(30, 3, 3.61905),
(31, 4, 4.61905),
(32, 4, 4.38095),
(33, 4, 4.09524),
(34, 4, 4.47619),
(35, 4, 4.47619),
(36, 3, 3.28571),
(37, 3, 3.95238),
(38, 4, 4.04762);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account_detail`
--
ALTER TABLE `account_detail`
  ADD CONSTRAINT `Account_Detail_ibfk_1` FOREIGN KEY (`username_id`) REFERENCES `account` (`username`);

--
-- Các ràng buộc cho bảng `history_vote`
--
ALTER TABLE `history_vote`
  ADD CONSTRAINT `history_vote_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `song` (`id`),
  ADD CONSTRAINT `history_vote_ibfk_2` FOREIGN KEY (`username_id`) REFERENCES `account` (`username`);

--
-- Các ràng buộc cho bảng `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`username_id`) REFERENCES `account` (`username`);

--
-- Các ràng buộc cho bảng `playlist_detail`
--
ALTER TABLE `playlist_detail`
  ADD CONSTRAINT `playlist_detail_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `song` (`id`),
  ADD CONSTRAINT `playlist_detail_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`);

--
-- Các ràng buộc cho bảng `song`
--
ALTER TABLE `song`
  ADD CONSTRAINT `song_ibfk_1` FOREIGN KEY (`singer_id`) REFERENCES `singer` (`id`),
  ADD CONSTRAINT `song_ibfk_2` FOREIGN KEY (`composer_id`) REFERENCES `composer` (`id`);

--
-- Các ràng buộc cho bảng `vote_song`
--
ALTER TABLE `vote_song`
  ADD CONSTRAINT `vote_song_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `song` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
