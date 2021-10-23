-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2020 at 09:31 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_rights`
--

CREATE TABLE `access_rights` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `access_rights`
--

INSERT INTO `access_rights` (`id`, `account_id`, `name`) VALUES
(1, 2, 'ROLE-G-1stLineHelpdesk\r\n'),
(2, 2, 'ROLE-G-ExecSupport\r\n'),
(3, 2, 'ROLE-G-ITSecadmin\r\n'),
(4, 2, 'ROLE-G-2ndLineWintelSupport\r\n'),
(5, 2, 'ROLE-G-3rdLineWintelSupport\r\n'),
(6, 2, 'ROLE-G-3rdLinePEG\r\n'),
(7, 2, 'ROLE-G-DBA2ndLineSupport\r\n'),
(8, 2, 'ROLE-G-Storage2ndLineSupport\r\n'),
(9, 2, 'CSC Exchange 1st Line Support \r\n'),
(10, 2, 'CSC Exchange 2nd Line Support \r\n'),
(11, 2, 'ROLE-G-Lync2ndLineSupport\r\n'),
(12, 2, 'ROLE-G-Lync3rdLineSupport\r\n'),
(13, 2, 'ROLE-G-WorkplaceDeskside\r\n'),
(14, 2, 'ROLE-G-WorkplaceAppPackager\r\n'),
(15, 2, 'ROLE-G-WorkplaceAppDevMan\r\n'),
(16, 2, 'ROLE-G-WorkplaceSOEDev\r\n'),
(17, 2, 'ROLE-G-WorkplaceAVPatchMan\r\n'),
(18, 2, 'ROLE-G-Workplace3rdLineSupport\r\n'),
(19, 2, 'ROLE-G-Network2ndLineSupport\r\n'),
(20, 2, 'ROLE-G-Network3rdLineSupport\r\n'),
(21, 2, 'PERM-D-ADSiteLinkMgrRead\r\n'),
(22, 2, 'PERM-D-ADSiteMgrRead\r\n'),
(23, 2, 'PERM-D-ADSubnetMgrRead\r\n'),
(24, 2, 'PERM-D-DNSReadOnly\r\n'),
(25, 2, 'PERM-D-DNSFull\r\n'),
(26, 2, 'PERM-D-SiteSubnetFull\r\n'),
(27, 2, 'PERM-D-DomainAdmin\r\n'),
(28, 2, 'PERM-D-GPOFull.Servers\r\n'),
(29, 2, 'PERM-D.GPOFull\r\n'),
(30, 2, 'PERM-D-GPOFull..UAT.Users\r\n'),
(31, 2, 'PERM-D-GPOFull..UAT.Devices\r\n'),
(32, 2, 'PERM-D-OURead\r\n'),
(33, 2, 'PERM-D-OUFull\r\n'),
(34, 2, 'PERM-D-OUFull.CSC\r\n'),
(35, 2, 'PERM-D-OUFull.CSC.Users\r\n'),
(36, 2, 'PERM-D-PasswordReset.CSC.Users\r\n'),
(37, 2, 'PERM-D-OUFull.CSC.Groups\r\n'),
(38, 2, 'PERM-D-GroupMembership.CSC.Groups\r\n'),
(39, 2, 'PERM-D-OUFull.CSC.Roles\r\n'),
(40, 2, 'PERM-D-GroupMembership.CSC.Roles\r\n'),
(41, 2, 'PERM-D-OUFull.CSC.Perms\r\n'),
(42, 2, 'PERM-D-GroupMembership.CSC.Perms\r\n'),
(43, 2, 'PERM-D-OUFull.CSC.ServAccs\r\n'),
(44, 2, 'PERM-D-OUFull\r\n'),
(45, 2, 'PERM-D-UsersFull\r\n'),
(46, 2, 'PERM-D-PasswordReset.\r\n'),
(47, 2, 'PERM-D-GroupsFull\r\n'),
(48, 2, 'PERM-D-GroupMembership\r\n'),
(49, 2, 'PERM-D-GroupsFull..<Business Group>.Application Configuration\r\n'),
(50, 2, 'PERM-D-GroupsFull.Application Deployment\r\n'),
(51, 2, 'PERM-D-GroupMembership.Application Deployment\r\n'),
(52, 2, 'PERM-D-GroupsFull.Elevated Privileges\r\n'),
(53, 2, 'PERM-D-GroupMembership.Elevated Privileges\r\n'),
(54, 2, 'PERM-D-OUFull.Servers\r\n'),
(55, 2, 'PERM-D-OUDelete.Computers\r\n'),
(56, 2, 'PERM-D-ComputerFull\r\n'),
(57, 2, 'PERM-D-UserMembership\r\n'),
(58, 2, 'PERM-D-GroupsFull\r\n'),
(59, 2, 'PERM-D-OUFull.UAT.Devices\r\n'),
(60, 2, 'PERM-D-BackupOp.Servers\r\n'),
(61, 2, 'PERM-D-EventLogRead.Servers\r\n'),
(62, 2, 'PERM-D-RDP.Servers\r\n'),
(63, 2, 'PERM-D-LocalAdmin.Servers\r\n'),
(64, 2, 'PERM-D-RDP.Servers.Application\r\n'),
(65, 2, 'PERM-D-LocalAdmin.Servers.Application\r\n'),
(66, 2, 'PERM-D-RDP.Servers.Application.DesktopMan\r\n'),
(67, 2, 'PERM-D-LocalAdmin.Servers.Application.DesktopMan\r\n'),
(68, 2, 'PERM-D-RDP.Servers.Application.PKI\r\n'),
(69, 2, 'PERM-D-LocalAdmin.Servers.Application.PKI\r\n'),
(70, 2, 'PERM-D-RDP.Servers.Application.VMWare\r\n'),
(71, 2, 'PERM-D-LocalAdmin.Servers.Application.VMWare\r\n'),
(72, 2, 'PERM-D-RDP.Servers.Application.StoreMan\r\n'),
(73, 2, 'PERM-D-LocalAdmin.Servers.Application.StoreMan\r\n'),
(74, 2, 'PERM-D-RDP.Servers.Database\r\n'),
(75, 2, 'PERM-D-LocalAdmin.Servers.Database\r\n'),
(76, 2, 'PERM-D-RDP.Servers.Database.DesktopMan\r\n'),
(77, 2, 'PERM-D-LocalAdmin.Servers.Database.DesktopMan\r\n'),
(78, 2, 'PERM-D-RDP.Servers.Exchange and Lync\r\n'),
(79, 2, 'PERM-D-LocalAdmin.Servers.Exchange and Lync\r\n'),
(80, 2, 'PERM-D-RDP.Servers.FilePrint\r\n'),
(81, 2, 'PERM-D-LocalAdmin.Servers.FilePrint\r\n'),
(82, 2, 'PERM-D-RDP.Servers.TerminalServers\r\n'),
(83, 2, 'PERM-D-LocalAdmin.Servers.TerminalServers\r\n'),
(84, 2, 'PERM-D-ClientRDP\r\n'),
(85, 2, 'PERM-D-ClientAdmin\r\n'),
(86, 2, 'PERM-D-ClientEventLogRead\r\n'),
(87, 2, 'PERM-D-ClientNetConfig\r\n'),
(88, 2, 'PERM-D-RDP.UAT.Devices\r\n'),
(89, 2, 'PERM-D-ClientAdmin.UAT.Devices\r\n'),
(90, 2, 'PERM-D-LyncServiceDesk\r\n'),
(91, 2, 'PERM-D-LyncIDAdmin\r\n'),
(92, 2, 'PERM-D-Lync2ndLevel\r\n'),
(93, 2, 'PERM-D-Lync3rdLevel\r\n'),
(94, 2, 'PERM-D-FileFull.<NetAppCIFS>.UAT.Home\r\n'),
(95, 2, 'PERM-D-FileFull.<NetAppCIFS>.CSC.Home\r\n'),
(96, 2, 'PERM-D-DFSAddServer.HomeDrive\r\n'),
(97, 2, 'PERM-D-DFSAddServer.Service\r\n'),
(98, 2, 'PERM-D-DFSAddServer\r\n'),
(99, 2, 'PERM-D-Lync3rdLevel\r\n'),
(100, 2, 'PERM-D-Print.AllPrintServers\r\n'),
(101, 2, 'PERM-D-ManagePrinters.AllPrintServers\r\n'),
(102, 2, 'PERM-D-ManageDocuments.AllPrintServers\r\n'),
(103, 2, 'PERM-D-ViewPrintSrv.AllPrintServers\r\n'),
(104, 2, 'PERM-D-ManagePrintSrv.AllPrintServers\r\n'),
(105, 2, 'PERM-D-SQLSysAdmin.AllSqlSrv\r\n'),
(106, 2, 'PERM-D-SQLDiskAdmin.AllSqlSrv\r\n'),
(107, 2, 'PERM-D-ServerDiskMan.AllServers\r\n'),
(108, 2, 'PERM-D-DesktopAVAdmin\r\n'),
(109, 2, 'PERM-D-ServerAVAdmin\r\n'),
(110, 2, 'PERM-D-SCCMFullAdmin\r\n'),
(111, 2, 'PERM-D-SCCMSiteServers\r\n'),
(112, 2, 'PERM-D-SCCMApplicationAdmin\r\n'),
(113, 2, 'PERM-D-SCCMApplicationAuthor\r\n'),
(114, 2, 'PERM-D-SCCMApplicationDeploy\r\n'),
(115, 2, 'PERM-D-SCCMAssetManager\r\n'),
(116, 2, 'PERM-D-SCCMComplianceSettings\r\n'),
(117, 2, 'PERM-D-SCCMInfrastructureAdmin\r\n'),
(118, 2, 'PERM-D-SCCMOSDManager\r\n'),
(119, 2, 'PERM-D-SCCMOperationsAdmin\r\n'),
(120, 2, 'PERM-D-SCCMReadOnly\r\n'),
(121, 2, 'PERM-D-PAMCDRomRW\r\n'),
(122, 2, 'PERM-D-PAMCDRomRWEncrypt\r\n'),
(123, 2, 'PERM-D-PAMfloppyRW\r\n'),
(124, 2, 'PERM-D-PAMremovableRW\r\n'),
(125, 2, 'PERM-D-PAMremovableRWEncrypt\r\n'),
(126, 2, 'PERM-D-PAMServiceDeskAccess\r\n'),
(127, 2, 'PERM-D-PAMAdminAccess\r\n'),
(128, 2, 'PERM-D-AEMConsoleUsersAdmin\r\n'),
(129, 2, 'PERM-D-AEMConsoleUsersOperator\r\n'),
(130, 2, 'PERM-D-AEMWebConsoleUsers\r\n'),
(131, 2, 'PERM-D-BomgarRep\r\n'),
(132, 2, 'PERM-D-BomgarAdmin');

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`) VALUES
(1, 'Blue Network'),
(2, 'Red Network');

