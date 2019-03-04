-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2015-03-13 09:50:19
-- 服务器版本： 5.6.19
-- PHP Version: 5.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shoolpano`
--

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

use shoolpano;

CREATE TABLE IF NOT EXISTS `category` (
`shool_id` int(11) NOT NULL,
  `shool_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `cateDescribe` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `access_count` int(11) DEFAULT NULL,
  `logo_img` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cate_detail` longtext COLLATE utf8_bin,
  `address` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `startTime` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Nature` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`shool_id`, `shool_name`, `cateDescribe`, `access_count`, `logo_img`, `cate_detail`, `address`, `startTime`, `Nature`, `tel`, `city_id`) VALUES
(1, 0xe5b9bfe8a5bfe6b091e6978fe5a4a7e5ada6, 0xe5b9bfe8a5bfe6b091e6978fe5a4a7e5ada6e5889be58a9ee4ba8e31393532e5b9b4efbc8ce59d90e890bde4ba8ee5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae9a696e5ba9ce58d97e5ae81e5b882efbc8ce698afe58d97e5ae81e5b882e89197e5908de79a84e2809ce88ab1e59bade5bc8fe58d95e4bd8de2809de5928ce9a38ee699afe5908de8839ce58cbae38082e5ada6e6a0a1e698afe59bbde5aeb6e6b091e6978fe4ba8be58aa1e5a794e59198e4bc9ae5928ce5b9bfe8a5bfe4babae6b091e694bfe5ba9ce585b1e5bbbae79a84e59cb0e696b9e680a7e9878de782b9e5a4a7e5ada6efbc8ce58db3e79c81e983a8e585b1e5bbbae5a4a7e5ada6efbc8ce4b99fe698afe59bbde5aeb6e4b8ade8a5bfe983a8e9ab98e6a0a1e59fbae7a180e883bde58a9be5bbbae8aebee5b7a5e7a88befbc88e5b08f323131e5b7a5e7a88befbc89e5bbbae8aebee9ab98e6a0a1e38082, 0, 0x676d31, 0xe5b9bfe8a5bfe6b091e6978fe5a4a7e5ada6efbc884775616e67586920556e697665727369747920666f72204e6174696f6e616c6974696573efbc89e5889be58a9ee4ba8e3139353220e5b9b4efbc8ce4bd8de4ba8ee5b9bfe8a5bfe9a696e5ba9ce58d97e5ae81e5b882efbc8ce698afe58d97e5ae81e5b882e89197e5908de79a84e2809ce88ab1e59bade5bc8fe58d95e4bd8de2809de5928ce9a38ee699afe5908de8839ce58cbae38082e5ada6e6a0a1e698afe59bbde5aeb6e6b091e6978fe4ba8be58aa1e5a794e59198e4bc9ae5928ce5b9bfe8a5bfe4babae6b091e694bfe5ba9ce585b1e5bbbae79a84e59cb0e696b9e680a7e9878de782b9e5a4a7e5ada6efbc8ce58db3e79c81e983a8e585b1e5bbbae5a4a7e5ada6efbc8ce4b99fe698afe59bbde5aeb6e4b8ade8a5bfe983a8e9ab98e6a0a1e59fbae7a180e883bde58a9be5bbbae8aebee5b7a5e7a88befbc88e5b08f323131e5b7a5e7a88befbc89e5bbbae8aebee9ab98e6a0a1e380820d0ae5ada6e6a0a1e8aebee69c893234e4b8aae5ada6e999a2efbc88e590ab31e4b8aae78bace7ab8be5ada6e999a2efbc89efbc8ce5ada6e7a791e6b6b5e79b96e4ba86e593b2e5ada6e38081e7bb8fe6b58ee5ada6e38081e6b395e5ada6e38081e69599e882b2e5ada6e38081e69687e5ada6e38081e58e86e58fb2e5ada6e38081e79086e5ada6e38081e5b7a5e5ada6e38081e7aea1e79086e5ada6e38081e889bae69cafe5ada63130e4b8aae5ada6e7a791e997a8e7b1bbe38082e5b9bfe8a5bfe6b091e6978fe5a4a7e5ada6e78eb0e69c89e4b89ce38081e8a5bfe4b8a4e4b8aae6a0a1e58cbaefbc8ce58da0e59cb0e99da2e7a7afe8bf9132303030e4baa9efbc8ce6a0a1e59bade5bbbae7ad91e99da2e7a7af3630e4b887e5b9b3e696b9e7b1b3e38082e69599e5ada6e7a791e7a094e4bbaae599a8e8aebee5a487e580bce8bebe32e4babf313337e4b887e58583efbc8ce4b8ade5a496e69687e794b5e5ad90e69c9fe5888a38e4b887e5a49ae7a78defbc8ce9a686e8978fe7bab8e8b4a8e69687e78caee680bbe9878f313735e4b887e5868cefbc8ce794b5e5ad90e59bbee4b9a6353732e4b887e5868ce38082e5ada6e6a0a1e69c89e585a8e697a5e588b6e59ca8e6a0a1e7949f3138323739e4babaefbc8ce585b6e4b8ade7a094e7a9b6e7949f31343137e4babaefbc8ce69cace7a791e7949f3135303832e4babaefbc8ce4b893e7a791e7949f373732e4babaefbc8ce9a284e7a791e7949f32323437e4babaefbc8ce79599e5ada6e7949f383330e4babae38082, 0xe5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae58d97e5ae81e5b882e8a5bfe4b9a1e5a198e58cbae5a4a7e5ada6e4b89ce8b7af313838e58fb7, 0x31393532e5b9b433e69c88, 0xe585ace7ab8be5a4a7e5ada620e7bbbce59088e680a7e6b091e6978fe9ab98e7ad89e999a2e6a0a120e5b08f323131e38081e79c81e983a8e585b1e5bbbae38081e79c81e5b19ee9878de782b9, 0x28303737312933323630343130, 1),
(2, 0xe5b9bfe8a5bfe5a4a7e5ada6, 0xe5b9bfe8a5bfe5a4a7e5ada6efbc8ce4bd8de4ba8ee5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae9a696e5ba9ce58d97e5ae81e5b882efbc8ce4b8ade59bbde58d97e696b9e89197e5908de9ab98e6a0a1efbc8ce4b99fe698afe5b9bfe8a5bfe58a9ee5ada6e58e86e58fb2e69c80e4b985e38081e8a784e6a8a1e69c80e5a4a7efbc8ce7bbbce59088e5ae9ee58a9be69c80e5bcbae79a84e9ab98e7ad89e5ada6e5ba9cefbc8ce4b8ade59bbde5a4a7e5ada6e799bee5bcbae9ab98e6a0a1e38082e5ada6e6a0a1e698afe69599e882b2e983a8e5928ce5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae585b1e5bbbae9878de782b9e9ab98e6a0a1efbc8ce59bbde5aeb6e2809c323131e5b7a5e7a88be2809defbc8ce2809ce4b8ade8a5bfe983a8e9ab98e6a0a1e7bbbce59088e5ae9ee58a9be68f90e58d87e5b7a5e7a88be2809de9878de782b9e5bbbae8aebee9ab98e6a0a1e4b98be4b880e380820d0a, 0, 0x676431, 0xe5b9bfe8a5bfe5a4a7e5ada6efbc884775616e67786920556e6976657273697479efbc89efbc8ce7ae80e7a7b0e2809ce8a5bfe5a4a7e2809defbc8ce4bd8de4ba8ee5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae9a696e5ba9ce58d97e5ae81e5b882efbc8ce4b8ade59bbde58d97e696b9e89197e5908de9ab98e6a0a1efbc8ce4b99fe698afe5b9bfe8a5bfe58a9ee5ada6e58e86e58fb2e69c80e4b985e38081e8a784e6a8a1e69c80e5a4a7efbc8ce7bbbce59088e5ae9ee58a9be69c80e5bcbae79a84e9ab98e7ad89e5ada6e5ba9cefbc8ce4b8ade59bbde5a4a7e5ada6e799bee5bcbae9ab98e6a0a1e38082e5ada6e6a0a1e698afe69599e882b2e983a8e5928ce5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae585b1e5bbbae9878de782b9e9ab98e6a0a1efbc8ce59bbde5aeb6e2809c323131e5b7a5e7a88be2809defbc8ce2809ce4b8ade8a5bfe983a8e9ab98e6a0a1e7bbbce59088e5ae9ee58a9be68f90e58d87e5b7a5e7a88be2809de9878de782b9e5bbbae8aebee9ab98e6a0a1e4b98be4b880efbc8ce4b99fe698afe2809ce58d93e8b68ae5b7a5e7a88be5b888e69599e882b2e59fb9e585bbe8aea1e58892e2809de38081e2809ce58d93e8b68ae6b395e5be8be4babae6898de69599e882b2e59fb9e585bbe8aea1e58892e2809de9ab98e6a0a1e4b98be4b880efbc8ce2809ce4b8ade8a5bfe983a8e9ab98e6a0a1e88194e79b9fe2809de68890e59198e4b98be4b8805b315d20efbc8ce9a696e689b9e59bbde5aeb6e5a4a7e5ada6e7949fe5889be696b0e680a7e5ae9ee9aa8ce8aea1e58892e9ab98e6a0a1e4b98be4b880e380825b325d200d0a31393238e5b9b4efbc8ce5b9bfe8a5bfe5a4a7e5ada6e794b1e4b8ade59bbde697a9e69c9fe99da9e591bde5aeb6e38081e69599e882b2e5aeb6e38081e69c89e2809ce58c97e894a1e58d97e9a9ace2809de4b98be8aa89e79a84e9a9ace5909be6ada6e58588e7949fe5889be5bbbae3808231393339e5b9b4efbc8ce5b9bfe8a5bfe5a4a7e5ada6e8a2abe6b091e59bbde694bfe5ba9ce7a1aee7ab8be4b8bae59bbde7ab8be5a4a7e5ada6e3808231393532e5b9b4efbc8ce6af9be6b3bde4b89ce4b8bbe5b8ade4bab2e7ac94e9a298e58699e4ba86e6a0a1e5908de3808231393533e5b9b4efbc8ce59ca8e585a8e59bbde9ab98e6a0a1e999a2e7b3bbe8b083e695b4e4b8ade5b9bfe8a5bfe5a4a7e5ada6e5819ce58a9eefbc8ce5b888e7949fe4bba5e58f8ae8aebee5a487e5928ce59bbee4b9a6e8b584e69699e8a2abe8b083e695b4e588b0e4b8ade58d97e5928ce58d8ee58d97e59cb0e58cbae79a843139e68980e5a4a7e5ada6e3808231393538e5b9b4efbc8ce5b9bfe8a5bfe5a4a7e5ada6e681a2e5a48de9878de5bbbae3808231393938e5b9b4efbc8ce5b9bfe8a5bfe5a4a7e5ada6e88eb7e689b9e58d9ae7a195e5a3abe5ada6e4bd8de68e88e69d83e58d95e4bd8de3808231393939e5b9b4efbc8ce5b9bfe8a5bfe5a4a7e5ada6e8bf9be585a5e59bbde5aeb622323131e5b7a5e7a88b22e5bbbae8aebee5ada6e6a0a1e8a18ce588975b335d20e3808232303132e5b9b4e585a5e98089e2809ce4b8ade8a5bfe983a8e9ab98e6a0a1e7bbbce59088e5ae9ee58a9be68f90e58d87e5b7a5e7a88be2809de8aea1e58892e380820d0ae688aae6ada232303133e5b9b4e5ba95efbc8ce5ada6e6a0a1e58da0e59cb0e99da2e7a7af333037e585ace9a1b7efbc88e7baa6e5908834363035e4baa9efbc89efbc8ce5bbbae7ad91e99da2e7a7af3133332e3039e4b887e5b9b3e696b9e7b1b3efbc8ce5ada6e6a0a1e59ca8e6a0a1e7949f3338393233e4babaefbc8ce585b6e4b8ade7a094e7a9b6e7949f3136323030e4babaefbc8ce69cace7a791e7949f3232373233e4babaefbc8ce79599e5ada6e7949f31323431e4babaefbc8ce68890e4babae69599e882b232e4b887e5a49ae4babae38082e5ada6e6a0a1e8aebee69c893239e4b8aae5ada6e999a2e4bba5e58f8a31e4b8aae78bace7ab8be5ada6e999a2efbc8c3937e4b8aae69cace7a791e4b893e4b89aefbc8ce585b6e4b8ade59bbde5aeb6e789b9e889b2e4b893e4b89a3132e4b8aaefbc8ce5b7b2e58f91e5b195e68890e4b8bae4b880e68980e585b7e69c89e79086e5ada6e38081e5b7a5e5ada6e38081e5869ce5ada6e38081e7bb8fe6b58ee5ada6e38081e6b395e5ada6e38081e593b2e5ada6e38081e69687e5ada6e38081e7aea1e79086e5ada6e38081e69599e882b2e5ada6e38081e889bae69cafe5ada6e7ad893130e5a4a7e5ada6e7a791e79a84e9ab98e6b0b4e5b9b3e58cbae59f9fe789b9e889b2e7a094e7a9b6e59e8be7bbbce59088e680a7e5a4a7e5ada6e38082, 0xe5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae58d97e5ae81e5b882e8a5bfe4b9a1e5a198e58cbae5a4a7e5ada6e4b89ce8b7af313030e58fb7, 0x31393238e5b9b4, 0xe7bbbce59088e680a7e5a4a7e5ada620323131e5b7a5e7a88be38081e4b8ade8a5bfe983a8e9ab98e6a0a1e7bbbce59088e5ae9ee58a9be68f90e58d87e5b7a5e7a88b, 0x28303737312933323332313131, 1),
(3, 0xe5b9bfe8a5bfe5b888e88c83e5ada6e999a2, 0xe5b9bfe8a5bfe5b888e88c83e5ada6e999a2e698afe5b19ee699aee9809ae69cace7a791e999a2e6a0a1efbc8ce59d90e890bde4ba8ee5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae9a696e5ba9ce58d97e5ae81e5b882efbc8c31393738e5b9b43132e69c88e7bb8fe59bbde58aa1e999a2e689b9e58786efbc8ce68890e4b8bae5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae58cbae5b19ee699aee9809ae585a8e697a5e588b6e69cace7a791e5b888e88c83e999a2e6a0a1e3808231393938e5b9b4e8a2abe59bbde58aa1e999a2e5ada6e4bd8de5a794e59198e4bc9ae689b9e58786e4b8bae7a195e5a3abe5ada6e4bd8de68e88e4ba88e58d95e4bd8de3808232303033e5b9b431e69c8831e697a5efbc8ce58e9fe5b9bfe8a5bfe58d97e5ae81e6b091e6978fe5b888e88c83e5ada6e6a0a1e5b9b6e585a5e5b9bfe8a5bfe5b888e88c83e5ada6e999a2e38082, 0, 0x676631, 0xe5b9bfe8a5bfe5b888e88c83e5ada6e999a2e698afe5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae5b19ee699aee9809ae69cace7a791e999a2e6a0a1efbc8ce59d90e890bde4ba8ee5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae9a696e5ba9ce58d97e5ae81e5b882efbc8ce585b6e5898de8baabe4b8bae5889be58a9ee4ba8e31393533e5b9b4e79a84e5b9bfe8a5bfe69599e5b888e8bf9be4bfaee5ada6e999a2e3808231393738e5b9b43132e69c88e7bb8fe59bbde58aa1e999a2e689b9e58786efbc8ce68890e4b8bae5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae58cbae5b19ee699aee9809ae585a8e697a5e588b6e69cace7a791e5b888e88c83e999a2e6a0a1e3808231393938e5b9b4e8a2abe59bbde58aa1e999a2e5ada6e4bd8de5a794e59198e4bc9ae689b9e58786e4b8bae7a195e5a3abe5ada6e4bd8de68e88e4ba88e58d95e4bd8de3808232303033e5b9b431e69c8831e697a5efbc8ce58e9fe5b9bfe8a5bfe58d97e5ae81e6b091e6978fe5b888e88c83e5ada6e6a0a1e5b9b6e585a5e5b9bfe8a5bfe5b888e88c83e5ada6e999a2e380820d0ae688aae887b332303133e5b9b436e69c88efbc8ce5ada6e6a0a1e68ba5e69c893630e4b8aae699aee9809ae69cace7a791e4b893e4b89aefbc8c3131e4b8aae4b880e7baa7e5ada6e7a791e7a195e5a3abe5ada6e4bd8de68e88e69d83e782b9e3808138e4b8aae4ba8ce7baa7e5ada6e7a791e7a195e5a3abe5ada6e4bd8de68e88e69d83e782b9e5928c33e4b8aae7a195e5a3abe4b893e4b89ae5ada6e4bd8de68e88e69d83e782b9efbc8ce6b6b5e79b96e593b2e5ada6e38081e7bb8fe6b58ee5ada6e38081e6b395e5ada6e38081e69599e882b2e5ada6e38081e69687e5ada6e38081e58e86e58fb2e5ada6e38081e79086e5ada6e38081e5b7a5e5ada6e5928ce7aea1e79086e5ada6e7ad8939e4b8aae5ada6e7a791e997a8e7b1bbe79a84e9ab98e7ad89e5ada6e5ba9ce380820d0ae5ada6e6a0a1e8aebee69c893137e4b8aae5ada6e999a2e3808134e4b8aae585ace585b1e69599e5ada6e69cbae69e84e380813433e4b8aae7a791e5ada6e7a094e7a9b6e69cbae69e84e5928c31e68980e99984e5b19ee5ae9ee9aa8ce5ada6e6a0a1efbc8ce59088e4bd9ce4b8bee58a9e31e68980e78bace7ab8be5ada6e999a2e38082e69c89e585a8e697a5e588b6e699aee9809ae69cace7a791e7949f3132313537e4babaefbc8ce4b893e7a791e7949f333039e4babaefbc8ce7a195e5a3abe7a094e7a9b6e7949f31303531e4babaefbc8ce7a094e7a9b6e7949fe78fade5ada6e5919832303030e4babaefbc8ce79599e5ada6e7949f353732e4babaefbc8ce68890e4babae9ab98e7ad89e69599e882b2e5ada6e58e86e7949f3230303830e4babae38082, 0xe5b9bfe8a5bfe58d97e5ae81e5b882e8a5bfe4b9a1e5a198e58cbae6988ee7a780e4b89ce8b7af313735e58fb7, 0x31393533e5b9b43130e69c88, 0xe585ace58a9ee5a4a7e5ada620e699aee9809ae69cace7a791e9ab98e6a0a1, 0x28303737312933313332323838, 2),
(4, 0xe5b9bfe8a5bfe58cbbe7a791e5a4a7e5ada6, 0xe5b9bfe8a5bfe58cbbe7a791e5a4a7e5ada6e4bd8de4ba8ee5b9bfe8a5bfe58d97e5ae81e5b882efbc8ce5889be5bbbae4ba8e31393334e5b9b43131e69c883231e697a5e38082e5ae83e698afe4b8ade59bbde5bbbae6a0a1e8be83e697a9e79a843232e68980e58cbbe5ada6e999a2e6a0a1e4b98be4b880efbc8ce698afe585a8e59bbde69c80e697a9e5ae9ae782b9e68b9be694b6e5a496e59bbde79599e5ada6e7949fe38081e6b8afe6beb3e58d8ee4bea8e5ada6e7949fe79a8438e68980e58cbbe5ada6e999a2e6a0a1e4b98be4b880efbc8ce698afe5b9bfe8a5bfe58cbbe5ada6e69599e882b2e38081e58cbbe5ada6e7a094e7a9b6e38081e4b8b4e5ba8ae58cbbe79697e5928ce9a284e998b2e4bf9de581a5e79a84e4b8ade5bf83efbc8ce4b8ade8a5bfe983a8e9ab98e6a0a1e59fbae7a180e883bde58a9be5bbbae8aebee5b7a5e7a88be9ab98e6a0a1e4b98be4b880e38082, 0, 0x676b31, 0x20e5b9bfe8a5bfe58cbbe7a791e5a4a7e5ada6e5889be5bbbae4ba8e31393334e5b9b43131e69c883231e697a5efbc8ce59d90e890bde59ca8e585b7e69c89e2809ce7bbbfe59f8ee2809de4b98be7a7b0e79a84e5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae9a696e5ba9ce58d97e5ae81e5b882efbc8ce6a0a1e69cace983a8e58da0e59cb0e99da2e7a7af3730e5a49ae4b887e5b9b3e696b9e7b1b3efbc8ce6ada3e59ca8e7a7afe69e81e7adb9e5bbbae696b0e6a0a1e58cbae58da0e59cb0e7baa631303030e4baa9efbc88e5b9bfe8a5bfe694bfe5ba9ce2809ce58d81e4ba8ce4ba94e2809de8a784e58892e4b98be69599e882b2e8a784e58892e9878de782b9e9a1b9e79baee4b98be4b880efbc89e38082e5898de8baabe698afe5b9bfe8a5bfe79c81e7ab8be58cbbe5ada6e999a2e3808231393430e5b9b4e6a0a1e59d80e8bf81e887b3e6a182e69e97e3808231393439e5b9b4e4bba5e5898defbc8ce5ada6e6a0a1e59ca8e68898e4b9b1e4b8ade4b883e6aca1e8bf81e5be99e6a0a1e59d80efbc8ce4b889e6aca1e58f98e69bb4e6a0a1e5908de3808231393439e5b9b43131e69c88e69bb4e5908de4b8bae5b9bfe8a5bfe79c81e58cbbe5ada6e999a2e3808231393532e5b9b4e794b1e4b8ade5a4aee58dabe7949fe983a8e5a794e68998e4b8ade58d97e58dabe7949fe983a8e79bb4e68ea5e9a286e5afbce3808231393533e5b9b434e69c88e4b8ade5a4aee58dabe7949fe983a8e689b9e58786e694b9e7a7b0e4b8bae5b9bfe8a5bfe58cbbe5ada6e999a2e3808231393534e5b9b437e69c88e794b1e6a182e69e97e8bf81e59b9ee58d97e5ae81e5b882e78eb0e59d80e887b3e4bb8ae3808231393936e5b9b435e69c88e69599e882b2e983a8e689b9e58786e69bb4e5908de4b8bae5b9bfe8a5bfe58cbbe7a791e5a4a7e5ada6e38082200d0a20202020e5ada6e6a0a1e698afe585a8e59bbde5bbbae6a0a1e8be83e697a9e79a843232e68980e58cbbe5ada6e999a2e6a0a1e4b98be4b880efbc8ce698afe585a8e59bbde69c80e697a9e5ae9ae782b9e68b9be694b6e5a496e59bbde79599e5ada6e7949fe38081e6b8afe6beb3e58fb0e5ada6e7949fe5928ce58d8ee4bea8e5ada6e7949fe79a8438e68980e58cbbe5ada6e999a2e6a0a1e4b98be4b880efbc8ce698afe69599e882b2e983a8e689b9e58786e79a84e69c89e68b9be694b6e69cace7a791e4b8b4e5ba8ae58cbbe5ada6e4b893e4b89aefbc88e88bb1e8afade68e88e8afbeefbc89e79599e5ada6e7949fe8b584e6a0bce79a84e9a696e689b93330e68980e9ab98e6a0a1e4b98be4b880efbc8ce698afe5b9bfe8a5bfe694bfe5ba9ce9878de782b9e5bbbae8aebee79a84e5a4a7e5ada6e4b98be4b880efbc8ce698afe5b9bfe8a5bfe58cbbe5ada6e69599e882b2e38081e58cbbe5ada6e7a094e7a9b6e38081e4b8b4e5ba8ae58cbbe79697e5928ce9a284e998b2e4bf9de581a5e79a84e4b8ade5bf83e3808220, 0xe5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae58d97e5ae81e5b882e99d92e7a780e58cbae58f8ce68ba5e8b7af3232e58fb7, 0x31393334e5b9b43131e69c883231e697a5, 0xe585ace7ab8be5a4a7e5ada620e5b08f323131e5b7a5e7a88b20e58cbae5b19ee9ab98e7ad89e999a2e6a0a1, 0x28303737312935333532353132, 3),
(5, 0xe5b9bfe8a5bfe8b4a2e7bb8fe5ada6e999a2, 0xe5b9bfe8a5bfe8b4a2e7bb8fe5ada6e999a2e5a78be5bbbae4ba8e31393630e5b9b4efbc8ce5ada6e6a0a1e5898de8baabe4b8bae5b9bfe8a5bfe59586e4b89ae4b893e7a791e5ada6e6a0a1e5928ce5b9bfe8a5bfe8b4a2e7bb8fe5ada6e6a0a1e38082e5ada6e999a2e4bd8de4ba8ee5b9bfe8a5bfe9a696e5ba9ce58d97e5ae81e5b882efbc8ce698afe4b880e68980e79c81e5b19ee585a8e697a5e588b6e699aee9809ae69cace7a791e999a2e6a0a1efbc8ce794b1e58e9fe5b9bfe8a5bfe8b4a2e694bfe9ab98e7ad89e4b893e7a791e5ada6e6a0a1e5928ce5b9bfe8a5bfe59586e4b89ae9ab98e7ad89e4b893e7a791e5ada6e6a0a1e59088e5b9b6e8808ce68890efbc8ce698afe5b9bfe8a5bfe7bb8fe6b58ee5928ce7a4bee4bc9ae58f91e5b195e680bbe4bd93e8a784e58892e4b8ade9878de782b9e5bbbae8aebee79a84e9ab98e7ad89e999a2e6a0a1e4b98be4b880e38082, 0, 0x676331, 0xe5b9bfe8a5bfe8b4a2e7bb8fe5ada6e999a2e5a78be5bbbae4ba8e31393630e5b9b4efbc8ce5ada6e999a2e4bd8de4ba8ee5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae9a696e5ba9ce58d97e5ae81e5b882efbc8ce698afe4b880e68980e79c81e5b19ee585a8e697a5e588b6e699aee9809ae69cace7a791e999a2e6a0a1efbc8ce794b1e58e9fe5b9bfe8a5bfe8b4a2e694bfe9ab98e7ad89e4b893e7a791e5ada6e6a0a1e5928ce5b9bfe8a5bfe59586e4b89ae9ab98e7ad89e4b893e7a791e5ada6e6a0a1e59088e5b9b6e7bb84e5bbbae8808ce68890efbc8ce698afe5b9bfe8a5bfe7bb8fe6b58ee5928ce7a4bee4bc9ae58f91e5b195e680bbe4bd93e8a784e58892e4b8ade9878de782b9e5bbbae8aebee79a84e9ab98e7ad89e999a2e6a0a1e4b98be4b880e380820d0ae688aae6ada232303133e5b9b439e69c88efbc8ce6a0a1e59bade58da0e59cb0e99da2e7a7af3133332e38363635e4b887e38ea1efbc8ce69599e5ada6e7a791e7a094e4bbaae599a8e8aebee5a487e680bbe580bc373536342e3836e4b887e58583efbc8ce68ba5e69c89e69599e5ada6e794a8e8aea1e7ae97e69cba35323638e58fb0efbc8ce7bab8e8b4a8e8978fe4b9a63134392e3736e4b887e5868cefbc8ce59084e7b1bbe69599e5aea4353130e997b4efbc9be585a8e697a5e588b6e59ca8e6a0a1e7949f3230393838e4babaefbc8ce585b6e4b8ade69cace7a791e7949fe58da037312e3625e38082, 0xe6988ee7a780e6a0a1e58cbaefbc9ae58d97e5ae81e5b882e6988ee7a780e8a5bfe8b7af313030e58fb7efbc9be79bb8e6809de6b996e6a0a1e58cbaefbc9ae58d97e5ae81e5b882e5a4a7e5ada6e8a5bfe8b7af313839e58fb7, 0x32303034e5b9b4, 0xe585ace7ab8be5a4a7e5ada620e58cbae5b19ee9ab98e7ad89e999a2e6a0a1, 0x28303737312933383335303738, 1),
(6, 0xe5b9bfe8a5bfe69cbae794b5e8818ce4b89ae68a80e69cafe5ada6e999a2, 0xe5b9bfe8a5bfe69cbae794b5e8818ce4b89ae68a80e69cafe5ada6e999a2e5a78be5bbbae4ba8e31393538e5b9b4efbc8ce59d90e890bde59ca8e2809ce4b8ade59bbde7bbbfe59f8ee2809de5b9bfe8a5bfe9a696e5ba9ce58d97e5ae81e5b882efbc8ce698afe7bb8fe69599e882b2e983a8e689b9e58786e68890e7ab8be79a84e4b880e68980e585ace58a9ee585a8e697a5e588b6e699aee9809ae9ab98e7ad89e8818ce4b89ae999a2e6a0a1efbc8ce99ab6e5b19ee5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae5b7a5e4b89ae5928ce4bfa1e681afe58c96e5a794e59198e4bc9aefbc8ce698afe585a8e59bbde9a696e689b9e38081e5b9bfe8a5bfe9a696e5aeb6e59bbde5aeb6e7a4bae88c83e680a7e9aaa8e5b9b2e9ab98e8818ce999a2e6a0a1efbc8ce59bbde5aeb6e7a4bae88c83e680a7e9ab98e8818ce5bbbae8aebee9878de782b938e68980e999a2e6a0a1e4b98be4b880e38082, 0, 0x676a31, 0xe5b9bfe8a5bfe69cbae794b5e8818ce4b89ae68a80e69cafe5ada6e999a2e5a78be5bbbae4ba8e31393538e5b9b4efbc8ce59d90e890bde59ca8e2809ce4b8ade59bbde7bbbfe59f8ee2809de5b9bfe8a5bfe9a696e5ba9ce58d97e5ae81e5b882e7be8ee4b8bde79a84e79bb8e6809de6b996e79594e38081e98295e6b19fe4b98be6bba8efbc8ce698afe7bb8fe69599e882b2e983a8e689b9e58786e68890e7ab8be79a84e4b880e68980e585ace58a9ee585a8e697a5e588b6e699aee9809ae9ab98e7ad89e8818ce4b89ae999a2e6a0a1efbc8ce99ab6e5b19ee5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae5b7a5e4b89ae5928ce4bfa1e681afe58c96e5a794e59198e4bc9aefbc8ce698afe585a8e59bbde9a696e689b9e38081e5b9bfe8a5bfe9a696e5aeb6e59bbde5aeb6e7a4bae88c83e680a7e9aaa8e5b9b2e9ab98e8818ce999a2e6a0a1efbc8ce59bbde5aeb6e7a4bae88c83e680a7e9ab98e8818ce5bbbae8aebee9878de782b9e59fb9e882b238e68980e999a2e6a0a1e4b98be4b880e380820d0ae5ada6e999a2e58da0e59cb0373736e4baa9efbc8ce6a0a1e8888de99da2e7a7af3335e4b887e5b9b3e696b9e7b1b3efbc8ce59bbae5ae9ae8b584e4baa7332e3239e4babfe58583efbc8ce78eb0e69c89e585a8e697a5e588b6e59ca8e6a0a1e7949f3132363030e5a49ae4babaefbc8ce698afe5b9bfe8a5bfe7acace4b880e68980e585a8e697a5e588b6e59ca8e6a0a1e7949fe8b685e8bf87e4b887e4babae79a84e9ab98e8818ce999a2e6a0a1e38082, 0xe5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae58d97e5ae81e5b882e8a5bfe4b9a1e5a198e58cbae5a4a7e5ada6e4b89ce8b7af313031e58fb7, 0x31393538e5b9b4, 0xe59bbde5aeb6e58f8ce7a4bae88c83e680a7e9ab98e8818ce999a2e6a0a1, 0x28303737312933323439393030, 1);

