
--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(20) NOT NULL,
  `nama_barang` text NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi` text NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `harga`, `deskripsi`, `stok`) VALUES
('1000152', 'Beras Patin 20 Kg', 200000, 'beras patin 20Kg', 136),
('1000271', 'Beras Raja 20 Kg', 250000, 'Beras Raja 20 Kg', 86),
('1000329', 'Beras Selancar 20 Kg', 230000, 'Beras Selancar 20 Kg', 118),
('1000454', 'Beras Topi Koki 20 Kg', 250000, 'Beras Topi Koki 20 Kg', 58),
('1000546', 'Gula PSM 1Kg', 20000, 'Gula PSM 1Kg', 64),
('1000661', 'Gula Rose Brand 1Kg', 21000, 'Gula Rose Brand 1Kg', 32),
('1000746', 'Gulaku 1Kg', 19000, 'Gulaku 1Kg', 45),
('1000876', 'Minyak Goreng Bimoli 1Kg', 32000, 'Minyak Goreng Bimoli 1Kg', 84),
('1000966', 'Minyak Goreng Fortune 1Kg', 22000, 'Minyak Goreng Fortune 1Kg', 16),
('1001068', 'Minyak Goreng Sovia 1Kg', 24000, 'Minyak Goreng Sovia 1Kg', 67),
('1001185', 'Minyak Goreng Sunco 1Kg', 22000, 'Minyak Goreng Sunco 1Kg', 72),
('1001265', 'Tepung Terigu Cakra Kembar 1Kg', 18000, 'Tepung Terigu Cakra Kembar 1Kg', 41),
('1001351', 'Tepung Terigu Segitiga Biru 1Kg', 17000, 'Tepung Terigu Segitiga Biru 1Kg', 149);

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `id_barang_masuk` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `id_barang` varchar(20) NOT NULL,
  `jlh` int(11) NOT NULL,
  `hrg_satuan` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `barang_masuk`
--

INSERT INTO `barang_masuk` (`id_barang_masuk`, `tgl`, `id_barang`, `jlh`, `hrg_satuan`, `subtotal`) VALUES
(1, '2024-10-01', '1000271', 13, 200000, 2600000),
(2, '2024-10-05', '1000152', 7, 170000, 1190000),
(3, '2024-10-03', '1000546', 12, 45000, 540000),
(4, '2024-10-08', '1000966', 25, 20000, 500000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

CREATE TABLE `detail_penjualan` (
  `id_detail` int(11) NOT NULL,
  `id_penjualan` varchar(20) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jlh` int(11) NOT NULL,
  `hrg` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`id_detail`, `id_penjualan`, `id_barang`, `jlh`, `hrg`, `subtotal`) VALUES
(1, '241024828', 1000152, 2, 200000, 400000),
(2, '241024916', 1000329, 1, 230000, 230000),
(3, '241024916', 1000746, 1, 19000, 19000),
(4, '241024772', 1000746, 1, 19000, 19000),
(5, '241024772', 1001068, 1, 24000, 24000),
(6, '241024736', 1000329, 1, 230000, 230000),
(7, '241024736', 1000966, 1, 22000, 22000),
(8, '241024931', 1001265, 1, 18000, 18000),
(9, '241024931', 1000152, 1, 200000, 200000),
(10, '241024931', 1000746, 1, 19000, 19000),
(11, '99999', 1000271, 1, 250000, 250000);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` varchar(20) NOT NULL,
  `tgl` date NOT NULL,
  `total` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `id_user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `tgl`, `total`, `bayar`, `kembalian`, `id_user`) VALUES
('241024736', '2024-10-03', 252000, 300000, 48000, '2'),
('241024772', '2024-10-14', 43000, 100000, 57000, '1'),
('241024828', '2024-10-22', 400000, 400000, 0, '2'),
('241024916', '2024-10-22', 249000, 250000, 1000, '1'),
('241024931', '2024-10-21', 237000, 300000, 63000, '2');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `akses` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `akses`) VALUES
(1, 'luna', '12345', 'Admin'),
(2, 'nia', '12345', 'Admin'),
(3, 'anton', '12345', 'Pimpinan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`id_barang_masuk`);

--
-- Indexes for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  MODIFY `id_barang_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `detail_penjualan`
--
ALTER TABLE `detail_penjualan`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `user`
--
