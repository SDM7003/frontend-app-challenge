-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Сен 25 2022 г., 15:19
-- Версия сервера: 10.1.38-MariaDB
-- Версия PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `graphics_card`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cards`
--

CREATE TABLE `cards` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `info1` varchar(300) NOT NULL,
  `info2` varchar(300) NOT NULL,
  `info3` varchar(300) NOT NULL,
  `info4` varchar(300) NOT NULL,
  `small_desc` text NOT NULL,
  `full_desc` text NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cards`
--

INSERT INTO `cards` (`id`, `name`, `photo`, `info1`, `info2`, `info3`, `info4`, `small_desc`, `full_desc`, `price`) VALUES
(1, 'TUF Gaming GeForce RTX™ 3080 Ti OC Edition', 'https://dlcdnwebimgs.asus.com/files/media/6e0e879d-9fa0-4e12-a93f-d5437a8511dc/v1/img/kv-cover.png', 'PCI Express 4.0', 'OpenGL®4.6', '12GB GDDR6X', 'ASUS', 'Based on the Ampere architecture and designed to handle the graphical demands of 4K gaming and 1440p at high frame rates, the ASUS GeForce RTX 3080 Ti TUF Gaming OC Graphics Card brings the power of real-time ray tracing and AI to your PC games.', 'The TUF GAMING GeForce RTX™ 3080 Ti has been stripped down and built back up to provide more robust power and cooling. A new all-metal shroud houses three powerful axial-tech fans that utilize durable dual ball fan bearings. Fan rotation has been optimized for reduced turbulence, and a stop mode brings all three fans to a halt at low temps. Beneath, independent heatsinks for the GPU and memory keep thermals under tight control. Additional features, including TUF components, Auto-Extreme Technology, a new GPU bracket, and a backplate vent make the TUF a proper powerhouse. For builders looking for a new “old faithful”, this card has your back.', 950),
(2, 'ROG Strix GeForce RTX® 4080 16GB GDDR6X', 'https://dlcdnwebimgs.asus.com/files/media/A7EA4CFF-182B-4384-A156-6342888B45EA/v1/img/kv/pd.png', 'PCI Express 4.0', 'OpenGL®4.6', '16GB GDDR6X', 'ASUS', 'The ROG Strix GeForce RTX® 4080 brings a whole new meaning to going with the flow.\r\nInside and out, every element of the card gives the monstrous GPU headroom to breathe freely and achieve ultimate performance.\r\nThe unleashed reign of the NVIDIA Ada Lovelace architecture is here.', 'The ROG Strix GeForce RTX 4090 is designed with cooling as the top priority, featuring ultra-high resolutions and fast refresh rates. The card’s 3.5-slot design consists of a die-cast metal frame, shroud, and backplate. The ultra-rigid structure uses frames with extremely tight tolerances to prevent the PCB from sagging or warping, while still allowing for unparalleled airflow through an enlarged pass-through vent along the back of the 357 mm long card.\r\n\r\nThe GeForce RTX 4090 heatsink design has been redesigned, with a new vapor chamber and 30% more surface area for heat dissipation than the previous generation ROG Strix GeForce RTX 3090. The patented vapor chamber design adds milled channels underneath the heatpipes, allowing more heat to efficiently transfer to the four 8 mm and three 6 mm heatpipes and travel to the heatsink fins. When subjected to a 500-watt thermal load, this potent pairing allows for 5 °C cooler temperatures than a conventional vapor chamber design.', 673),
(3, 'Radeon RX 6900 XT GAMING X TRIO 16G', 'https://storage-asset.msi.com/global/picture/image/feature/vga/AMD/RX6800/RX-6800-Gaming/kv_bg.png', 'PCI Express® Gen 4', 'Radeon™ RX 6900 XT', '16GB GDDR6', 'MSI', 'The latest iteration of MSI’s iconic GAMING series once again brings performance, low-noise efficiency, and aesthetics that hardcore gamers have come to recognize and trust. Now you too can enjoy all your favorite games with a powerful graphics card that stays cool and silent. Just the way you like it.', 'Get the ultimate game changer. AMD Radeon™ RX 6900 XT graphics card features breakthrough AMD RDNA™ 2 architecture. Now you can game in 4K with ultra-smooth frame rates and at max settings. Never again compromise on resolution to enjoy fluid, high-refresh-rate gaming. Experience a new level of immersion with the AMD Radeon™ RX 6900 XT graphics card.\r\n', 1229),
(4, 'GeForce RTX™ 2060 OC 6G GDDR6X', 'https://static.gigabyte.com/StaticFile/Image/Global/07be682e2c8cf53a1286c3d9baf3a127/Product/23484/p', 'PCI-E 3.0 x 16', 'OC. 4.6.', 'GDDR6', 'Gigabyte', 'WINDFORCE 2X cooling system features 2x 90mm unique blade fans, alternate spinning fan, 2 composite copper heat pipes direct touch GPU and 3D active fan functionality, together delivering an effective heat dissipation capacity for higher performance at lower temperatures.', 'The GeForce 20 series is a family of graphics processing units developed by Nvidia. Serving as the successor to the GeForce 10 series, the line started shipping on September 20, 2018,[9] and after several editions, on July 2, 2019, the GeForce RTX Super line of cards was announced.\r\n\r\nThe 20 series marked the introduction of Nvidia\'s Turing microarchitecture, and the first generation of RTX cards, the first in the industry to implement realtime hardware ray tracing in a consumer product.[12] In a departure from Nvidia\'s usual strategy, the 20 series has no entry level range, leaving it to the 16 series to cover this segment of the market.\r\n\r\nThese cards are succeeded by the GeForce 30 series, powered by the Ampere microarchitecture.', 270),
(5, 'Palit GeForce RTX® 3060 Dual GDDR6', 'https://www.palit.com/product/vga/picture/p04089/p04089_propng_7775ffbb636c791b.png', 'PCI-E 4.0', 'OpenGL®4.6', '12GB GDDR6', 'Palit', 'The GeForce RTX® 3060 lets you take on the latest games using the power of Ampere—NVIDIA’s 2nd generation RTX architecture. Get incredible performance with enhanced Ray Tracing Cores and Tensor Cores, new streaming multiprocessors, and high-speed G6 memory.', '\r\nOverviewSpecificationsReviewDownloadGalleryYouTube\r\nThe GeForce RTX® 3060 lets you take on the latest games using the power of Ampere—NVIDIA’s 2nd generation RTX architecture. Get incredible performance with enhanced Ray Tracing Cores and Tensor Cores, new streaming multiprocessors, and high-speed G6 memory.\r\nThe Palit GeForce RTX® 3060 Dual Series features two 90mm big fans for efficient cooling performance, and large cut-through area on the back plate for optimized heat ventilation. Customizable RGB lighting is also decorated on the side of the shroud for gamers to enjoy minimalist lighting effects.', 574),
(6, 'Palit NVIDIA GeForce® GT 1030 2048MB GDDR5', 'https://www.palit.com/product/vga/picture/p02883/p02883_bigimage_68958fd726d417d9.jpg', 'PCI-E 3.0 x 4', 'OpenGL®3', '2048MB GDDR5', 'Palit', 'The new NVIDIA GeForce® GT 1030, powered by the award-winning NVIDIA Pascal™ architecture, accelerates your entire PC experience. Its powerful graphics engine and state-of-the-art technologies provide a performance upgrade to drive today\'s most demanding PC applications.', 'The new NVIDIA GeForce® GT 1030, powered by the award-winning NVIDIA Pascal™ architecture, accelerates your entire PC experience. Its powerful graphics engine and state-of-the-art technologies provide a performance upgrade to drive today\'s most demanding PC applications.', 140),
(7, 'ZOTAC GAMING GeForce RTX 3060 GDDR6 12GB', 'https://m.media-amazon.com/images/I/7156DLyUsYL._AC_SL1500_.jpg', 'PCI Express 4.0', '4.6', '12GB GDDR6', 'ZOTAC', 'ZOTAC GAMING GeForce RTX 3060 Twin Edge OC GDDR6 12GB Graphics Card is built for power! The card has NVIDIA Ampere architecture, 2nd Gen Ray Tracing Cores, 3rd Gen Tensor Cores12GB 192-bit GDDR6, 15 Gbps, PCIE 4.0 slot, IceStorm 2.0 Cooling technology, Active Fan Control system, Freeze Fan Stop, Metal Backplate. The graphics card is 8K and 4 Display Ready, HDCP 2.3, VR Ready3 x DisplayPort 1.4a, 1 x HDMI 2.1, DirectX 12 Ultimate, Vulkan RT API, OpenGL 4.6 features. The Boost Clock is 1807 MHz. Get Amplified with the ZOTAC GAMING GeForce RTX 30 Series based on the NVIDIA Ampere architecture. Built with enhanced RT Cores and Tensor Cores, new streaming multiprocessors, and high-speed GDDR6 memory, the ZOTAC GAMING GeForce RTX 3060 Twin Edge OC gives rise to amplified gaming with high fidelity. It has 02 years warranty (3 Years Warranty available if registered online within 28 days of Purchase) Total warranty:- 2+ 3 ( after reg.) = Total 5 years\r\n', 'ZOTAC GAMING GeForce RTX 3060 Twin Edge OC GDDR6 12GB Graphics Card is built for power! The card has NVIDIA Ampere architecture, 2nd Gen Ray Tracing Cores, 3rd Gen Tensor Cores12GB 192-bit GDDR6, 15 Gbps, PCIE 4.0 slot, IceStorm 2.0 Cooling technology, Active Fan Control system, Freeze Fan Stop, Metal Backplate. The graphics card is 8K and 4 Display Ready, HDCP 2.3, VR Ready3 x DisplayPort 1.4a, 1 x HDMI 2.1, DirectX 12 Ultimate, Vulkan RT API, OpenGL 4.6 features. The Boost Clock is 1807 MHz. Get Amplified with the ZOTAC GAMING GeForce RTX 30 Series based on the NVIDIA Ampere architecture. Built with enhanced RT Cores and Tensor Cores, new streaming multiprocessors, and high-speed GDDR6 memory, the ZOTAC GAMING GeForce RTX 3060 Twin Edge OC gives rise to amplified gaming with high fidelity. It has 02 years warranty (3 Years Warranty available if registered online within 28 days of Purchase) Total warranty:- 2+ 3 ( after reg.) = Total 5 years\r\n', 703),
(8, 'PNY NVIDIA GeForce RTX 3070 Ti XLR8', 'https://static.bhphoto.com/images/multiple_images/images500x500/1625144033_IMG_1563492.jpg', 'PCIe 4.0 x16 Interface', 'OpenGL®4.6', '8GB of GDDR6X VRAM', 'PNY', 'Based on the Ampere architecture and designed to handle the graphical demands of 1440p gaming at high frame rates, the PNY NVIDIA GeForce RTX 3070 Ti XLR8 Gaming REVEL EPIC-X RGB Triple Fan Edition Graphics Card brings the power of real-time ray tracing and AI to your PC games.', 'Based on the Ampere architecture and designed to handle the graphical demands of 1440p gaming at high frame rates, the PNY NVIDIA GeForce RTX 3070 Ti XLR8 Gaming REVEL EPIC-X RGB Triple Fan Edition Graphics Card brings the power of real-time ray tracing and AI to your PC games. The GPU features 8GB of GDDR6X VRAM and a 256-bit memory interface, offering improved performance and power efficiency over the previous Turing-based generation.\r\n\r\nThe front panel of the card features a variety of outputs, such as DisplayPort 1.4a and HDMI 2.1. HDMI 2.1 supports up to 48 Gb/s bandwidth and a range of higher resolutions and refresh rates, including 8K at 60fps, 4K at 120fps, and even up to 10K. The RTX 3070 Ti is not just about high-resolution gaming. Computationally intensive programs can utilize the GPU\'s 6144 cores to accelerate tasks using CUDA and other APIs. For cooling, this card has a triple fan cooler. It also supports RGB lighting.', 610);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cards`
--
ALTER TABLE `cards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
