-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.38-MariaDB


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema db_ujianonline2
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ db_ujianonline2;
USE db_ujianonline2;

--
-- Table structure for table `db_ujianonline2`.`modul`
--

DROP TABLE IF EXISTS `modul`;
CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL AUTO_INCREMENT,
  `isi_modul` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_ujianonline2`.`modul`
--

/*!40000 ALTER TABLE `modul` DISABLE KEYS */;
INSERT INTO `modul` (`id_modul`,`isi_modul`,`gambar`) VALUES 
 (1,'<p>Halaman web yang Anda saksikan ini adalah sebuah aplikasi untuk \r\npengerjaan ujian secara online. Sistem ini hanya bisa diakses ketika \r\nAnda telah melakukan LOGIN. LOGIN ditandai dengan pengisian ID peserta \r\ndan password pada sebuah kotak login yang telah ditentukan. Ringkasnya \r\nhanya peserta yang telah terdaftar yang bisa mengikuti ujian online ini.</p>\r\n		<br><p>Jika Anda telah sukses dalam proses login, anda bisa mengisi \r\njawaban dalam setiap tes atau soal yang ada. Tapi jangan lupa baca \r\ndengan seksama beberapa peraturan yang harus Anda taati dan setujui \r\nsebelum pengerjaan soal. Pengerjaan soal-soal ujian online ini dibatasi \r\ndengan waktu ... Lho koq bisa. (Ya...bisa). Jadi Anda perhatikan dengan \r\nbaik soal-soal Anda, jawab dengan sejujurnya, dan jangan lupa perhatikan\r\n sisa waktu Anda mengerjakan. Kerjakan soal yang mudah-mudah lewati \r\nsoal-soal yang Anda anggap sulit. Karena soal yang sudah dikerjakan bisa\r\n dibenarkan atau diedit atau diulangi kembali, dengan catatan Anda masih\r\n punya sisa waktu yang cukup untuk mengerjakan.Jangan terburu-buru \r\nmengerjakannya, usahakan manfaatkan waktu Anda sebaik-baiknya.</p>\r\n		<br><p>Setelah Anda selesai mengerjakan.... Anda bisa melihat langsung\r\n jawaban Anda (Asyik donk ...). Yang jelas jangan berdebar-debar. Apapun\r\n hasilnya itulah kemampuan Anda. Oleh sebab itu bertindaklah yang jujur.</p>','kartun-computer.jpg'),
 (2,'<!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>IN</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:DontVertAlignCellWithSp/>\r\n   <w:DontBreakConstrainedForcedTables/>\r\n   <w:DontVertAlignInTxbx/>\r\n   <w:Word11KerningPairs/>\r\n   <w:CachedColBalance/>\r\n  </w:Compatibility>\r\n  <m:mathPr>\r\n   <m:mathFont m:val=\"Cambria Math\"/>\r\n   <m:brkBin m:val=\"before\"/>\r\n   <m:brkBinSub m:val=\"--\"/>\r\n   <m:smallFrac m:val=\"off\"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val=\"0\"/>\r\n   <m:rMargin m:val=\"0\"/>\r\n   <m:defJc m:val=\"centerGroup\"/>\r\n   <m:wrapIndent m:val=\"1440\"/>\r\n   <m:intLim m:val=\"subSup\"/>\r\n   <m:naryLim m:val=\"undOvr\"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"true\"\r\n  DefSemiHidden=\"true\" DefQFormat=\"false\" DefPriority=\"99\"\r\n  LatentStyleCount=\"267\">\r\n  <w:LsdException Locked=\"false\" Priority=\"0\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Normal\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"heading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 7\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 8\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 9\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"35\" QFormat=\"true\" Name=\"caption\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"10\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" Name=\"Default Paragraph Font\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"11\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtitle\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"22\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Strong\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"20\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"59\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Table Grid\"/>\r\n  <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Placeholder Text\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"No Spacing\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Revision\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"34\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"List Paragraph\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"29\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"30\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Quote\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 1\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 2\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 3\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 4\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 5\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Dark List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 6\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"19\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"21\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Emphasis\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"31\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"32\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Reference\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"33\" SemiHidden=\"false\"\r\n   UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Book Title\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"37\" Name=\"Bibliography\"/>\r\n  <w:LsdException Locked=\"false\" Priority=\"39\" QFormat=\"true\" Name=\"TOC Heading\"/>\r\n </w:LatentStyles>\r\n</xml><![endif]--><!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin-top:0cm;\r\n	mso-para-margin-right:0cm;\r\n	mso-para-margin-bottom:10.0pt;\r\n	mso-para-margin-left:0cm;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Calibri\",\"sans-serif\";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:\"Times New Roman\";\r\n	mso-fareast-theme-font:minor-fareast;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;\r\n	mso-bidi-font-family:\"Times New Roman\";\r\n	mso-bidi-theme-font:minor-bidi;}\r\n</style>\r\n<![endif]-->\r\n\r\n<h1 class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;text-indent:1.0cm;line-height:200%\" align=\"left\"><span style=\"font-size:12.0pt;\r\nline-height:200%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"><font face=\"comic sans ms\" size=\"3\" color=\"#0000FF\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AKADEMI MANAJEMEN INFORMATIKA AMIK SELATPANKANG</font></span><span style=\"font-size:12.0pt;\r\nline-height:200%;font-family:\" times=\"\" new=\"\" roman\",\"serif\"\"=\"\"></span></h1><p class=\"MsoNormal\" style=\"margin-bottom:12.0pt;text-align:center;\r\nline-height:normal\" align=\"center\"><b><span style=\"font-size:9.0pt;font-family:\" verdana\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:\"times=\"\" roman\";=\"\" mso-fareast-language:in\"=\"\">Visi Perguruan Tinggi :</span></b><b><span style=\"font-size:9.0pt;mso-bidi-font-size:11.0pt;font-family:\" verdana\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:\"times=\"\" roman\";=\"\" mso-fareast-language:in\"=\"\">&nbsp;</span></b><span style=\"font-size:9.0pt;\r\nfont-family:\" verdana\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-fareast-language:in\"=\"\"></span><br><span style=\"font-size:9.0pt;\r\nfont-family:\" verdana\",\"sans-serif\";mso-fareast-font-family:\"times=\"\" new=\"\" roman\";=\"\" mso-bidi-font-family:\"times=\"\" roman\";mso-fareast-language:in\"=\"\">\r\nMENCERDASKAN BANGSA DENGAN TEKNOLOGI INFORMASI</span><span style=\"font-size:\r\n9.0pt;mso-bidi-font-size:11.0pt;font-family:\" verdana\",\"sans-serif\";mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:\"times=\"\" roman\";mso-fareast-language:=\"\" in\"=\"\">&nbsp;</span><span style=\"font-size:9.0pt;font-family:\" verdana\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:\"times=\"\" roman\";=\"\" mso-fareast-language:in\"=\"\"></span><br><span style=\"font-size:9.0pt;font-family:\" verdana\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:\"times=\"\" roman\";=\"\" mso-fareast-language:in\"=\"\"></span><span style=\"font-size:9.0pt;font-family:\" verdana\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:\"times=\"\" roman\";=\"\" mso-fareast-language:in\"=\"\">\r\n<br>\r\n<b>Misi Perguruan Tinggi :</b></span><b><span style=\"font-size:9.0pt;\r\nmso-bidi-font-size:11.0pt;font-family:\" verdana\",\"sans-serif\";mso-fareast-font-family:=\"\" \"times=\"\" new=\"\" roman\";mso-bidi-font-family:\"times=\"\" roman\";mso-fareast-language:=\"\" in\"=\"\">&nbsp;</span></b><span style=\"font-size:9.0pt;font-family:\" verdana\",\"sans-serif\";=\"\" mso-fareast-font-family:\"times=\"\" new=\"\" roman\";mso-bidi-font-family:\"times=\"\" roman\";=\"\" mso-fareast-language:in\"=\"\"><br>\r\nMenyelenggarakan pendidikan berbasis teknologi informasi Memberikan kesempatan\r\nbelajar dan beasiswa kepada yang berprestasi Memberdayakan dan meningkatkan\r\nsumber daya yang dimiliki Menciptakan atmosfir akademik yang sehat dan\r\nberwawasan Mengembangkan budaya akademik secara berkelanjutan Menghasilkan\r\nlulusan yang terampil dan mampu berkompetisi Melakukan penelitian dan\r\npengembangan dibidang teknologi informasi Menjalin kerjasama baik dengan\r\npemerintah maupun swasta sebagai mitra kerja.</span></p>\r\n\r\n<p>\r\n&nbsp;\r\n</p>\r\n<p>\r\n</p>\r\n','kampu amik.jpg');
INSERT INTO `modul` (`id_modul`,`isi_modul`,`gambar`) VALUES 
 (3,'<ol><li>Bacalah dengan teliti tiap-tiap soal sebelum menjawab</li><li>Pengerjaan\r\n Soal-soal tes akan diberikan batasan waktu, apabila waktu telah \r\nhabis, anda tidak dapat lagi mengisi / mengoreksi kembali jawaban dari \r\nsoal-soal yang tersedia. Begitu pula sebaliknya apabila waktu yang \r\ntersedia masih ada maka anda dapat secara bebas mengoreksi kembali \r\njawaban-jawaban anda . <br></li><li>Skor atau nilai hanya akan ditampilkan saja tanpa adanya sertifikasi nilai untuk di download.</li></ol>','logo_sarolangun.png');
/*!40000 ALTER TABLE `modul` ENABLE KEYS */;


--
-- Table structure for table `db_ujianonline2`.`t_soal`
--

DROP TABLE IF EXISTS `t_soal`;
CREATE TABLE `t_soal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topik` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_ujianonline2`.`t_soal`
--

