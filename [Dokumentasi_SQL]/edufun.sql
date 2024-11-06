-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2024 at 06:41 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edufun`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `category` enum('IM','SE') NOT NULL,
  `image` varchar(255) NOT NULL,
  `view_count` bigint(20) NOT NULL DEFAULT 0,
  `writer_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `category`, `image`, `view_count`, `writer_id`, `created_at`, `updated_at`) VALUES
(1, 'Human and Computer Interaction', 'Human-Computer Interaction (HCI) focuses on the design and use of computer technology, particularly the interfaces between humans and computers. This field combines theories from computer science, psychology, and design to create effective user interfaces. Key principles include user-centered design, usability testing, and interaction design patterns. Modern HCI extends beyond traditional desktop interfaces to include mobile devices, virtual reality, and ambient computing. Researchers study how people interact with computers, developing models of user behavior, and creating guidelines for interface design. Important considerations include cognitive load, accessibility, error prevention, and user satisfaction. The field also addresses cultural and social aspects of technology use, ensuring interfaces are appropriate for diverse user groups. Recent developments incorporate artificial intelligence and machine learning to create more adaptive and personalized interfaces.', 'IM', 'https://as1.ftcdn.net/v2/jpg/04/84/46/40/1000_F_484464043_DeVl9kWxKvPn4mRhjbGzzw3mTVCt9FNv.jpg', 4, 2, '2024-11-03 17:23:57', '2024-11-04 23:58:45'),
(2, 'User Experience', 'User Experience (UX) encompasses all aspects of end-user interaction with a company, its services, and products. It goes beyond mere usability to include emotional, behavioral, and contextual dimensions of product use. Effective UX design requires a deep understanding of user needs, limitations, and motivations. This involves extensive research, including user interviews, surveys, and behavioral analysis. The UX design process typically includes creating user personas, journey maps, and information architecture. Designers must consider various elements such as visual hierarchy, navigation patterns, and feedback mechanisms. The goal is to create products that are not only functional but also enjoyable and meaningful to use. Success metrics include user satisfaction, task completion rates, and emotional engagement. Modern UX design also considers accessibility, cross-platform consistency, and performance optimization.', 'IM', 'https://as2.ftcdn.net/v2/jpg/02/50/09/13/1000_F_250091319_3kalhfjeAzM6qScxv8TFi5KudqT7q7Ok.jpg', 1, 1, '2024-11-03 17:23:57', '2024-11-03 21:39:35'),
(3, 'User Experience for Digital Immersive Technology', 'User Experience in Digital Immersive Technology focuses on creating engaging and natural interactions in virtual and augmented reality environments. This emerging field combines traditional UX principles with spatial design and human perception psychology. Key considerations include preventing motion sickness, maintaining user orientation, and creating intuitive gesture-based interactions. Designers must account for the unique challenges of 3D spaces, such as depth perception, field of view, and physical comfort during extended use. The immersive experience should balance realism with usability, ensuring users can navigate and interact effectively in virtual environments. This includes designing for different input methods, from hand controllers to eye tracking and voice commands. Special attention is paid to reducing cognitive load while maintaining presence and immersion. The field also addresses social aspects of virtual interactions, accessibility concerns, and the integration of haptic feedback.', 'IM', 'https://as1.ftcdn.net/v2/jpg/04/19/15/12/1000_F_419151287_bjimS9uDLp3ANFjnTxaXDR6ZGSeXepZ5.jpg', 4, 1, '2024-11-03 17:23:57', '2024-11-03 21:39:50'),
(4, 'Pattern Software Design', 'Pattern Software Design, also known as design patterns, represents reusable solutions to common problems in software development. These patterns provide tested, proven development paradigms that help developers create more maintainable and scalable software. The most widely used patterns include Creational patterns like Singleton and Factory Method, Structural patterns such as Adapter and Composite, and Behavioral patterns like Observer and Strategy. Each pattern describes the problem it solves, when it should be used, and the consequences of its implementation. Design patterns promote code reusability, extensibility, and modularity while reducing the complexity of software systems. They also facilitate communication between developers by providing a common vocabulary for discussing software architecture. Understanding and properly implementing design patterns is crucial for creating robust, flexible, and maintainable software systems that can evolve with changing requirements.', 'SE', 'https://as1.ftcdn.net/v2/jpg/03/18/81/58/1000_F_318815873_b0vP7x3B3I2KsMHHbJOftovC7rq7XJAy.jpg', 0, 2, '2024-11-03 17:23:57', '2024-11-03 17:23:57'),
(5, 'Agile Software Development', 'Agile Software Development is an iterative approach to project management and software development that emphasizes flexibility, customer collaboration, and rapid delivery of functional software. This methodology breaks projects into small, manageable chunks called sprints, typically lasting two to four weeks. Key principles include responding to change over following a plan, working software over comprehensive documentation, and individual interactions over processes and tools. Agile teams practice daily stand-ups, sprint planning, retrospectives, and continuous integration/deployment. The methodology promotes adaptive planning, evolutionary development, and continuous improvement. Teams work in cross-functional groups, encouraging collaboration and self-organization. Agile methodologies like Scrum and Kanban provide frameworks for implementing these principles effectively. This approach helps teams deliver value faster, adapt to changing requirements, and maintain high software quality through regular feedback and testing.', 'SE', 'https://as1.ftcdn.net/v2/jpg/01/81/28/98/1000_F_181289867_9kjKVvlUShaMGcBZjLpfVQMaeDUSL6nK.jpg', 2, 3, '2024-11-03 17:23:57', '2024-11-05 22:30:05'),
(6, 'Code Re-engineering', 'Code Re-engineering involves the examination and alteration of existing software systems to reconstitute them in a new form. This process includes improving the systems functionality, performance, and maintainability while preserving its essential functions. The practice encompasses various activities such as reverse engineering, code restructuring, data restructuring, and forward engineering. Engineers analyze the current systems architecture, identify problematic areas, and implement modern design patterns and best practices. Key aspects include improving code readability, reducing technical debt, optimizing performance, and ensuring compatibility with modern technologies. The process often involves refactoring code, updating deprecated functions, and implementing automated testing. Successful re-engineering requires careful planning, thorough documentation, and strategic implementation to minimize risks while maximizing system improvements. This practice is essential for modernizing legacy systems and extending their operational lifespan.', 'SE', 'https://as2.ftcdn.net/v2/jpg/00/68/02/31/1000_F_68023133_AP2eMraCtWu5HYJV8OG9FOL0BxbV6dh6.jpg', 0, 1, '2024-11-03 17:23:57', '2024-11-03 17:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(41, '0001_01_01_000000_create_users_table', 1),
(42, '0001_01_01_000001_create_cache_table', 1),
(43, '0001_01_01_000002_create_jobs_table', 1),
(44, '2024_11_03_134344_create_writers_table', 1),
(45, '2024_11_03_144257_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('eL7YUhT2BTMUBOGS1jMvQ7b1pSnO8q4mQTGGFQBN', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNlpKblpzMXN2V2loUEZmMHpBZmd2bDNQNkRNcHU0b2g1VlBpVzU0TCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wb3B1bGFyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1730794374),
('vh6fULEMyGrR8pRjrdbAc4nmfEneQWbJsUiTiyEx', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYlZtQ2xobUVLNllDb1QzeGVUblZnTjNydzJhTmlzcmdOSjRqRDdkSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730695434),
('xRf9n0MLdETevITBOOXYgS7W0gW24pp1D38ezyTj', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRFdESklBS0NiVEdVZmFnRmtiUXdrUVBzUXp3VDZvaWpOMEJOWFNpcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730871518);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2024-11-03 17:23:55', '$2y$12$uJc1oQLonOpcDcULWIRwYer73lg8ldmnHDLx.wugqBiRv/jg1dkTm', 'faPeKNZAFB', '2024-11-03 17:23:55', '2024-11-03 17:23:55'),
(2, 'Galur Kasusra Hidayanto', 'cemeti.tampubolon@gmail.co.id', NULL, '$2y$12$5eO4HiAYxfLShpz.PszPW.wtfyPJHdt2rTMeK2NeXn.9/PCJBb4Au', NULL, '2024-11-03 17:23:56', '2024-11-03 17:23:56'),
(3, 'Zizi Suryatmi', 'marbun.vivi@anggraini.desa.id', NULL, '$2y$12$v2VIEM2KwV0xvaG6VJZYDup2lrZbdC57Um6apbuwbMvYiHo2ooDjK', NULL, '2024-11-03 17:23:56', '2024-11-03 17:23:56'),
(4, 'Gara Thamrin', 'viman22@gmail.com', NULL, '$2y$12$FafSuMJcy4ENf8YDvl158OtSYnAfhsJ/IiPWhNgz7Ev1p8Kw5pWSC', NULL, '2024-11-03 17:23:56', '2024-11-03 17:23:56'),
(5, 'Paiman Bakiono Habibi', 'naradi84@mulyani.biz', NULL, '$2y$12$XNyHNxIR8KrkEEUNEHZEGeRvXT8G30J2taoGp7FieaYl2nEanbtDu', NULL, '2024-11-03 17:23:57', '2024-11-03 17:23:57'),
(6, 'Legawa Ilyas Hutagalung', 'qsihotang@yahoo.co.id', NULL, '$2y$12$yXakja266l6vE4oMFk0RKuiW4eOdtMdtglAj3VIHhhEl/sVBw30ua', NULL, '2024-11-03 17:23:57', '2024-11-03 17:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `writers`
--

CREATE TABLE `writers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `writers`
--

INSERT INTO `writers` (`id`, `name`, `position`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Dimas Lasmono Nababan S.Sos', 'Front End Developer', 'https://as2.ftcdn.net/v2/jpg/03/26/98/51/1000_F_326985142_1aaKcEjMQW6ULp6oI9MYuv8lN9f8sFmj.jpg', '2024-11-03 17:23:57', '2024-11-03 17:23:57'),
(2, 'Qori Maimunah Halimah', 'Back End Developer', 'https://as2.ftcdn.net/v2/jpg/00/88/53/89/1000_F_88538986_5Bi4eJ667pocsO3BIlbN4fHKz8yUFSuA.jpg', '2024-11-03 17:23:57', '2024-11-03 17:23:57'),
(3, 'Rafid Situmorang', 'UI/UX Designer', 'https://as1.ftcdn.net/v2/jpg/00/94/63/20/1000_F_94632007_FD0m1V9r5Jpnr6jJInXauMCBruGtnyis.jpg', '2024-11-03 17:23:57', '2024-11-03 17:23:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_writer_id_foreign` (`writer_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `writers`
--
ALTER TABLE `writers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `writers`
--
ALTER TABLE `writers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_writer_id_foreign` FOREIGN KEY (`writer_id`) REFERENCES `writers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