-- --------------------------------------------------------

--
-- Table structure for table `account_types`
--

CREATE TABLE `account_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account_types`
--

INSERT INTO `account_types` (`id`, `name`) VALUES
(1, 'Standard'),
(2, 'Enhanced Privileges'),
(3, 'Internal logon ');

-- --------------------------------------------------------

--
-- Table structure for table `approval_chains`
--

CREATE TABLE `approval_chains` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approval_chains`
--

INSERT INTO `approval_chains` (`id`, `account_id`, `group_id`, `level`) VALUES
(1, -1, 1, 1),
(2, -1, 2, 2),
(3, -1, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `contractor_statuses`
--

CREATE TABLE `contractor_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contractor_statuses`
--

INSERT INTO `contractor_statuses` (`id`, `name`) VALUES
(1, 'Value 1'),
(2, 'Value 2');

-- --------------------------------------------------------

--
-- Table structure for table `employee_statuses`
--

CREATE TABLE `employee_statuses` (
  `id` int(11) NOT NULL,
  `employee_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_statuses`
--

INSERT INTO `employee_statuses` (`id`, `employee_status`) VALUES
(1, 'Contractor'),
(2, 'Temp'),
(3, 'CSC');

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` int(11) NOT NULL,
  `user_account_id` int(11) NOT NULL,
  `form_status_id` int(11) NOT NULL DEFAULT 3,
  `date_submitted` datetime NOT NULL DEFAULT current_timestamp(),
  `date_approved` datetime DEFAULT NULL,
  `justification` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `user_account_id`, `form_status_id`, `date_submitted`, `date_approved`, `justification`) VALUES