/*!40000 ALTER TABLE `t_soal` DISABLE KEYS */;
INSERT INTO `t_soal` (`id`,`topik`) VALUES 
 (1,'PHP dasar'),
 (2,'php'),
 (3,'HTML'),
 (4,'CSS'),
 (12,'Laravel'),
 (19,'Kriptografi'),
 (21,'OOP'),
 (22,'CSS_2'),
 (24,'mysqldasar'),
 (25,'web');
/*!40000 ALTER TABLE `t_soal` ENABLE KEYS */;


--
-- Table structure for table `db_ujianonline2`.`tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE `tbl_admin` (
  `id_admin` int(3) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_ujianonline2`.`tbl_admin`
--

/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` (`id_admin`,`username`,`password`) VALUES 
 (1,'admin','21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;


--
-- Table structure for table `db_ujianonline2`.`tbl_materi`
--

DROP TABLE IF EXISTS `tbl_materi`;
CREATE TABLE `tbl_materi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topik` varchar(255) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `materi` longtext,
  `video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_ujianonline2`.`tbl_materi`
--

/*!40000 ALTER TABLE `tbl_materi` DISABLE KEYS */;
INSERT INTO `tbl_materi` (`id`,`topik`,`deskripsi`,`materi`,`video`) VALUES 
 (4,'php','Belajar Dasar PHP','<h3 align=\"justify\">Pengertian PHP</h3>\r\n<p align=\"justify\"><b>PHP</b> adalah <em>bahasa pemrograman script server-side yang \r\ndidesain untuk pengembangan web. Selain itu, PHP juga bisa digunakan \r\nsebagai bahasa pemrograman umum</em> (<a title=\"PHP - Wikipedia\" href=\"http://en.wikipedia.org/wiki/PHP\" target=\"_blank\" rel=\"noopener noreferrer\">wikipedia</a>). PHP di kembangkan pada tahun 1995 oleh <b>Rasmus Lerdorf</b>, dan sekarang dikelola oleh <b>The PHP Group</b>. Situs resmi PHP beralamat di <a title=\"Situs Resmi PHP\" href=\"http://www.php.net\" target=\"_blank\" rel=\"noopener noreferrer\">http://www.php.net</a>.</p>\r\n<p align=\"justify\">PHP disebut bahasa pemrograman <strong>server side</strong> karena \r\nPHP diproses pada komputer server. Hal ini berbeda dibandingkan dengan \r\nbahasa pemrograman client-side seperti JavaScript yang diproses pada web\r\n browser (client).</p>\r\n<p align=\"justify\">Pada awalnya <b>PHP</b> merupakan singkatan dari <em><b>Personal Home Page.</b> </em>Sesuai\r\n dengan namanya, PHP digunakan untuk membuat website pribadi. Dalam \r\nbeberapa tahun perkembangannya, PHP menjelma menjadi bahasa pemrograman \r\nweb yang powerful dan tidak hanya digunakan untuk membuat halaman web \r\nsederhana, tetapi juga website populer yang digunakan oleh jutaan orang \r\nseperti wikipedia, wordpress, joomla, dll.</p>\r\n<p align=\"justify\">Saat ini PHP adalah singkatan dari <strong>PHP: Hypertext Preprocessor</strong>, sebuah kepanjangan <i>rekursif</i>, yakni permainan kata dimana kepanjangannya terdiri dari singkatan itu sendiri: <strong>P</strong>HP<strong>: H</strong>ypertex<strong>t P</strong>reprocessor.</p>\r\n<p align=\"justify\">PHP dapat digunakan dengan gratis (free) dan bersifat <em>Open Source</em>. PHP dirilis dalam lisensi <em>PHP License</em><b>,</b> sedikit berbeda dengan lisensi <em>GNU General Public License (GPL)</em> yang biasa digunakan untuk proyek <em>Open Source</em>.</p>\r\n<p align=\"justify\">Kemudahan dan kepopuleran <b>PHP</b> sudah menjadi standar bagi programmer web di seluruh dunia. Menurut <a href=\"http://en.wikipedia.org/wiki/PHP#Use\" target=\"_blank\" rel=\"noopener noreferrer\">wikipedia </a>pada februari 2014, sekitar 82% dari web server di dunia menggunakan PHP. PHP juga menjadi dasar dari <em>aplikasi CMS (Content Management System)</em> populer seperti <em>Joomla, Drupal, </em>dan<em> WordPress.</em></p><p align=\"justify\"><em>Sekian dan terimakasih..<br></em></p>',''),
 (18,'HTML','HTML dasar','<img src=\"https://www.duniailkom.com/wp-content/uploads/2015/11/HTML-featured-duniailkom.png\" alt=\"gambar html\" align=\"none\"><div class=\"mb-5 pb-3\"><a href=\"https://www.codepolitan.com/interactive-coding/html\"><strong>HTML </strong></a>adalah kependekan dari <em>Hyper Text Markup Language</em>,\r\n yaitu sebuah bahasa markup yang digunakan untuk membuat sebuah halaman \r\nweb. Si HTML inilah yang menyusun sebuah halaman web menjadi sebagaimana\r\n yang kita lihat melalui <em>browser</em> (penjelajah internet). So, \r\nbelajar HTML dan mengerti bagaimana cara HTML bekerja akan sangat \r\npenting jika kamu ingin terjun ke dunia <em>web development</em>.\r\n</div><div align=\"justify\"><p>Sebenernya ketika bekerja dalam menampilkan dan menyusun sebuah \r\nhalaman web si HTML ini nggak sendiri, dia juga dibantu oleh \r\nteman-temannya yang lain yaitu si CSS dan si JavaScript. Si HTML sendiri\r\n bertugas menyusun kerangka halaman web, si CSS yang akan merapihkan dan\r\n memperindah tampilan halaman web, sedangkan si JavaScript-lah yang \r\nbertugas membuat halaman web menjadi lebih interaktif. Pada kesempatan \r\nyang lain kita akan coba membahas CSS dan JavaScript, tapi untuk kali \r\nini marilah kita buat si HTML menjadi tokoh utama :D</p><p>jjhlhl<br></p></div>','https://www.youtube.com/watch?v=I049jFnOdRA');
INSERT INTO `tbl_materi` (`id`,`topik`,`deskripsi`,`materi`,`video`) VALUES 
 (22,'CSS','CSS dasar','<h3 align=\"center\">Pengertian CSS</h3>\r\n<p align=\"justify\">Dalam bahasa bakunya, seperti di kutip dari <a href=\"http://en.wikipedia.org/wiki/Cascading_Style_Sheets\">wikipedia</a>, <b>CSS</b> <strong>adalah</strong> â€œ<i>kumpulan kode yang digunakan untuk mendefenisikan desain dari bahasa markupâ€ , </i>dimana bahasa markup ini&nbsp;salah satunya adalah <strong>HTML</strong>.</p>\r\n<p align=\"justify\">Untuk pengertian bebasnya, <strong>CSS adalah</strong> kumpulan kode \r\nprogram yang digunakan untuk mendesain atau mempercantik tampilan \r\nhalaman HTML. Dengan CSS kita bisa mengubah desain dari text, warna, \r\ngambar dan latar belakang dari (hampir) semua kode <b>tag HTML</b>.</p>\r\n<p align=\"justify\"><b>CSS</b> biasanya selalu dikaitkan dengan HTML, karena keduanya memang saling melengkapi. HTML ditujukan untuk membuat <b>struktur</b>, atau konten dari halaman web. Sedangkan CSS digunakan untuk <b>tampilan</b> dari halaman web tersebut. Istilahnya, â€œ<i>HTML for content, CSS for Presentationâ€</i>....</p>','CleFk3BZB3g'),
 (31,'Laravel','Laravel8','<br>','');
INSERT INTO `tbl_materi` (`id`,`topik`,`deskripsi`,`materi`,`video`) VALUES 
 (32,'Kriptografi','Algoritma RSA','RSa adalah<br>','https://www.youtube.com/watch?v=Q1xJdoHrTj4'),
 (33,'CSS_2','Belajar CSS Part 2','aaaa<br>',''),
 (35,'mysqldasar','Perintah mysql select','<p>SQL (Structured Query Language) adalah bahasa yang di gunakan dalam \r\npemrograman dan di rancang untuk mengelola data yang tersimpan dalam \r\nSistem Manajemen&nbsp;<a href=\"https://dosenit.com/kuliah-it/database/database-relasional\">Database Relasional</a>&nbsp;(<em>Relational Database Management System</em>, RDBMS), atau untuk <em>stream processing</em> dalam Relational Data Stream Management System (RDSMS).</p><div class=\"code-block code-block-2\" style=\"margin: 8px auto; text-align: center; display: block; clear: both;\">\r\n\r\n</div>\r\n\r\n<p>Salah satu dari&nbsp;<a href=\"https://dosenit.com/kuliah-it/database/fungsi-database\">fungsi database</a>&nbsp;adalah\r\n menyimpan dan memelihara serta mengelola data, oleh karena itu penting \r\nbagi kita untuk mengetahui perintah dasar SQL yang dapat di gunakan \r\nuntuk&nbsp;menyimpan dan memelihara serta mengelola data dalam database \r\ntersebut baik secara langsung&nbsp;maupun menggunakan&nbsp;<a href=\"https://dosenit.com/kuliah-it/pemrograman/macam-macam-bahasa-pemrograman\">macam-macam bahasa pemrograman</a>.</p>\r\n<p><strong>1. Perintah SELECT</strong></p>\r\n<p>Perintah SELECT merupakan perintah dasar SQL yang di gunakan untuk \r\nmemilih data dari database. Data yang di kembalikan di simpan dalam \r\ntabel yang di sebut result-set.</p>\r\n<p>[tabs]<br>\r\n[tab title=â€Sintaksâ€]</p><div class=\"code-block code-block-3\" style=\"margin: 8px auto; text-align: center; display: block; clear: both;\">\r\n\r\n</div>\r\n\r\n<pre>SELECT kolom1, kolom2, ... FROM nama_tabel;</pre>\r\n<p>atau</p>\r\n<pre>SELECT * FROM nama_tabel;</pre>\r\n<p>[/tab]<br>\r\n[tab title=â€Contohâ€]</p>\r\n<pre>SELECT nis, nama, alamat FROM siswa;</pre>\r\n<p>atau</p>\r\n<pre>SELECT * FROM siswa;</pre>\r\n<p>[/tab]<br>\r\n[/tabs]</p><div class=\"code-block code-block-4\" style=\"margin: 8px auto; text-align: center; display: block; clear: both;\">\r\n\r\n</div>\r\n\r\n<p>Perintah pertama di atas di gunakan untuk menyeleksi kolom NIS, NAMA,\r\n dan ALAMAT dari tabel SISWA. sedangkan perintah kedua di gunakan untuk \r\nmenyeleksi semua kolim dari tabel SISWA.</p>','https://www.youtube.com/watch?v=OtEkdeDmMFw');
/*!40000 ALTER TABLE `tbl_materi` ENABLE KEYS */;


--
-- Table structure for table `db_ujianonline2`.`tbl_nilai`
--

DROP TABLE IF EXISTS `tbl_nilai`;
CREATE TABLE `tbl_nilai` (
  `id_nilai` int(7) NOT NULL AUTO_INCREMENT,
  `id_user` int(5) NOT NULL,
  `benar` varchar(20) NOT NULL,
  `salah` varchar(20) NOT NULL,
  `kosong` varchar(20) NOT NULL,
  `score` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_ujianonline2`.`tbl_nilai`
