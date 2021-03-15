CREATE DATABASE ums;
USE ums;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` enum('male','female') CHARACTER SET utf8,
  `mobile` varchar(50),
  `designation` varchar(50),
  `image` varchar(250),
  `type` varchar(250) DEFAULT 'general',
  `status` enum('active','pending','deleted','') DEFAULT 'pending',
  `authtoken` varchar(250)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`, `gender`, `mobile`, `designation`, `image`, `type`, `status`, `authtoken`) VALUES
(1, 'admin', 'mis', 'admin@ucsc.com', '202cb962ac59075b964b07152d234b70', 'male', '123456789', 'admin', '', 'administrator', 'active', ''),
(2, 'user', 'mis', 'user@ucsc.com', '202cb962ac59075b964b07152d234b70', 'male', '123456789', 'Department User', '', 'general', 'active', '73f66749989c7b09389894f1b27daa7387f9956fa51c87c1ba4fc4684b91acb5');

ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