(29, 25, 1, '2020-02-05 09:50:05', NULL, NULL),
(30, 26, 3, '2020-02-05 09:54:49', NULL, NULL),
(31, 27, 3, '2020-02-06 14:34:07', NULL, NULL),
(32, 28, 3, '2020-02-07 12:02:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `form_approvals`
--

CREATE TABLE `form_approvals` (
  `id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `form_status_id` int(11) NOT NULL DEFAULT 3,
  `user_id` text DEFAULT NULL,
  `justification` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `form_approvals`
--

INSERT INTO `form_approvals` (`id`, `form_id`, `level`, `form_status_id`, `user_id`, `justification`) VALUES
(3, 29, 1, 1, 'a632a1dc-1382-4ffb-b7fe-b6a431c221c9', ''),
(4, 30, 1, 1, 'a632a1dc-1382-4ffb-b7fe-b6a431c221c9', ''),
(5, 31, 1, 3, NULL, NULL),
(6, 32, 1, 3, NULL, NULL),
(7, 29, 2, 1, 'a632a1dc-1382-4ffb-b7fe-b6a431c221c9', 'Seems good.'),
(8, 29, 3, 1, 'f1ae8f2acafa0926', 'Again, correct.'),
(10, 30, 2, 1, 'a632a1dc-1382-4ffb-b7fe-b6a431c221c9', ''),
(11, 30, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `form_statuses`
--

CREATE TABLE `form_statuses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form_statuses`
--

INSERT INTO `form_statuses` (`id`, `name`) VALUES
(1, 'Approved'),
(2, 'Declined'),
(3, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`) VALUES
(1, 'Managers'),
(2, 'Account Security Team'),
(3, 'Security'),
(4, 'Account Security Manager'),
(16, '12');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location`) VALUES
(1, ''),
(2, 'Home Based'),
(3, 'LIW - Home Worker'),
(4, 'Royal Tunbridge Wells Data Centre'),
(5, 'Home Based - Leeds / Preston \'The Strand\''),
(6, 'Leeds'),
(7, 'Gronau, Almelo'),
(8, 'Copenhagen'),
(9, 'UK Homeworker'),
(10, 'Maidstone Data Centre');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`id`, `name`, `email`) VALUES
(1, 'Sally A Padley', ''),
(2, 'Sudhendu Kumar Chamoli', ''),
(3, 'Jon Bailey', ''),
(4, 'Martin James Bentley', ''),
(5, 'Simon Harbour', ''),
(6, 'John Edward Crawford', ''),
(7, 'Gary Hilton', '');

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` int(11) NOT NULL,
  `nationality` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nationalities`
--

INSERT INTO `nationalities` (`id`, `nationality`) VALUES
(1, 'British'),
(2, 'Canadian'),
(3, 'Chinese'),
(4, 'Chilean'),
(5, 'Cameroonian');

-- --------------------------------------------------------

--
-- Table structure for table `queued_jobs`
--

CREATE TABLE `queued_jobs` (
  `id` int(11) NOT NULL,
  `job_type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text DEFAULT NULL,
  `job_group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created` datetime NOT NULL,
  `notbefore` datetime DEFAULT NULL,
  `fetched` datetime DEFAULT NULL,
  `completed` datetime DEFAULT NULL,
  `progress` float DEFAULT NULL,
  `failed` int(11) NOT NULL DEFAULT 0,
  `failure_message` text DEFAULT NULL,
  `workerkey` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(3) NOT NULL DEFAULT 5
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queued_jobs`
--

INSERT INTO `queued_jobs` (`id`, `job_type`, `data`, `job_group`, `reference`, `created`, `notbefore`, `fetched`, `completed`, `progress`, `failed`, `failure_message`, `workerkey`, `status`, `priority`) VALUES
(1, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-05 15:19:32', NULL, '2020-02-05 15:22:16', '2020-02-05 15:22:16', 100, 0, NULL, '492c4e028a97ce29fe5fa1c3a9a2eb5e832b6373', NULL, 5),
(2, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 08:29:20', NULL, '2020-02-06 08:29:22', '2020-02-06 08:29:22', 100, 0, NULL, '492c4e028a97ce29fe5fa1c3a9a2eb5e832b6373', NULL, 5),
(3, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 08:30:25', NULL, '2020-02-06 08:30:52', NULL, NULL, 2, 'Cake\\Core\\Exception\\Exception: Could not send email: mail(): Failed to connect to mailserver at \"localhost\" port 25, verify your \"SMTP\" and \"smtp_port\" setting in php.ini or use ini_set()\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\MailTransport.php(64): Cake\\Mailer\\Transport\\MailTransport->_mail(\'dwild8@dxc.com\', \'About\', \'My message\\r\\n\\r\\n\', \'From: My Site <...\', \'\')\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(392): Cake\\Mailer\\Transport\\MailTransport->send(\'My message\\r\\n\\r\\n\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(35): Cake\\Mailer\\Mailer->deliver(\'My message\')\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 3)\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'1659003b2c536d9...\')\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#8 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#9 {main}', '1659003b2c536d9329e152c34f47036ee970bd3b', NULL, 5),
(4, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 08:31:23', NULL, '2020-02-06 08:31:50', NULL, NULL, 2, 'Cake\\Core\\Exception\\Exception: Could not send email: mail(): Failed to connect to mailserver at \"localhost\" port 25, verify your \"SMTP\" and \"smtp_port\" setting in php.ini or use ini_set()\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\MailTransport.php(64): Cake\\Mailer\\Transport\\MailTransport->_mail(\'dwild8@dxc.com\', \'About\', \'My message\\r\\n\\r\\n\', \'From: My Site <...\', \'\')\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(392): Cake\\Mailer\\Transport\\MailTransport->send(\'My message\\r\\n\\r\\n\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(35): Cake\\Mailer\\Mailer->deliver(\'My message\')\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 4)\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'e103081615eb741...\')\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#8 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#9 {main}', 'e103081615eb7411bfe63bf8da412d7803586632', NULL, 5),
(5, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 08:34:51', NULL, '2020-02-06 08:37:02', NULL, NULL, 2, 'Cake\\Core\\Exception\\Exception: Could not send email: mail(): Failed to connect to mailserver at \"localhost\" port 25, verify your \"SMTP\" and \"smtp_port\" setting in php.ini or use ini_set()\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\MailTransport.php(64): Cake\\Mailer\\Transport\\MailTransport->_mail(\'dwild8@dxc.com\', \'About\', \'My message\\r\\n\\r\\n\', \'From: My Site <...\', \'\')\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(392): Cake\\Mailer\\Transport\\MailTransport->send(\'My message\\r\\n\\r\\n\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(36): Cake\\Mailer\\Mailer->deliver(\'My message\')\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 5)\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'d3ddd232a4b60e0...\')\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#8 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#9 {main}', 'd3ddd232a4b60e0918ba9ea891319ec21a0a0207', NULL, 5),
(6, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 08:55:40', NULL, '2020-02-06 08:56:11', NULL, NULL, 2, 'InvalidArgumentException: Unknown email configuration \"outlook\".\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(208): Cake\\Mailer\\Mailer->setProfile(NULL)\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(31): Cake\\Mailer\\Mailer->__construct(\'outlook\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 6)\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'c30d0624da5d895...\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#8 {main}', 'c30d0624da5d89578a56d93e8ce858217d9256be', NULL, 5),
(7, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 08:55:46', NULL, '2020-02-06 08:56:21', NULL, NULL, 2, 'InvalidArgumentException: Unknown email configuration \"outlook\".\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(208): Cake\\Mailer\\Mailer->setProfile(NULL)\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(31): Cake\\Mailer\\Mailer->__construct(\'outlook\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 7)\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'c30d0624da5d895...\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#8 {main}', 'c30d0624da5d89578a56d93e8ce858217d9256be', NULL, 5),
(8, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 08:56:18', NULL, '2020-02-06 08:56:51', NULL, NULL, 2, 'InvalidArgumentException: Unknown email configuration \"outlook\".\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(208): Cake\\Mailer\\Mailer->setProfile(NULL)\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(31): Cake\\Mailer\\Mailer->__construct(\'outlook\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 8)\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'c30d0624da5d895...\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#8 {main}', 'c30d0624da5d89578a56d93e8ce858217d9256be', NULL, 5),
(9, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 08:57:05', NULL, '2020-02-06 08:57:41', NULL, NULL, 2, 'InvalidArgumentException: Unknown email configuration \"outlook\".\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(208): Cake\\Mailer\\Mailer->setProfile(NULL)\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(31): Cake\\Mailer\\Mailer->__construct(\'outlook\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 9)\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'c30d0624da5d895...\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#8 {main}', 'c30d0624da5d89578a56d93e8ce858217d9256be', NULL, 5),
(10, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 08:58:12', NULL, '2020-02-06 08:58:48', NULL, NULL, 2, 'InvalidArgumentException: Unknown email configuration \"outlook\".\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(208): Cake\\Mailer\\Mailer->setProfile(NULL)\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(31): Cake\\Mailer\\Mailer->__construct(\'outlook\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 10)\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'1d2d88a4b113f62...\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#8 {main}', '1d2d88a4b113f627900b79672bfc515884fef172', NULL, 5),
(11, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 08:59:07', NULL, '2020-02-06 08:59:38', NULL, NULL, 2, 'InvalidArgumentException: Unknown email configuration \"outlook\".\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(208): Cake\\Mailer\\Mailer->setProfile(NULL)\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(31): Cake\\Mailer\\Mailer->__construct(\'outlook\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 11)\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'1d2d88a4b113f62...\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#8 {main}', '1d2d88a4b113f627900b79672bfc515884fef172', NULL, 5),
(12, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 09:01:53', NULL, '2020-02-06 09:02:29', NULL, NULL, 2, 'InvalidArgumentException: Unknown email configuration \"outlook\".\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(208): Cake\\Mailer\\Mailer->setProfile(NULL)\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(31): Cake\\Mailer\\Mailer->__construct(\'outlook\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 12)\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'1d2d88a4b113f62...\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#8 {main}', '1d2d88a4b113f627900b79672bfc515884fef172', NULL, 5),
(13, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 09:03:38', NULL, '2020-02-06 09:04:09', NULL, NULL, 2, 'InvalidArgumentException: Unknown email configuration \"outlook\".\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(208): Cake\\Mailer\\Mailer->setProfile(NULL)\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(31): Cake\\Mailer\\Mailer->__construct(\'outlook\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 13)\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'1d2d88a4b113f62...\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#8 {main}', '1d2d88a4b113f627900b79672bfc515884fef172', NULL, 5),
(14, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 09:04:55', NULL, '2020-02-06 09:05:29', NULL, NULL, 2, 'InvalidArgumentException: Unknown email configuration \"outlook\".\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(208): Cake\\Mailer\\Mailer->setProfile(NULL)\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(31): Cake\\Mailer\\Mailer->__construct(\'outlook\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 14)\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'1d2d88a4b113f62...\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#8 {main}', '1d2d88a4b113f627900b79672bfc515884fef172', NULL, 5),
(15, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 09:05:03', NULL, '2020-02-06 09:05:39', NULL, NULL, 2, 'InvalidArgumentException: Unknown email configuration \"outlook\".\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(208): Cake\\Mailer\\Mailer->setProfile(NULL)\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(31): Cake\\Mailer\\Mailer->__construct(\'outlook\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 15)\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'1d2d88a4b113f62...\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#8 {main}', '1d2d88a4b113f627900b79672bfc515884fef172', NULL, 5),
(16, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 09:05:13', NULL, '2020-02-06 09:05:49', NULL, NULL, 2, 'InvalidArgumentException: Unknown email configuration \"outlook\".\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(208): Cake\\Mailer\\Mailer->setProfile(NULL)\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(31): Cake\\Mailer\\Mailer->__construct(\'outlook\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 16)\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'1d2d88a4b113f62...\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#8 {main}', '1d2d88a4b113f627900b79672bfc515884fef172', NULL, 5),
(17, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 09:06:18', NULL, '2020-02-06 09:06:44', NULL, NULL, 2, 'InvalidArgumentException: Unknown email configuration \"outlook\".\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(208): Cake\\Mailer\\Mailer->setProfile(NULL)\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(34): Cake\\Mailer\\Mailer->__construct(\'outlook\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 17)\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'a3455a15b4707e1...\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#8 {main}', 'a3455a15b4707e13722dcdf62760eb93bdb33a8d', NULL, 5),
(18, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 09:06:37', NULL, '2020-02-06 09:07:14', NULL, NULL, 2, 'InvalidArgumentException: Unknown email configuration \"outlook\".\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(208): Cake\\Mailer\\Mailer->setProfile(NULL)\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(34): Cake\\Mailer\\Mailer->__construct(\'outlook\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 18)\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'a3455a15b4707e1...\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#8 {main}', 'a3455a15b4707e13722dcdf62760eb93bdb33a8d', NULL, 5),
(19, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 09:08:58', NULL, '2020-02-06 09:09:31', NULL, NULL, 2, 'Cake\\Network\\Exception\\SocketException: SMTP Error: 530 5.7.57 SMTP; Client was not authenticated to send anonymous mail during MAIL FROM [LNXP123CA0004.GBRP123.PROD.OUTLOOK.COM]\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\SmtpTransport.php(381): Cake\\Mailer\\Transport\\SmtpTransport->_smtpSend(\'MAIL FROM:<me@e...\')\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\SmtpTransport.php(186): Cake\\Mailer\\Transport\\SmtpTransport->_sendRcpt(Object(Cake\\Mailer\\Message))\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(392): Cake\\Mailer\\Transport\\SmtpTransport->send(Object(Cake\\Mailer\\Message))\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(39): Cake\\Mailer\\Mailer->deliver(\'My message\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 19)\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'95f78b211b3726f...\')\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#8 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#9 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#10 {main}', '95f78b211b3726fae8ae8e17264e9b1c07f0491a', NULL, 5),
(20, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 09:11:01', NULL, '2020-02-06 09:11:32', NULL, NULL, 2, 'Cake\\Network\\Exception\\SocketException: SMTP timeout.\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\SmtpTransport.php(183): Cake\\Mailer\\Transport\\SmtpTransport->_smtpSend(\'RSET\')\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(392): Cake\\Mailer\\Transport\\SmtpTransport->send(Object(Cake\\Mailer\\Message))\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(39): Cake\\Mailer\\Mailer->deliver(\'My message\')\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 20)\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'95f78b211b3726f...\')\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#8 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#9 {main}', '95f78b211b3726fae8ae8e17264e9b1c07f0491a', NULL, 5),
(21, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 09:11:14', NULL, '2020-02-06 09:11:52', NULL, NULL, 2, 'Cake\\Network\\Exception\\SocketException: SMTP timeout.\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\SmtpTransport.php(183): Cake\\Mailer\\Transport\\SmtpTransport->_smtpSend(\'RSET\')\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(392): Cake\\Mailer\\Transport\\SmtpTransport->send(Object(Cake\\Mailer\\Message))\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(39): Cake\\Mailer\\Mailer->deliver(\'My message\')\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 21)\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'95f78b211b3726f...\')\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#8 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#9 {main}', '95f78b211b3726fae8ae8e17264e9b1c07f0491a', NULL, 5),
(22, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 09:12:10', NULL, '2020-02-06 09:12:40', NULL, NULL, 2, 'Cake\\Network\\Exception\\SocketException: SMTP Error: 554 5.2.0 STOREDRV.Submission.Exception:OutboundSpamException; Failed to process message due to a permanent exception with message WASCL UserAction verdict is not None. Actual verdict is HipNotify, ShowTierUpgrade. OutboundSpamException: WASCL UserAction verdict is not None. Actual verdict is HipNotify, ShowTierUpgrade. [Hostname=DBAPR05MB7016.eurprd05.prod.outlook.com]\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\SmtpTransport.php(412): Cake\\Mailer\\Transport\\SmtpTransport->_smtpSend(\'From: My Site <...\')\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\SmtpTransport.php(187): Cake\\Mailer\\Transport\\SmtpTransport->_sendData(\'My message\\r\\n\\r\\n\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(392): Cake\\Mailer\\Transport\\SmtpTransport->send(Object(Cake\\Mailer\\Message))\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(39): Cake\\Mailer\\Mailer->deliver(\'My message\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 22)\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'251390d5ebb7a03...\')\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#8 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#9 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#10 {main}', '251390d5ebb7a03ddfdaa1897662d2465e014096', NULL, 5),
(23, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 09:19:17', NULL, '2020-02-06 09:19:44', NULL, NULL, 2, 'Cake\\Network\\Exception\\SocketException: SMTP timeout.\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\SmtpTransport.php(183): Cake\\Mailer\\Transport\\SmtpTransport->_smtpSend(\'RSET\')\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(392): Cake\\Mailer\\Transport\\SmtpTransport->send(Object(Cake\\Mailer\\Message))\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(39): Cake\\Mailer\\Mailer->deliver(\'My message\')\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 23)\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'251390d5ebb7a03...\')\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#8 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#9 {main}', '251390d5ebb7a03ddfdaa1897662d2465e014096', NULL, 5),
(24, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 09:20:24', NULL, '2020-02-06 09:21:02', NULL, NULL, 2, 'Cake\\Network\\Exception\\SocketException: SMTP Error: 554 5.2.0 STOREDRV.Submission.Exception:OutboundSpamException; Failed to process message due to a permanent exception with message WASCL UserAction verdict is not None. Actual verdict is HipSend, ShowTierUpgrade. OutboundSpamException: WASCL UserAction verdict is not None. Actual verdict is HipSend, ShowTierUpgrade. [Hostname=DBAPR05MB7016.eurprd05.prod.outlook.com]\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\SmtpTransport.php(412): Cake\\Mailer\\Transport\\SmtpTransport->_smtpSend(\'From: you@local...\')\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\SmtpTransport.php(187): Cake\\Mailer\\Transport\\SmtpTransport->_sendData(\'My message\\r\\n\\r\\n\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(392): Cake\\Mailer\\Transport\\SmtpTransport->send(Object(Cake\\Mailer\\Message))\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(39): Cake\\Mailer\\Mailer->deliver(\'My message\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 24)\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'de87445b91d0ae2...\')\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#8 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#9 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#10 {main}', 'de87445b91d0ae2e9a28e5748cff5bb85de9ad7a', NULL, 5),
(25, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 09:20:43', NULL, '2020-02-06 09:21:13', NULL, NULL, 2, 'Cake\\Network\\Exception\\SocketException: SMTP Error: 554 5.2.0 STOREDRV.Submission.Exception:OutboundSpamException; Failed to process message due to a permanent exception with message WASCL UserAction verdict is not None. Actual verdict is HipSend, ShowTierUpgrade. OutboundSpamException: WASCL UserAction verdict is not None. Actual verdict is HipSend, ShowTierUpgrade. [Hostname=DBAPR05MB7016.eurprd05.prod.outlook.com]\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\SmtpTransport.php(412): Cake\\Mailer\\Transport\\SmtpTransport->_smtpSend(\'From: you@local...\')\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\SmtpTransport.php(187): Cake\\Mailer\\Transport\\SmtpTransport->_sendData(\'My message\\r\\n\\r\\n\')\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(392): Cake\\Mailer\\Transport\\SmtpTransport->send(Object(Cake\\Mailer\\Message))\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(39): Cake\\Mailer\\Mailer->deliver(\'My message\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 25)\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'de87445b91d0ae2...\')\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#8 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#9 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#10 {main}', 'de87445b91d0ae2e9a28e5748cff5bb85de9ad7a', NULL, 5),
(26, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 09:21:47', NULL, '2020-02-06 09:22:31', NULL, NULL, 2, 'Cake\\Network\\Exception\\SocketException: SMTP timeout.\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\SmtpTransport.php(183): Cake\\Mailer\\Transport\\SmtpTransport->_smtpSend(\'RSET\')\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(392): Cake\\Mailer\\Transport\\SmtpTransport->send(Object(Cake\\Mailer\\Message))\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(39): Cake\\Mailer\\Mailer->deliver(\'My message\')\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 26)\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'6dfe7ee02cde32a...\')\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#8 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#9 {main}', '6dfe7ee02cde32a16b5c9311a7d6a03000a4cf77', NULL, 5),
(27, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 09:35:33', NULL, '2020-02-06 09:35:59', NULL, NULL, 2, 'Cake\\Network\\Exception\\SocketException: SMTP Error: 530 5.7.0  https://support.google.com/mail/?p=WantAuthError i16sm3156200wmb.36 - gsmtp\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\SmtpTransport.php(381): Cake\\Mailer\\Transport\\SmtpTransport->_smtpSend(\'MAIL FROM:<you@...\')\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\SmtpTransport.php(186): Cake\\Mailer\\Transport\\SmtpTransport->_sendRcpt(Object(Cake\\Mailer\\Message))\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(392): Cake\\Mailer\\Transport\\SmtpTransport->send(Object(Cake\\Mailer\\Message))\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(39): Cake\\Mailer\\Mailer->deliver(\'My message\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 27)\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'57f079e884ee5ad...\')\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#8 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#9 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#10 {main}', '57f079e884ee5add9fabb2071c1becb4327fc3ab', NULL, 5),
(28, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 09:36:10', NULL, '2020-02-06 09:36:49', NULL, NULL, 2, 'Cake\\Network\\Exception\\SocketException: SMTP Error: 530 5.7.0  https://support.google.com/mail/?p=WantAuthError i16sm3156200wmb.36 - gsmtp\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\SmtpTransport.php(381): Cake\\Mailer\\Transport\\SmtpTransport->_smtpSend(\'MAIL FROM:<you@...\')\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\SmtpTransport.php(186): Cake\\Mailer\\Transport\\SmtpTransport->_sendRcpt(Object(Cake\\Mailer\\Message))\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(392): Cake\\Mailer\\Transport\\SmtpTransport->send(Object(Cake\\Mailer\\Message))\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(39): Cake\\Mailer\\Mailer->deliver(\'My message\')\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 28)\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'57f079e884ee5ad...\')\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#8 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#9 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#10 {main}', '57f079e884ee5add9fabb2071c1becb4327fc3ab', NULL, 5),
(29, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 09:38:35', NULL, '2020-02-06 09:39:09', NULL, NULL, 2, 'Cake\\Network\\Exception\\SocketException: SMTP Error: 554 5.7.0 Too Many Unauthenticated commands. i16sm3156200wmb.36 - gsmtp\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\SmtpTransport.php(183): Cake\\Mailer\\Transport\\SmtpTransport->_smtpSend(\'RSET\')\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(392): Cake\\Mailer\\Transport\\SmtpTransport->send(Object(Cake\\Mailer\\Message))\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(39): Cake\\Mailer\\Mailer->deliver(\'My message\')\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 29)\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'57f079e884ee5ad...\')\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#8 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#9 {main}', '57f079e884ee5add9fabb2071c1becb4327fc3ab', NULL, 5),
(30, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 10:26:25', NULL, '2020-02-06 10:27:02', NULL, NULL, 2, 'Cake\\Network\\Exception\\SocketException: SMTP timeout.\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Transport\\SmtpTransport.php(183): Cake\\Mailer\\Transport\\SmtpTransport->_smtpSend(\'RSET\')\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Mailer\\Mailer.php(392): Cake\\Mailer\\Transport\\SmtpTransport->send(Object(Cake\\Mailer\\Message))\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueTestTask.php(39): Cake\\Mailer\\Mailer->deliver(\'My message\')\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueTestTask->run(Array, 30)\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'9fa8694fb3d7f25...\')\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#8 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#9 {main}', '9fa8694fb3d7f25abe531fa6f1532be8c5d64404', NULL, 5),
(31, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 10:52:08', NULL, '2020-02-06 10:52:11', '2020-02-06 10:52:13', 100, 0, NULL, '23c5da08612ec9945213e5edd59db77cc93d607a', NULL, 5),
(32, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 10:57:58', NULL, '2020-02-06 10:58:04', '2020-02-06 10:58:05', 100, 0, NULL, '23c5da08612ec9945213e5edd59db77cc93d607a', NULL, 5),
(33, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 10:58:57', NULL, '2020-02-06 10:59:04', '2020-02-06 10:59:05', 100, 0, NULL, 'a9c5a9ca96f092242348d2457af1ef1eeb58d408', NULL, 5),
(34, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 11:01:55', NULL, '2020-02-06 11:01:58', '2020-02-06 11:01:59', 100, 0, NULL, 'a0843683cfbcc290b3ce76f7c73121981e2195ae', NULL, 5),
(35, 'Test', 'a:1:{s:4:\"test\";s:4:\"data\";}', NULL, NULL, '2020-02-06 11:11:44', NULL, '2020-02-06 11:11:49', '2020-02-06 11:11:51', 100, 0, NULL, '4960162902816ad8c391fd338fc15e8951d79b22', NULL, 5);
INSERT INTO `queued_jobs` (`id`, `job_type`, `data`, `job_group`, `reference`, `created`, `notbefore`, `fetched`, `completed`, `progress`, `failed`, `failure_message`, `workerkey`, `status`, `priority`) VALUES
(36, 'ApproveNotification', 'a:1:{s:7:\"form_id\";i:30;}', NULL, NULL, '2020-02-06 13:02:41', NULL, '2020-02-06 13:03:20', NULL, NULL, 2, 'PDOException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'FormApprovals.level\' in \'order clause\'\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Database\\Statement\\MysqlStatement.php(40): PDOStatement->execute(NULL)\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Database\\Connection.php(333): Cake\\Database\\Statement\\MysqlStatement->execute()\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Core\\Retry\\CommandRetry.php(69): Cake\\Database\\Connection->Cake\\Database\\{closure}()\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Database\\Connection.php(336): Cake\\Core\\Retry\\CommandRetry->run(Object(Closure))\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Database\\Query.php(245): Cake\\Database\\Connection->run(Object(Cake\\ORM\\Query))\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\ORM\\Query.php(1099): Cake\\Database\\Query->execute()\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Datasource\\QueryTrait.php(292): Cake\\ORM\\Query->_execute()\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\ORM\\Query.php(1046): Cake\\ORM\\Query->_all()\n#8 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Datasource\\QueryTrait.php(443): Cake\\ORM\\Query->all()\n#9 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Datasource\\QueryTrait.php(454): Cake\\ORM\\Query->first()\n#10 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\ORM\\Table.php(1501): Cake\\ORM\\Query->firstOrFail()\n#11 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueApproveNotificationTask.php(45): Cake\\ORM\\Table->get(Array, Array)\n#12 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueApproveNotificationTask->run(Array, 36)\n#13 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'0529fb13804f8a8...\')\n#14 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#15 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#16 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#17 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#18 {main}', '0529fb13804f8a868e76a4343df562013a50b6b8', NULL, 5),
(37, 'ApproveNotification', 'a:1:{s:7:\"form_id\";i:30;}', NULL, NULL, '2020-02-06 13:06:04', NULL, '2020-02-06 13:06:31', NULL, NULL, 2, 'PDOException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'level\' in \'order clause\'\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Database\\Statement\\MysqlStatement.php(40): PDOStatement->execute(NULL)\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Database\\Connection.php(333): Cake\\Database\\Statement\\MysqlStatement->execute()\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Core\\Retry\\CommandRetry.php(69): Cake\\Database\\Connection->Cake\\Database\\{closure}()\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Database\\Connection.php(336): Cake\\Core\\Retry\\CommandRetry->run(Object(Closure))\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Database\\Query.php(245): Cake\\Database\\Connection->run(Object(Cake\\ORM\\Query))\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\ORM\\Query.php(1099): Cake\\Database\\Query->execute()\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Datasource\\QueryTrait.php(292): Cake\\ORM\\Query->_execute()\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\ORM\\Query.php(1046): Cake\\ORM\\Query->_all()\n#8 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Datasource\\QueryTrait.php(443): Cake\\ORM\\Query->all()\n#9 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Datasource\\QueryTrait.php(454): Cake\\ORM\\Query->first()\n#10 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\ORM\\Table.php(1501): Cake\\ORM\\Query->firstOrFail()\n#11 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueApproveNotificationTask.php(45): Cake\\ORM\\Table->get(Array, Array)\n#12 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueApproveNotificationTask->run(Array, 37)\n#13 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'a8fe891745d508e...\')\n#14 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#15 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#16 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#17 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#18 {main}', 'a8fe891745d508e4df3fbadda2927de0da5ccc4c', NULL, 5),
(38, 'ApproveNotification', 'a:1:{s:7:\"form_id\";i:30;}', NULL, NULL, '2020-02-06 13:07:29', NULL, '2020-02-06 13:08:08', NULL, NULL, 2, 'PDOException: SQLSTATE[42S22]: Column not found: 1054 Unknown column \'Forms.FormApprovals.level\' in \'order clause\'\n#0 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Database\\Statement\\MysqlStatement.php(40): PDOStatement->execute(NULL)\n#1 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Database\\Connection.php(333): Cake\\Database\\Statement\\MysqlStatement->execute()\n#2 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Core\\Retry\\CommandRetry.php(69): Cake\\Database\\Connection->Cake\\Database\\{closure}()\n#3 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Database\\Connection.php(336): Cake\\Core\\Retry\\CommandRetry->run(Object(Closure))\n#4 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Database\\Query.php(245): Cake\\Database\\Connection->run(Object(Cake\\ORM\\Query))\n#5 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\ORM\\Query.php(1099): Cake\\Database\\Query->execute()\n#6 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Datasource\\QueryTrait.php(292): Cake\\ORM\\Query->_execute()\n#7 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\ORM\\Query.php(1046): Cake\\ORM\\Query->_all()\n#8 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Datasource\\QueryTrait.php(443): Cake\\ORM\\Query->all()\n#9 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Datasource\\QueryTrait.php(454): Cake\\ORM\\Query->first()\n#10 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\ORM\\Table.php(1501): Cake\\ORM\\Query->firstOrFail()\n#11 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\src\\Shell\\Task\\QueueApproveNotificationTask.php(45): Cake\\ORM\\Table->get(Array, Array)\n#12 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(266): App\\Shell\\Task\\QueueApproveNotificationTask->run(Array, 38)\n#13 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\dereuromark\\cakephp-queue\\src\\Shell\\QueueShell.php(214): Queue\\Shell\\QueueShell->runJob(Object(Queue\\Model\\Entity\\QueuedJob), \'3ceedc5e6904f70...\')\n#14 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\Shell.php(502): Queue\\Shell\\QueueShell->runworker()\n#15 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(354): Cake\\Console\\Shell->runCommand(Array, true)\n#16 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\vendor\\cakephp\\cakephp\\src\\Console\\CommandRunner.php(168): Cake\\Console\\CommandRunner->runShell(Object(Queue\\Shell\\QueueShell), Array)\n#17 C:\\Users\\dwild8\\Documents\\AMS\\AMS\\bin\\cake.php(12): Cake\\Console\\CommandRunner->run(Array)\n#18 {main}', '3ceedc5e6904f70a1a272d8e75a8ed392b2873f2', NULL, 5),
(39, 'ApproveNotification', 'a:1:{s:7:\"form_id\";i:30;}', NULL, NULL, '2020-02-06 13:12:48', NULL, '2020-02-06 13:12:54', '2020-02-06 13:12:54', 100, 0, NULL, '9e866ce00b396769d5fb4add983e80c73a604e3d', NULL, 5),
(40, 'ApproveNotification', 'a:1:{s:7:\"form_id\";i:30;}', NULL, NULL, '2020-02-06 13:14:06', NULL, '2020-02-06 13:14:11', '2020-02-06 13:14:11', 100, 0, NULL, 'dc8dbd4afbf6b6a330a5f75e20cfc70732571b5b', NULL, 5),
(41, 'ApproveNotification', 'a:1:{s:7:\"form_id\";i:30;}', NULL, NULL, '2020-02-06 13:15:27', NULL, '2020-02-06 13:15:35', '2020-02-06 13:15:35', 100, 0, NULL, 'd3053a4f822cd9a0798d5f3209cacbc32f160997', NULL, 5),
(42, 'ApproveNotification', 'a:1:{s:7:\"form_id\";i:30;}', NULL, NULL, '2020-02-06 13:38:47', NULL, '2020-02-06 13:38:52', '2020-02-06 13:38:52', 100, 0, NULL, '6cd2159a8f7ac697f9119ef4b01b423edc4459e8', NULL, 5),
(43, 'ApproveNotification', 'a:1:{s:7:\"form_id\";i:30;}', NULL, NULL, '2020-02-06 13:39:32', NULL, '2020-02-06 13:39:35', '2020-02-06 13:39:36', 100, 0, NULL, '021826fa052cd96ddcbc5ecaa712e951b8009995', NULL, 5),
(44, 'ApproveNotification', 'a:1:{s:7:\"form_id\";i:30;}', NULL, NULL, '2020-02-06 13:44:01', NULL, '2020-02-06 13:44:06', '2020-02-06 13:44:06', 100, 0, NULL, 'f6649803bb7a89828d96d43951100674cb4f2e27', NULL, 5),
(45, 'ApproveNotification', 'a:1:{s:7:\"form_id\";i:30;}', NULL, NULL, '2020-02-06 14:21:35', NULL, '2020-02-06 14:21:50', '2020-02-06 14:21:51', 100, 0, NULL, '37616a14d8902332c3a6d22a48df3c1a41cf36fa', NULL, 5),
(46, 'ApproveNotification', 'a:1:{s:7:\"form_id\";i:31;}', NULL, NULL, '2020-02-06 14:34:07', NULL, '2020-02-06 14:34:16', '2020-02-06 14:34:20', 100, 0, NULL, 'd360531cb586850246c5a88be90b4e58dd48884d', NULL, 5),
(47, 'ApproveNotification', 'a:1:{s:7:\"form_id\";i:32;}', NULL, NULL, '2020-02-07 12:02:00', NULL, '2020-02-07 12:02:06', '2020-02-07 12:02:10', 100, 0, NULL, 'e23346f54bec72bdf13098772ecc085d15d2c585', NULL, 5);

-- --------------------------------------------------------

--
-- Table structure for table `queue_phinxlog`
--

CREATE TABLE `queue_phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queue_phinxlog`
--

INSERT INTO `queue_phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20150425180802, 'Init', '2020-02-05 14:08:10', '2020-02-05 14:08:10', 0),
(20150511062806, 'Fixmissing', '2020-02-05 14:08:10', '2020-02-05 14:08:10', 0),
(20150911132343, 'ImprovementsForMysql', '2020-02-05 14:08:10', '2020-02-05 14:08:11', 0),
(20161319000000, 'IncreaseDataSize', '2020-02-05 14:08:11', '2020-02-05 14:08:11', 0),
(20161319000001, 'Priority', '2020-02-05 14:08:11', '2020-02-05 14:08:11', 0),
(20161319000002, 'Rename', '2020-02-05 14:08:11', '2020-02-05 14:08:11', 0),
(20161319000003, 'Processes', '2020-02-05 14:08:11', '2020-02-05 14:08:11', 0),
(20171013131845, 'AlterQueuedJobs', '2020-02-05 14:08:11', '2020-02-05 14:08:11', 0),
(20171013133145, 'Utf8mb4Fix', '2020-02-05 14:08:11', '2020-02-05 14:08:11', 0),
(20171019083500, 'ColumnLength', '2020-02-05 14:08:11', '2020-02-05 14:08:11', 0),
(20171019083501, 'MigrationQueueNull', '2020-02-05 14:08:11', '2020-02-05 14:08:11', 0),
(20171019083502, 'MigrationQueueStatus', '2020-02-05 14:08:11', '2020-02-05 14:08:11', 0),
(20171019083503, 'MigrationQueueProcesses', '2020-02-05 14:08:11', '2020-02-05 14:08:11', 0),
(20171019083505, 'MigrationQueueProcessesIndex', '2020-02-05 14:08:11', '2020-02-05 14:08:11', 0),
(20171019083506, 'MigrationQueueProcessesKey', '2020-02-05 14:08:11', '2020-02-05 14:08:11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `queue_processes`
--

CREATE TABLE `queue_processes` (
  `id` int(11) NOT NULL,
  `pid` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `terminate` tinyint(1) NOT NULL DEFAULT 0,
  `server` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workerkey` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `queue_processes`
--

INSERT INTO `queue_processes` (`id`, `pid`, `created`, `modified`, `terminate`, `server`, `workerkey`) VALUES
(29, 'd360531cb586850246c5a88be90b4e58dd48884d', '2020-02-06 14:33:46', '2020-02-06 15:25:16', 0, 'GB-PF1DENQH', 'd360531cb586850246c5a88be90b4e58dd48884d'),
(30, 'e23346f54bec72bdf13098772ecc085d15d2c585', '2020-02-07 12:02:06', '2020-02-07 12:02:50', 0, 'GB-PF1DENQH', 'e23346f54bec72bdf13098772ecc085d15d2c585'),
(31, 'ef32a610e45ee45b906306b99d213575ff8192b6', '2020-02-10 09:05:19', '2020-02-10 09:05:19', 0, 'GB-PF1DENQH', 'ef32a610e45ee45b906306b99d213575ff8192b6');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(1, 'Program Management Consultant'),
(2, 'Client Delivery Manager'),
(3, 'Network Consultant'),
(4, 'ERP Product Consultant'),
(5, 'Technology Manager');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(11) NOT NULL,
  `team` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `team`) VALUES
(1, 'Offering Delivery Function'),
(2, 'CAM Application Service Center'),
(3, 'Service Exec - Infrastructure Mgt'),
(4, 'CSC Options'),
(5, 'Engineering - Networks'),
(6, 'Engineering - LDT'),
(7, 'UK ADMS Service Centre'),
(8, 'Ops - Delivery & Supply Chain'),
(9, 'Service Exec - Release & Integration Mgt'),
(10, 'iEnhance'),
(11, 'Projects & Programmes'),
(12, 'Engineering - Remote Resolution'),
(13, 'Service Exec - Applications Mgt'),
(14, 'Account Management');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(120) NOT NULL,
  `employeeId` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `employee_status_id` int(11) DEFAULT NULL,
  `manager_id` text DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `office_number` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `security_clearance` varchar(255) DEFAULT NULL,
  `vetting_expirary` date DEFAULT NULL,
  `vetting_ref` varchar(255) DEFAULT NULL,
  `assignment_end_date` date DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  `team` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `access_token` text NOT NULL,
  `refresh_token` text NOT NULL,
  `expires` int(11) NOT NULL,
  `is_manager` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employeeId`, `short_name`, `name`, `dob`, `nationality_id`, `employee_status_id`, `manager_id`, `team_id`, `office_number`, `mobile_number`, `security_clearance`, `vetting_expirary`, `vetting_ref`, `assignment_end_date`, `role`, `team`, `location`, `access_token`, `refresh_token`, `expires`, `is_manager`, `email`, `is_admin`) VALUES
('a632a1dc-1382-4ffb-b7fe-b6a431c221c9', '777', 'dwild8', 'Wild, Dominic', '2020-02-13', 1, 3, 'a632a1dc-1382-4ffb-b7fe-b6a431c221c9', NULL, '01772564738', '07728478298', 'SC BPSS', NULL, '#2387428946238964', '2026-07-16', 'Technician', 'DTC', 'GBR LA Chorley (CSC Location)', 'eyJ0eXAiOiJKV1QiLCJub25jZSI6Ii1TbExZdjNUVGdhTGtLS3U4LUprZExPR2Z2ejFPMi1TaUhaUV9sZlNXTWMiLCJhbGciOiJSUzI1NiIsIng1dCI6IkhsQzBSMTJza3hOWjFXUXdtak9GXzZ0X3RERSIsImtpZCI6IkhsQzBSMTJza3hOWjFXUXdtak9GXzZ0X3RERSJ9.eyJhdWQiOiIwMDAwMDAwMy0wMDAwLTAwMDAtYzAwMC0wMDAwMDAwMDAwMDAiLCJpc3MiOiJodHRwczovL3N0cy53aW5kb3dzLm5ldC85M2YzMzU3MS01NTBmLTQzY2YtYjA5Zi1jZDMzMTMzOGQwODYvIiwiaWF0IjoxNTgwODIwOTUwLCJuYmYiOjE1ODA4MjA5NTAsImV4cCI6MTU4MDgyNDg1MCwiYWNjdCI6MCwiYWNyIjoiMSIsImFpbyI6IkFTUUEyLzhPQUFBQTZIM2QyYjVOVG5YYWFhbmJ6MHhFM3NPR0djQkE5SjBXMUhURlMrZkVEazA9IiwiYW1yIjpbInB3ZCJdLCJhcHBfZGlzcGxheW5hbWUiOiJBTVNEZXZlbG9wZW1lbnQiLCJhcHBpZCI6IjgxMzkxNzhiLTM3YjQtNGQ1Yi1iMzBkLTAxZmNkYzBjOTk2MyIsImFwcGlkYWNyIjoiMSIsImZhbWlseV9uYW1lIjoiV2lsZCIsImdpdmVuX25hbWUiOiJEb21pbmljIiwiaXBhZGRyIjoiODYuMTYuMjI4LjIwNiIsIm5hbWUiOiJXaWxkLCBEb21pbmljIiwib2lkIjoiYTYzMmExZGMtMTM4Mi00ZmZiLWI3ZmUtYjZhNDMxYzIyMWM5Iiwib25wcmVtX3NpZCI6IlMtMS01LTIxLTI3MTg3MTI4OTMtNDI1Nzg5MzEwMC0zNzg2ODM1NzYtODU0MjQ4IiwicGxhdGYiOiIzIiwicHVpZCI6IjEwMDMyMDAwNzRCQzZFQzUiLCJzY3AiOiJNYWlsLlJlYWQgb3BlbmlkIHByb2ZpbGUgVXNlci5SZWFkIGVtYWlsIiwic3ViIjoiR09IcllIajZXUTJ5YXktMEJIWmJxRlpJMno5SXpyVFZpUGRLbEc1Z0dkOCIsInRpZCI6IjkzZjMzNTcxLTU1MGYtNDNjZi1iMDlmLWNkMzMxMzM4ZDA4NiIsInVuaXF1ZV9uYW1lIjoiZHdpbGQ4QGR4Yy5jb20iLCJ1cG4iOiJkd2lsZDhAZHhjLmNvbSIsInV0aSI6Imp4X25jZEp6Q2sycVZ2TGptUDRqQUEiLCJ2ZXIiOiIxLjAiLCJ4bXNfc3QiOnsic3ViIjoiS0sxMk1vZDdzaTJnWUpoVjBKZmoyOGktUThzeU1xaE9Ha0RhQTZFaDhiYyJ9LCJ4bXNfdGNkdCI6MTM5NjYxNzQyMn0.b4HSmMoy9iSb4IxNYEbkDRCq30c1KnigL6huGMnfj3SRd3lcLI3GtZ_bT6JMTnfzWwSXW_aROhJvpHzIIa1lezloQe9BsJdjD8q0o3htu4ACMcKMaE_F-xWu_FDm6NdDwZQuBReUOH0fu4AZGUyXc0PciBCXthpwvPXXJx7n2PNOQYSpxUlK-w-2-tBn3VWZszWRCm2wK4bJQU9IHJD-X7vbaZXo9OSig8Pa8oBFyzSK-djnqSKzPjmyfaNG985Mo6-MdHdMIc0AwhtAAKwGfaVQn_zjQjrYeIcQoXTOlDBbowdJrX6s5U67IQ5IPY1sX41s12AkIX2to3srZVM9Jg', 'OAQABAAAAAABeAFzDwllzTYGDLh_qYbH8d4o-i2LqmoHpFBmkfW_T2hSJpg7_j_ZtqQaugqjQWCdy3-S0zMLqEU18P89La_S0o3EDZnrUXMKhW7uWTekDtlZtaLMO0hfBa_xgtObGbt3AO3YqRcwC5L3PAVQbbQsLo5Wrqi0FUp-mLBDTxArS9UKkB8Rvd6eFNtIWn46rXvJQ-_n4Qw7O0QNMmCOmS0u9N6zeQX2dIE2CfMbKD4Bmq19dKm7T4FTZR9hlnR66xGOCZh0zRh6oTKyOqRVoDC7Tu6s3zjLpn_z3PAxr_QeVK8baSw7xAQCCVyJsQj6kf1q0LSCDfhbL8F5tSxfU7Oaq-lmHQHcPO-JnmPorRUeqlBTkr8AOpzAjr4dHTsgxmwc8dKSbKutDe0PQ6uzv5eVqkssbUHm_KNte7GC2YG03dNv8LbsxEMIX6pYZ_Yb6Frgueszzk8gjOQbhN0TW5Pr7qCBEWI10RRVcdUBiSUqUCcJ373NfgQEPFx-7Hf5fLVIKEQubDsKkGFxXJ8ti0xTce8ekmOlreHbZZIl8P60ZDlT9DXeG5VAqXOW7KT9uxelXKNVB8FMGa2ED5MrTnMoKPjEgwVR0zoH9ggyj0w9wbDtD3LH-G90ttfxrrgM3kN7wKXqi15uhCocJmi5caxph2UKyprA-PQQtxBWKMP7TsBdOZiclvCdROu44t9V7huJmMonnXEtRZ_8z_o5aDwyeGeZ5rga8k3wZzHmdhdAJ-ApUiraIgS1YFcAd2UBBNKG-aF7pXGGYZ-2u1QVCLZfwf8_N4cv8ds_ie2N2daboI0eZp38Ge8MTFy83zVD47Wgklkwu6zY04w1EIr-V18iak3Pb-3Hi8AFm2jbEbvaNxpuKGoI0HHYeqal3FzVu8afWhRDecevhwAtxFJmFzmDiIAA', 1580824848, 1, 'dwild8@dxc.com', 1),
('f1ae8f2acafa0926', '7778', 'dwild9', 'Dominic Wild V2', '1994-07-14', 5, 1, 'a632a1dc-1382-4ffb-b7fe-b6a431c221c9', NULL, '0177267834', '0732843598', 'SC BPSS', '2035-07-07', '#345637734225', '2029-07-02', 'Developer', 'SAP', 'Newcastle', 'EwBgA8l6BAAUO9chh8cJscQLmU+LSWpbnr0vmwwAAejw0nJdnkymXJak7sbTJy175IzELrBvpTDiKSbldfblQAygwn6g/LrAyVVXEQk4f5NdqhrJy98z8hsH+K0691WP6J6UeG52FxhD307Jx1fZqieRlImyjjFfov8ktCvtFEqgs31Ktgk8Xj47qaAzvYJINB9Dnsn623IzbhDBPBmD9eG7AoWH+BeDXm36EFex8V+ndYuRMLesMEMDrvI8dbvqlNYhwMv43KckykXPCRb+AyahFUjdmiHX84R7/oGHlvmAuA6NAJyINZ9abf9/ZsGzySAe4/X3T2xBriqpiFB0XeG7XPx/ZKH/kKryw/m7WqtMTDcdDg15zJj+yAJMKHwDZgAACHOLjQYBCdAWMALSmF5L3JClpA5c0qdPTcWRzd9PQXtJn1U5DZpurIHh5JalXbLgwv1D8tzViLpz6NcvAnCy+3tOyBo1DVyW+tWGz7C4dIMbIvoJk4lMNFWtNaHbfwFimZImFeUeczpvITB/tt9wVtl/XdPnZh/oyJIcRh8LwCdDndwy+pHwvZM7ZjF0YJ0kf4wEOWAHqKKL9xVpqO+yZNyiHrgNBl2nHFhYPsSRlV9mZG71WRw0kcK2ehmkG3YH/0F3hNzg/um8P5jfTICNLMkHU+IR282m0vOmcHMLBUOq3kAJwnN7LrPF0orH0pIoCs41O78WPt6pmLtifpwkjbQan0LJAm8og/Mlwb9BB42NiJ1YGGZRhB5x8KRlghF0UOWrxg5YRUVwS4/OKPfGZVIehDBAbH0G/cYLwkxh5Nl5NYi6gfBXNQyjeb2mQ5FuBQaxWG7W9av24PQU+yze7iHCONJacZs3aHO8hnfvKKbCtwjDkdNeafIcER7KfCMT427tpzwRyAYsqM+lKXBz5wuHcBD/axayoxou7c0H66UmjHrZ5V+ucCTIYL8y6aIwtnMnQuAqsxrpr7xW0b8iijDGLduytgw9998RkSulzxFl7iQLX6c/abPjErCpeu3FaKF0WwTQpFIqP9/DBF5DIC/TLcG0vkDLoYpa11avoTwkflVJEBgDnIYZS8oWVFYlm4TDUvs25NOD6woFcqJZotGiyGe8ufeRLtk4E+0+1L1eoEfLgiXYdGJU924C', 'MCTwTyJ7GIm4GvJXxdmYm9usMru1icZ7!tH1FuIMchPpdTkr7XQiOCLKSJOy2kTw1aGWc6OefvpopEOZJCVIv7BY1nDBjvtf6bgxUl2P4XPoqgCf1tlj!Kj!slD*SEDflMCPzJmVHdNdk5iV!Vshcm1gb5fW*Cah1DIJPff1uQzoUw4VgAEsj!!sENoWBpUnlm2WrYfq1kdx1RsNeFMpNRVP3seeAROLXZxFI0LLT6JiwwD4qYuTFMWv9iHlx0NfbF!*Uom9cQ7nEC3RQFD2yZT3JqMsesopQfX0Dd0p!0LS1PKhk76*5s1YRH!iuMtraUVs3x6oDiACnbu6OHZhHreEiWTH!!MqmSirrHgOqsC6GyZlwiLBPTb3hL8muI0qURg0sTwPJjfg!B*mnCd2eFY4TgnKtJJheKed81JRHmWPqvxouIX8bvGtlqU201nq16Pm6B93L645BPqVXGrfyq2o$', 1580825336, 0, 'dwild8@outlook.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_accounts`
--

CREATE TABLE `user_accounts` (
  `id` int(11) NOT NULL,
  `user_id` text NOT NULL,
  `account_id` int(11) NOT NULL,
  `account_type_id` int(11) NOT NULL,
  `domain_admin` tinyint(1) NOT NULL DEFAULT 0,
  `ad_accountId` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `business_justification` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_accounts`
--

INSERT INTO `user_accounts` (`id`, `user_id`, `account_id`, `account_type_id`, `domain_admin`, `ad_accountId`, `email`, `date_created`, `business_justification`) VALUES
(25, 'a632a1dc-1382-4ffb-b7fe-b6a431c221c9', 2, 2, 1, NULL, NULL, NULL, 'utf'),
(26, 'a632a1dc-1382-4ffb-b7fe-b6a431c221c9', 2, 2, 1, NULL, NULL, NULL, 'Test'),
(27, 'a632a1dc-1382-4ffb-b7fe-b6a431c221c9', 2, 2, 0, NULL, NULL, NULL, 'I want the yellow'),
(28, 'a632a1dc-1382-4ffb-b7fe-b6a431c221c9', 1, 1, 0, NULL, NULL, NULL, 'More');

-- --------------------------------------------------------

--
-- Table structure for table `user_account_access_rights`
--

CREATE TABLE `user_account_access_rights` (
  `id` int(11) NOT NULL,
  `user_account_id` int(11) NOT NULL,
  `access_right_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_account_access_rights`
--

INSERT INTO `user_account_access_rights` (`id`, `user_account_id`, `access_right_id`) VALUES
(2, 15, 20),
(3, 15, 68),
(4, 23, 16),
(5, 23, 16),
(6, 25, 15),
(7, 25, 127),
(8, 27, 16),
(9, 27, 106);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int(11) NOT NULL,
  `user_id` text NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 'a632a1dc-1382-4ffb-b7fe-b6a431c221c9', 2),
(2, 'a632a1dc-1382-4ffb-b7fe-b6a431c221c9', 4),
(3, 'f1ae8f2acafa0926', 3),
(17, 'a632a1dc-1382-4ffb-b7fe-b6a431c221c9', 16),
(20, 'f1ae8f2acafa0926', 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_rights`
--
ALTER TABLE `access_rights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_types`
--
ALTER TABLE `account_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `approval_chains`
--
ALTER TABLE `approval_chains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contractor_statuses`
--
ALTER TABLE `contractor_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_statuses`
--
ALTER TABLE `employee_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_approvals`
--
ALTER TABLE `form_approvals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form_statuses`
--
ALTER TABLE `form_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queued_jobs`
--
ALTER TABLE `queued_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queue_phinxlog`
--
ALTER TABLE `queue_phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `queue_processes`
--
ALTER TABLE `queue_processes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `workerkey` (`workerkey`),
  ADD UNIQUE KEY `pid` (`pid`,`server`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_accounts`
--
ALTER TABLE `user_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_account_access_rights`
--
ALTER TABLE `user_account_access_rights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_rights`
--
ALTER TABLE `access_rights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `account_types`
--
ALTER TABLE `account_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `approval_chains`
--
ALTER TABLE `approval_chains`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contractor_statuses`
--
ALTER TABLE `contractor_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_statuses`
--
ALTER TABLE `employee_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `form_approvals`
--
ALTER TABLE `form_approvals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `form_statuses`
--
ALTER TABLE `form_statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `queued_jobs`
--
ALTER TABLE `queued_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `queue_processes`
--
ALTER TABLE `queue_processes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_accounts`
--
ALTER TABLE `user_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user_account_access_rights`
--
ALTER TABLE `user_account_access_rights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