--

/*!40000 ALTER TABLE `tbl_nilai` DISABLE KEYS */;
INSERT INTO `tbl_nilai` (`id_nilai`,`id_user`,`benar`,`salah`,`kosong`,`score`,`tanggal`,`keterangan`) VALUES 
 (18,62,'1','0','4','3.6','2019-11-18','Tidak Lulus'),
 (15,0,'1','0','27','3.6','2019-11-13','Tidak Lulus'),
 (19,67,'1','1','3','3.6','2019-11-18','Tidak Lulus'),
 (20,72,'1','0','0','3.2','2019-11-18','Tidak Lulus'),
 (21,73,'0','0','5','0.0','2019-11-20','Tidak Lulus'),
 (22,75,'0','0','2','0.0','2019-11-21','Tidak Lulus'),
 (23,74,'0','0','2','0.0','2019-11-21','Tidak Lulus');
/*!40000 ALTER TABLE `tbl_nilai` ENABLE KEYS */;


--
-- Table structure for table `db_ujianonline2`.`tbl_pengaturan_ujian`
--

DROP TABLE IF EXISTS `tbl_pengaturan_ujian`;
CREATE TABLE `tbl_pengaturan_ujian` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nama_ujian` varchar(20) NOT NULL,
  `waktu` varchar(20) NOT NULL,
  `nilai_min` varchar(20) NOT NULL,
  `peraturan` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_ujianonline2`.`tbl_pengaturan_ujian`
