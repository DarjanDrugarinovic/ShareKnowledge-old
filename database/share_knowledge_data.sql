--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', '$2b$10$8cJJ8ZirZ5mqIP5xH61QjukOxG8Ny3GrHGjnYPOwULazBHAmDO/8m', 'admin'),
(82, 'darjan', '$2b$10$vRDEGdZf5ih15UiZflx6V.CHJPPknDdvVMuTKT0Cedh1iKvlGSFLy', 'admin'),
(83, 'test', '$2b$10$2oau9WWaPCgpnLC6RUnem.IhZox.qm94s4eAkKpkSMVC/aaSy7ypW', 'posetilac'),
(84, 'aaa', '$2b$10$GfLP9s8vIFmmXhSrodWh5uJgHcqPQSR/s.SbO8oJMBeUrULGI4JrK', 'posetilac'),
(86, 'bbbb', '$2b$10$voFqA0k3UzCKNlHeT2gVPet69aOHjPkq32TfJdHwpmeNQqaTQM2OC', 'posetilac'),
(87, 'ds', '$2b$10$RSFIcn46H6RfhCqhyw53qu5ppIMMxt7E14QUy/MblsFQL04zV3.ka', 'posetilac'),
(88, 'eee', '$2b$10$gX2j3fzHjOrmVmJZOF8Rd.xmEGyVm7jSeyYGVhscTeP4Fr45J9yVC', 'posetilac'),
(89, 'sss', '$2b$10$7YgHSb6wEOdBNDGiwUoEneYsWuA0qAkt9/FZhEOO1BqVQ6A/tStri', 'posetilac');
-- --------------------------------------------------------

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `text`, `type`, `likes`, `date`, `userId`) VALUES
(4, 'das', 'dsa', 'pitanje', 50, '18-November-2021', 1),
(7, 'aaaa', 'eeeee', 'pitanje', 50, '07-January-2022', 1),
(8, 'aaaa', 'eeeee', 'pitanje', 50, '07-January-2022', 1),
(9, 'aaaa', 'eeeee', 'pitanje', 50, '07-January-2022', 1),
(10, 'aaaa', 'eeeee', 'pitanje', 50, '07-January-2022', 1),
(11, 'test', 'test', 'pitanje', 50, '10-January-2022', 1),
(12, 'aaa', 'bbb', 'pitanje', 50, '10-January-2022', 1),
(13, 'test', 'test', 'pitanje', 50, '10-January-2022', 1),
(14, 'ovo je objava', 'eeee', 'pitanje', 50, '15-June-2022', 1);
-- --------------------------------------------------------

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `tag`) VALUES
(1, 'aaa'),
(2, 'bbbb'),
(3, 'ccc'),
(4, 'dddd');
-- --------------------------------------------------------

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `postId`, `tagId`) VALUES
(1, 9, 2),
(2, 10, 2),
(3, 13, 1),
(4, 14, 2);
-- --------------------------------------------------------

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `path`, `ext`, `postId`) VALUES
(1, '1637198768427.pdf', 'pdf', 4),
(2, '1637198768398.docx', 'docx', 4),
(3, '1637198768343.jpg', 'jpg', 4),
(4, '1637198768359.jpg', 'jpg', 4),
(5, '1637198768368.jpg', 'jpg', 4),
(6, '1641854655338.png', 'png', 13),
(7, '1641854655441.pdf', 'pdf', 13),
(8, '1655265210525.doc', 'doc', 14);

-- --------------------------------------------------------