-- --------------------------------------------------------

--
-- 表的结构 `city_info`
--

CREATE TABLE IF NOT EXISTS `city_info` (
`city_id` int(11) NOT NULL,
  `city_name` varchar(30) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `city_info`
--

INSERT INTO `city_info` (`city_id`, `city_name`) VALUES
(1, 0xe58d97e5ae81),
(2, 0xe6a182e69e97),
(3, 0xe6a2a7e5b79e);

-- --------------------------------------------------------

--
-- 表的结构 `scenics`
--

CREATE TABLE IF NOT EXISTS `scenics` (
`scenic_id` int(11) NOT NULL,
  `scenic_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `scenic_detail` varchar(255) COLLATE utf8_bin NOT NULL,
  `access_count` int(11) NOT NULL,
  `shool_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 转存表中的数据 `scenics`
--

INSERT INTO `scenics` (`scenic_id`, `scenic_name`, `scenic_detail`, `access_count`, `shool_id`, `city_id`) VALUES
(1, 0xe5b9bfe8a5bfe6b091e6978fe5a4a7e5ada6, 0xe5b9bfe8a5bfe6b091e6978fe5a4a7e5ada6e5889be58a9ee4ba8e31393532e5b9b4efbc8ce59d90e890bde4ba8ee5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae9a696e5ba9ce58d97e5ae81e5b882efbc8ce698afe58d97e5ae81e5b882e89197e5908de79a84e2809ce88ab1e59bade5bc8fe58d95e4bd8de2809de5928ce9a38ee699afe5908de8839ce58cbae38082e5ada6e6a0a1e698afe59bbde5aeb6e6b091e6978fe4ba8be58aa1e5a794e59198e4bc9ae5928ce5b9bfe8a5bfe4babae6b091e694bfe5ba9ce585b1e5bbbae79a84e59cb0e696b9e680a7e9878de782b9e5a4a7e5ada6efbc8ce58db3e79c81e983a8e585b1e5bbbae5a4a7e5ada6efbc8ce4b99fe698afe59bbde5aeb6e4b8ade8a5bfe983a8e9ab98e6a0a1e59fbae7a180e883bde58a9be5bbbae8aebee5b7a5e7a88befbc88e5b08f323131e5b7a5e7a88befbc89e5bbbae8aebee9ab98e6a0a1e38082, 0, 1, 1),
(2, 0xe5b9bfe8a5bfe5a4a7e5ada6, 0xe5b9bfe8a5bfe5a4a7e5ada6efbc8ce4bd8de4ba8ee5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae9a696e5ba9ce58d97e5ae81e5b882efbc8ce4b8ade59bbde58d97e696b9e89197e5908de9ab98e6a0a1efbc8ce4b99fe698afe5b9bfe8a5bfe58a9ee5ada6e58e86e58fb2e69c80e4b985e38081e8a784e6a8a1e69c80e5a4a7efbc8ce7bbbce59088e5ae9ee58a9be69c80e5bcbae79a84e9ab98e7ad89e5ada6e5ba9cefbc8ce4b8ade59bbde5a4a7e5ada6e799bee5bcbae9ab98e6a0a1e38082e5ada6e6a0a1e698afe69599e882b2e983a8e5928ce5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae585b1e5bbbae9878de782b9e9ab98e6a0a1efbc8ce59bbde5aeb6e2809c323131e5b7a5e7a88be2809defbc8ce2809ce4b8ade8a5bfe983a8e9ab98e6a0a1e7bbbce59088e5ae9ee58a9be68f90e58d87e5b7a5e7a88be2809de9878de782b9e5bbbae8aebee9ab98e6a0a1e4b98be4b880e38082, 0, 2, 1),
(3, 0xe5b9bfe8a5bfe5b888e88c83e5ada6e999a2, 0xe5b9bfe8a5bfe5b888e88c83e5ada6e999a2e698afe5b19ee699aee9809ae69cace7a791e999a2e6a0a1efbc8ce59d90e890bde4ba8ee5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae9a696e5ba9ce58d97e5ae81e5b882efbc8c31393738e5b9b43132e69c88e7bb8fe59bbde58aa1e999a2e689b9e58786efbc8ce68890e4b8bae5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae58cbae5b19ee699aee9809ae585a8e697a5e588b6e69cace7a791e5b888e88c83e999a2e6a0a1e3808231393938e5b9b4e8a2abe59bbde58aa1e999a2e5ada6e4bd8de5a794e59198e4bc9ae689b9e58786e4b8bae7a195e5a3abe5ada6e4bd8de68e88e4ba88e58d95e4bd8de3808232303033e5b9b431e69c8831e697a5efbc8ce58e9fe5b9bfe8a5bfe58d97e5ae81e6b091e6978fe5b888e88c83e5ada6e6a0a1e5b9b6e585a5e5b9bfe8a5bfe5b888e88c83e5ada6e999a2e38082, 0, 3, 1),
(4, 0xe5b9bfe8a5bfe58cbbe7a791e5a4a7e5ada6, 0xe5b9bfe8a5bfe58cbbe7a791e5a4a7e5ada6e4bd8de4ba8ee5b9bfe8a5bfe58d97e5ae81e5b882efbc8ce5889be5bbbae4ba8e31393334e5b9b43131e69c883231e697a5e38082e5ae83e698afe4b8ade59bbde5bbbae6a0a1e8be83e697a9e79a843232e68980e58cbbe5ada6e999a2e6a0a1e4b98be4b880efbc8ce698afe585a8e59bbde69c80e697a9e5ae9ae782b9e68b9be694b6e5a496e59bbde79599e5ada6e7949fe38081e6b8afe6beb3e58d8ee4bea8e5ada6e7949fe79a8438e68980e58cbbe5ada6e999a2e6a0a1e4b98be4b880efbc8ce698afe5b9bfe8a5bfe58cbbe5ada6e69599e882b2e38081e58cbbe5ada6e7a094e7a9b6e38081e4b8b4e5ba8ae58cbbe79697e5928ce9a284e998b2e4bf9de581a5e79a84e4b8ade5bf83efbc8ce4b8ade8a5bfe983a8e9ab98e6a0a1e59fbae7a180e883bde58a9be5bbbae8aebee5b7a5e7a88be9ab98e6a0a1e4b98be4b880e38082, 0, 4, 1),
(5, 0xe5b9bfe8a5bfe8b4a2e7bb8fe5ada6e999a2, 0xe5b9bfe8a5bfe8b4a2e7bb8fe5ada6e999a2e5a78be5bbbae4ba8e31393630e5b9b4efbc8ce5ada6e6a0a1e5898de8baabe4b8bae5b9bfe8a5bfe59586e4b89ae4b893e7a791e5ada6e6a0a1e5928ce5b9bfe8a5bfe8b4a2e7bb8fe5ada6e6a0a1e38082e5ada6e999a2e4bd8de4ba8ee5b9bfe8a5bfe9a696e5ba9ce58d97e5ae81e5b882efbc8ce698afe4b880e68980e79c81e5b19ee585a8e697a5e588b6e699aee9809ae69cace7a791e999a2e6a0a1efbc8ce794b1e58e9fe5b9bfe8a5bfe8b4a2e694bfe9ab98e7ad89e4b893e7a791e5ada6e6a0a1e5928ce5b9bfe8a5bfe59586e4b89ae9ab98e7ad89e4b893e7a791e5ada6e6a0a1e59088e5b9b6e8808ce68890efbc8ce698afe5b9bfe8a5bfe7bb8fe6b58ee5928ce7a4bee4bc9ae58f91e5b195e680bbe4bd93e8a784e58892e4b8ade9878de782b9e5bbbae8aebee79a84e9ab98e7ad89e999a2e6a0a1e4b98be4b880e380820d0a, 0, 5, 1),
(6, 0xe5b9bfe8a5bfe69cbae794b5e8818ce4b89ae68a80e69cafe5ada6e999a2, 0xe5b9bfe8a5bfe69cbae794b5e8818ce4b89ae68a80e69cafe5ada6e999a2e5a78be5bbbae4ba8e31393538e5b9b4efbc8ce59d90e890bde59ca8e2809ce4b8ade59bbde7bbbfe59f8ee2809de5b9bfe8a5bfe9a696e5ba9ce58d97e5ae81e5b882efbc8ce698afe7bb8fe69599e882b2e983a8e689b9e58786e68890e7ab8be79a84e4b880e68980e585ace58a9ee585a8e697a5e588b6e699aee9809ae9ab98e7ad89e8818ce4b89ae999a2e6a0a1efbc8ce99ab6e5b19ee5b9bfe8a5bfe5a3aee6978fe887aae6b2bbe58cbae5b7a5e4b89ae5928ce4bfa1e681afe58c96e5a794e59198e4bc9aefbc8ce698afe585a8e59bbde9a696e689b9e38081e5b9bfe8a5bfe9a696e5aeb6e59bbde5aeb6e7a4bae88c83e680a7e9aaa8e5b9b2e9ab98e8818ce999a2e6a0a1efbc8ce59bbde5aeb6e7a4bae88c83e680a7e9ab98e8818ce5bbbae8aebee9878de782b938e68980e999a2e6a0a1e4b98be4b880e38082, 0, 6, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`shool_id`), ADD KEY `FK302BCFE98D4A204` (`city_id`);

--
-- Indexes for table `city_info`
--
ALTER TABLE `city_info`
 ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `scenics`
--
ALTER TABLE `scenics`
 ADD PRIMARY KEY (`scenic_id`), ADD KEY `FK721F4100D419A66B` (`shool_id`), ADD KEY `hhhh` (`city_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `shool_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `city_info`
--
ALTER TABLE `city_info`
MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `scenics`
--
ALTER TABLE `scenics`
MODIFY `scenic_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- 限制导出的表
--

--
-- 限制表 `category`
--
ALTER TABLE `category`
ADD CONSTRAINT `FK302BCFE98D4A204` FOREIGN KEY (`city_id`) REFERENCES `city_info` (`city_id`);

--
-- 限制表 `scenics`
--
ALTER TABLE `scenics`
ADD CONSTRAINT `rtrtr` FOREIGN KEY (`city_id`) REFERENCES `city_info` (`city_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `FK721F4100D419A66B` FOREIGN KEY (`shool_id`) REFERENCES `category` (`shool_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