--

/*!40000 ALTER TABLE `tbl_pengaturan_ujian` DISABLE KEYS */;
INSERT INTO `tbl_pengaturan_ujian` (`id`,`nama_ujian`,`waktu`,`nilai_min`,`peraturan`) VALUES 
 (1,' Tes Ujian','120','50','<ol><li>Bacalah dengan teliti tiap-tiap soal sebelum menjawab</li><li>Pengerjaan Soal-soal ujian akan diberikan batasan waktu, apabila waktu telah habis, anda tidak dapat lagi mengisi / mengoreksi kembali jawaban dari soal-soal yang tersedia. Begitu pula sebaliknya apabila waktu yang tersedia masih ada maka anda dapat secara bebas mengoreksi kembali jawaban-jawaban anda . <br></li><li>Skor atau nilai hanya akan ditampilkan saja tanpa adanya sertifikasi nilai untuk di download.</li><li><br></li></ol>');
/*!40000 ALTER TABLE `tbl_pengaturan_ujian` ENABLE KEYS */;


--
-- Table structure for table `db_ujianonline2`.`tbl_simpanmateri`
--

DROP TABLE IF EXISTS `tbl_simpanmateri`;
CREATE TABLE `tbl_simpanmateri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `topik` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_ujianonline2`.`tbl_simpanmateri`
--

/*!40000 ALTER TABLE `tbl_simpanmateri` DISABLE KEYS */;
INSERT INTO `tbl_simpanmateri` (`id`,`id_user`,`topik`) VALUES 
 (41,73,'oop2'),
 (57,72,'CSS_3');
/*!40000 ALTER TABLE `tbl_simpanmateri` ENABLE KEYS */;


--
-- Table structure for table `db_ujianonline2`.`tbl_soal`
--

DROP TABLE IF EXISTS `tbl_soal`;
CREATE TABLE `tbl_soal` (
  `id_soal` int(5) NOT NULL AUTO_INCREMENT,
  `soal` text NOT NULL,
  `a` varchar(30) NOT NULL,
  `b` varchar(30) NOT NULL,
  `c` varchar(30) NOT NULL,
  `d` varchar(30) NOT NULL,
  `knc_jawaban` varchar(30) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `aktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  `topik` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_soal`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_ujianonline2`.`tbl_soal`
--

/*!40000 ALTER TABLE `tbl_soal` DISABLE KEYS */;
INSERT INTO `tbl_soal` (`id_soal`,`soal`,`a`,`b`,`c`,`d`,`knc_jawaban`,`gambar`,`tanggal`,`aktif`,`topik`) VALUES 
 (3,'Peristiwa penyembelihan Nabi Ismail AS, merupakan asal mula perintah berkurban untuk umat islam setiap ....','10 Syawal','10 Dzulqodah','10 Dzulhijjah','10 Muharam','c','','0000-00-00','Y',NULL),
 (4,'<b>Perhatikan beberapa pernyataan berikut!</b><div><br></div><div>1. Hijrah karena perintah Allah</div><div>2. Bersama dengan kaum Anshor mendirikan mesjid</div><div>3. Kaum muslimin kehilangan rasa aman dari kaum kafir quraisy</div><div>4. Menepati perjanjian aqobah pertama</div><div><br></div><div>Dari pernyataan di atas yang merupakan terjadinya hijrah terdapat pada nomor ....</div><div><br></div>','1 dan 2','1 dan 3','2 dan 3','3 dan 4','b','','0000-00-00','Y',NULL),
 (5,'Udara yang kita butuhkan untuk bernapas adalah udara yang&nbsp; â€¦.<br>','Kotor','Bersih','Berasap','Berdebu','b','','0000-00-00','Y',NULL),
 (6,'Salah satu usaha mengurangi pencemaran udara adalah â€¦.<br>','Menanam pohon','Menggunakan transportasi umum','Membangun gedung tinggi','Memakai mobil pribadi','a','','0000-00-00','Y',NULL),
 (7,'Kerja sama yang dilakukan dua negara dinamakan kerja sama ....<br>','Regional','Bilateral','Global','Nasional','b','','0000-00-00','Y',NULL);
INSERT INTO `tbl_soal` (`id_soal`,`soal`,`a`,`b`,`c`,`d`,`knc_jawaban`,`gambar`,`tanggal`,`aktif`,`topik`) VALUES 
 (8,'Indonesia resmi diterima sebagai anggota PPB pada tanggal ....','28 Mei 1990','25 Juli 1985','28 September 1950','27 Juni 1947','c','','0000-00-00','Y',NULL),
 (9,'Politik luar negeri indonesia yang bebas aktif dicetuskan oleh ....','Ir. Soekarno','Soeharto','Moh. Hatta','Muhammad Roem','c','','0000-00-00','Y',NULL),
 (10,'Jika&nbsp; 20/25 = 4/n, maka nilai yang benar untuk n adalah....<br>','2','3','4','5','d','','0000-00-00','Y',NULL),
 (11,'Bu Eka mempunyai persediaan 0,6 kg gula pasir. Ia membeli lagi gula pasir sebanyak 11/4 kg. Jika sebanyak 0,9 kg digunakan untuk acara arisan. Sisa gula pasir Bu Lisa sebanyak....<br>','17/20','18/20','19/20','1','c','','0000-00-00','Y',NULL),
 (12,'Jarak kota Brebes ke Semarang diketahui 160 km. Jika jarak pada peta 4 cm, maka skala yang digunakan oleh peta tersebut adalah ....<br>','1 : 4.000.000','1 : 5.000.000','1 : 6.000.000','1 : 6.400.000','a','','0000-00-00','Y',NULL),
 (13,'Gempa yang disebabkan oleh tabrakan antar lempeng bumi disebut ....<br>','Vulkanik','Tektonik','Tsunami','Bumi','c','','0000-00-00','Y',NULL);
INSERT INTO `tbl_soal` (`id_soal`,`soal`,`a`,`b`,`c`,`d`,`knc_jawaban`,`gambar`,`tanggal`,`aktif`,`topik`) VALUES 
 (14,'Globalisasi berasal dari kata ....','Globe','Global','Glob','Globale','a','','0000-00-00','Y',NULL),
 (15,'Organisasi di bawah naungan PBB bergerak di bidang kesehatan adalah â€¦<br>','FAO','UNESCO','UNICEF','WHO','d','','0000-00-00','Y',NULL),
 (16,'Berikut ini adalah sumber energi listrik, kecuali ....','Baterai','Dynamo','Isolator','Generator','c','','0000-00-00','Y',NULL),
 (17,'Peristiwa alam seperti di gambar berikut adalah ....','Gerhana matahari cincin','Gerhana bulan','Gerhana matahari','Gerhana bulan total','c','19gerhana matahari.jpg','2018-07-12','Y',NULL),
 (18,'The tourists can change their money at the â€¦.<br>','Hotel','Money changer','City hall','Airport','b','','0000-00-00','Y',NULL),
 (19,'This traditional dance is fromâ€¦.<br>','Central java','West java','Bali','Yogyakarta','b','70tari jaipong.jpg','2018-07-12','Y',NULL),
 (20,'Dalam berpidato kita harus memilih bahasa yang santun dan komunikatif. Komunikatif artinya&nbsp; ....<br>','Bahasa resmi','Bahasa yang sering diucapkan','Bahasa yang dipelajari','Bahasa yang dipahami','d','','0000-00-00','Y',NULL),
 (21,'Penggunaan tanda garis miring yang tepat pada nomor surat adalah ....<br>','Nomor.24.III/Kop/2018/','Nomor : 24/III/Kop/2018','Nomor.24/III/Kop/2018','Nomor.24/III/Kop.2018/','b','','0000-00-00','Y',NULL);
INSERT INTO `tbl_soal` (`id_soal`,`soal`,`a`,`b`,`c`,`d`,`knc_jawaban`,`gambar`,`tanggal`,`aktif`,`topik`) VALUES 
 (53,'kakjakj','kajka','kmak','lakla','lala','a','','0000-00-00','Y','php'),
 (55,'kakjakj4444444','kajka','kmak','lakla','lala','a','','0000-00-00','Y','php'),
 (56,'kakjakj4444444888','kajka','kmak','lakla','lala','a','','0000-00-00','Y','php'),
 (29,'ds','s','s','s','s','a','','0000-00-00','Y','ggg'),
 (57,'kakjakj4444444888iiiiii','kajka','kmak','lakla','lala','a','','0000-00-00','Y','php'),
 (33,'s','s','s','s','s','a','','0000-00-00','Y','s'),
 (34,'add','aa','s','s','s','a','','0000-00-00','Y','as'),
 (58,'kakjakj4444444888iiiiii55555','kajka','kmak','lakla','lala','a','','0000-00-00','Y','php'),
 (37,'d','d','ds','d','d','a','','0000-00-00','Y','dd'),
 (42,'sss4','s','s','s','s','a','','0000-00-00','Y',''),
 (40,'jal','ak','a','a','a','a','','0000-00-00','Y','gg'),
 (60,'jalkakl','kkall','kajak','kalk','lakla','a','','0000-00-00','Y','php dasar'),
 (63,'hakjhka5555555555555555','a','a','a','a','a','','0000-00-00','Y','php dasar'),
 (62,'hakjhka','a','a','a','a','a','','0000-00-00','Y','php dasar');
INSERT INTO `tbl_soal` (`id_soal`,`soal`,`a`,`b`,`c`,`d`,`knc_jawaban`,`gambar`,`tanggal`,`aktif`,`topik`) VALUES 
 (66,'mbuh ra jelas<br>','ak','a','a','a','a','','0000-00-00','Y','PHP dasar'),
 (65,'','','','','','','','0000-00-00','Y',''),
 (67,'HTML adalah singkatan dari<br>','Hipertext Mockup language','Hipertext Mockup language','Hipertext Mockup language','Hipertext  Markup Language','d','','0000-00-00','Y','HTML'),
 (68,'kkk<br>','s','s','s','s','a','','0000-00-00','Y','HTML'),
 (69,'Rsa adalah<br>','gggg','aa','aa','aa','a','','0000-00-00','Y','Kriptografi'),
 (70,'Perintah mysql yang benar adalah<br>','SELECT * FROM tbl_admin;','SELECT $ FROM tbl_admin;','SELECT ^ FROM tbl_admin','SELECT * FROM tbl_admin?','a','','0000-00-00','Y','mysqldasar'),
 (71,'Perintah memilih materi dari tabel materi yang benar adalah <br>','SELECT * FROM tbl_materi;','SELECT tbl_materi FROM materi?','SELECT materi from tbl_materi;','Semua benar','a','','0000-00-00','Y','mysqldasar');
/*!40000 ALTER TABLE `tbl_soal` ENABLE KEYS */;


--
-- Table structure for table `db_ujianonline2`.`tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` text NOT NULL,
  `tgl_lahir` varchar(30) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `kwgn` varchar(40) NOT NULL,
  `sekolah_asal` varchar(50) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `alamat` text NOT NULL,
  `statusaktif` enum('Y','N') NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_user`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `db_ujianonline2`.`tbl_user`
--

/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` (`id_user`,`username`,`password`,`nama`,`tgl_lahir`,`jk`,`kwgn`,`sekolah_asal`,`telp`,`alamat`,`statusaktif`) VALUES 
 (71,'gggg','ba248c985ace94863880921d8900c53f','ggg','','----Pilih----','---Pilih----','','','','Y'),
 (72,'dany','e998f2a92b3b339cd4907c3ad2e77935','dany pradana7','2000-01-10','Laki-Laki','Indoensia','UNNES','0000','Kebumennn','Y'),
 (73,'ronaldo','c5aa3124b1adad080927ce4d144c6b33','ronaldo','1970-12-12','Laki-Laki','Asing','x','0','Portugal','Y'),
 (75,'user','ee11cbb19052e40b07aac0ca060c23ee','user','','----Pilih----','---Pilih----','','','kebumen<br>','Y'),
 (74,'dany','1b9fc02e98389d29c1506fe944b07d16','dany','','Laki-Laki','---Pilih----','','','Kebumen<br>','Y');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
