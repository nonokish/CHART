-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2021 at 11:31 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chart`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_assessment`
--

CREATE TABLE `access_assessment` (
  `id` int(11) NOT NULL,
  `nursing_assessment_id` int(11) DEFAULT NULL,
  `symptoms_infection` tinyint(1) DEFAULT NULL,
  `symptoms_infection_notes` text DEFAULT NULL,
  `normal_limits` tinyint(1) DEFAULT NULL,
  `normal_limits_notes` text DEFAULT NULL,
  `abnormal_reported` tinyint(1) DEFAULT NULL,
  `abnormal_reported_notes` text DEFAULT NULL,
  `infection_site_assessment` varchar(250) DEFAULT NULL,
  `infection_site` varchar(250) DEFAULT NULL,
  `accessed` tinyint(1) DEFAULT NULL,
  `capped` tinyint(1) DEFAULT NULL,
  `clamped` tinyint(1) DEFAULT NULL,
  `deceased` tinyint(1) DEFAULT NULL,
  `flushed` tinyint(1) DEFAULT NULL,
  `patent` tinyint(1) DEFAULT NULL,
  `other` tinyint(1) DEFAULT NULL,
  `other_comment` text DEFAULT NULL,
  `access_checked` tinyint(1) DEFAULT NULL,
  `access_comment` text DEFAULT NULL,
  `site_classification` varchar(250) DEFAULT NULL,
  `site_comment` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `access_assessment`
--

INSERT INTO `access_assessment` (`id`, `nursing_assessment_id`, `symptoms_infection`, `symptoms_infection_notes`, `normal_limits`, `normal_limits_notes`, `abnormal_reported`, `abnormal_reported_notes`, `infection_site_assessment`, `infection_site`, `accessed`, `capped`, `clamped`, `deceased`, `flushed`, `patent`, `other`, `other_comment`, `access_checked`, `access_comment`, `site_classification`, `site_comment`, `notes`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 1, 0, 'sad', 1, 'asd', 1, 'asd', 'Drainage', 'Vascular', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-09 03:40:19', 1, NULL, NULL),
(2, 2, 1, 'note1', 1, 'note2', 1, 'note3', 'Crusty', 'Vascular', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-18 09:43:45', 1, '2021-02-18 16:27:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `type` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `price_philhealth` double DEFAULT NULL,
  `brand` varchar(250) DEFAULT NULL,
  `unit_measure` varchar(250) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addons`
--

INSERT INTO `addons` (`id`, `type`, `name`, `price`, `price_philhealth`, `brand`, `unit_measure`, `expiration`, `date_created`, `created_by`, `last_updated`, `updated_by`, `is_active`) VALUES
(1, 'Medication', 'name', 0, NULL, 'measure', 'brand', '2021-02-03', '2021-02-23 05:18:49', 1, NULL, NULL, 1),
(2, 'Medication', 'name2', 12121, NULL, '1212', '1212', '0000-00-00', '2021-02-26 05:10:28', 1, NULL, NULL, 1),
(3, 'PRN', 'keziar basa', 1, NULL, 'ml', 'XO', '2021-02-26', '2021-02-26 05:19:00', 1, NULL, NULL, 1),
(4, '', '', 0, NULL, '', '', '0000-00-00', '2021-02-26 05:27:41', 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `appointment_date` datetime NOT NULL,
  `is_arrived` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `patient_id`, `appointment_date`, `is_arrived`, `date_created`, `created_by`, `last_updated`, `updated_by`, `is_active`) VALUES
(1, 7, '2021-02-13 16:22:00', 1, '2021-02-05 08:22:45', 1, NULL, NULL, 1),
(2, 28, '2021-02-10 14:09:00', 0, '2021-02-08 06:08:49', 1, NULL, NULL, 0),
(3, 28, '2021-02-04 21:34:00', 1, '2021-02-10 13:34:10', 1, NULL, NULL, 1),
(4, 29, '2021-02-19 17:40:00', 1, '2021-02-18 09:40:39', 1, NULL, NULL, 1),
(5, 30, '2021-02-12 20:57:00', 1, '2021-02-18 12:57:16', 1, NULL, NULL, 1),
(6, 7, '2021-03-04 15:17:00', 1, '2021-03-01 07:17:28', 2, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `assessments`
--

CREATE TABLE `assessments` (
  `id` int(11) NOT NULL,
  `assessment_no_id` varchar(250) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `status` varchar(250) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assessments`
--

INSERT INTO `assessments` (`id`, `assessment_no_id`, `appointment_id`, `patient_id`, `status`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 'ASS-0', 1, 7, 'complete', '2021-03-02 08:22:53', 1, '2021-04-06', 1),
(2, 'ASS-1', 3, 28, 'complete', '2021-02-10 13:34:15', 1, '2021-04-06', 1),
(3, 'ASS-2', 4, 29, 'ongoing', '2021-02-18 09:40:45', 1, NULL, NULL),
(4, 'ASS-3', 5, 30, 'complete', '2021-02-18 12:57:20', 1, NULL, NULL),
(5, 'ASS-1', 6, 7, 'ongoing', '2021-03-30 05:45:13', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billings`
--

CREATE TABLE `billings` (
  `id` int(11) NOT NULL,
  `billing_no_id` varchar(250) NOT NULL,
  `appointment_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `status` varchar(250) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billings`
--

INSERT INTO `billings` (`id`, `billing_no_id`, `appointment_id`, `patient_id`, `status`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 'BIL-100000', 1, 7, 'pending', '2021-02-05 08:22:53', 1, NULL, NULL),
(2, 'BIL-100001', 3, 28, 'pending', '2021-02-10 13:34:15', 1, NULL, NULL),
(3, 'BIL-100002', 4, 29, 'pending', '2021-02-18 09:40:45', 1, NULL, NULL),
(4, 'BIL-100003', 5, 30, 'pending', '2021-02-18 12:57:20', 1, NULL, NULL),
(5, 'BIL-100004', 6, 7, 'pending', '2021-03-30 05:45:13', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `billing_items`
--

CREATE TABLE `billing_items` (
  `id` int(11) NOT NULL,
  `billing_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billing_items`
--

INSERT INTO `billing_items` (`id`, `billing_id`, `item_id`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 1, 1, '2021-02-05 08:22:53', 1, NULL, NULL),
(2, 2, 2, '2021-02-10 13:34:15', 1, NULL, NULL),
(3, 3, 2, '2021-02-18 09:40:45', 1, NULL, NULL),
(4, 4, 2, '2021-02-18 12:57:20', 1, NULL, NULL),
(5, 5, 1, '2021-03-30 05:45:13', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cardiac`
--

CREATE TABLE `cardiac` (
  `id` int(11) NOT NULL,
  `nursing_assessment_id` int(11) DEFAULT NULL,
  `heartbeat` varchar(250) DEFAULT NULL,
  `edema` varchar(250) DEFAULT NULL,
  `pitting` varchar(250) DEFAULT NULL,
  `jvd` varchar(250) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cardiac`
--

INSERT INTO `cardiac` (`id`, `nursing_assessment_id`, `heartbeat`, `edema`, `pitting`, `jvd`, `notes`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 1, 'Irregular', 'JVD', '+2', '1', 'sadwas', '2021-02-22 07:34:22', 1, '2021-02-22 07:34:22', 1),
(2, 2, 'Regular', 'Upper Extremite', '+1', '1', 'notes3', '2021-02-22 05:56:35', 1, '2021-02-18 16:27:33', 1),
(3, 0, '', '', '', '', '', '2021-02-22 05:49:07', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `central_venous_catheter`
--

CREATE TABLE `central_venous_catheter` (
  `id` int(11) NOT NULL,
  `nursing_assessment_id` int(11) DEFAULT NULL,
  `site_assessment_id` int(11) DEFAULT NULL,
  `post_treatment_data_id` int(11) DEFAULT NULL,
  `access_type` varchar(250) DEFAULT NULL,
  `access_status` varchar(250) DEFAULT NULL,
  `access_status_comment` text DEFAULT NULL,
  `access_location` varchar(250) DEFAULT NULL,
  `access_location_comment` text DEFAULT NULL,
  `drainage_description` varchar(250) DEFAULT NULL,
  `drainage_description_comment` text DEFAULT NULL,
  `date_access_placement` date DEFAULT NULL,
  `vascular_surgeon_id` int(11) DEFAULT NULL,
  `hospital` varchar(250) DEFAULT NULL,
  `first_use_catheter_verified` varchar(250) DEFAULT NULL,
  `first_use_catheter_comment` text DEFAULT NULL,
  `dressing_dry_intact` tinyint(1) DEFAULT NULL,
  `type_dressing` varchar(250) DEFAULT NULL,
  `type_dressing_comment` text DEFAULT NULL,
  `access_condition` varchar(250) DEFAULT NULL,
  `presence_discharge` tinyint(1) DEFAULT NULL,
  `type_discharge` varchar(250) DEFAULT NULL,
  `last_date_dressing_change` date DEFAULT NULL,
  `last_date_dressing_notes` varchar(250) DEFAULT NULL,
  `type_hd_caps` varchar(250) DEFAULT NULL,
  `type_hd_caps_comments` text DEFAULT NULL,
  `last_date_caps` date DEFAULT NULL,
  `both_internal_and_catheter` varchar(250) DEFAULT NULL,
  `infection_prevention` tinyint(1) DEFAULT NULL,
  `dressing_change_freq` tinyint(1) DEFAULT NULL,
  `vascular_access_plan` tinyint(1) DEFAULT NULL,
  `handouts` tinyint(1) DEFAULT NULL,
  `patient_refused` tinyint(1) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `abnormal_reported` tinyint(1) DEFAULT 0,
  `notes` text DEFAULT NULL,
  `facility_id` int(11) DEFAULT NULL,
  `physician_id` int(11) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `central_venous_catheter`
--

INSERT INTO `central_venous_catheter` (`id`, `nursing_assessment_id`, `site_assessment_id`, `post_treatment_data_id`, `access_type`, `access_status`, `access_status_comment`, `access_location`, `access_location_comment`, `drainage_description`, `drainage_description_comment`, `date_access_placement`, `vascular_surgeon_id`, `hospital`, `first_use_catheter_verified`, `first_use_catheter_comment`, `dressing_dry_intact`, `type_dressing`, `type_dressing_comment`, `access_condition`, `presence_discharge`, `type_discharge`, `last_date_dressing_change`, `last_date_dressing_notes`, `type_hd_caps`, `type_hd_caps_comments`, `last_date_caps`, `both_internal_and_catheter`, `infection_prevention`, `dressing_change_freq`, `vascular_access_plan`, `handouts`, `patient_refused`, `comments`, `abnormal_reported`, `notes`, `facility_id`, `physician_id`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 1, 31, NULL, 'Subdermal Port', '', '', 'Forearm - L', '', '', '', '2021-02-10', NULL, '2', 'MD Order', '', 0, 'Transparent Polyurethane', '', 'sa', 1, 'Sanguinous', '2021-02-23', 'saad', 'Tego', '', '0000-00-00', '', 1, 1, 0, 0, 1, 'sadaw', 0, '', NULL, NULL, '2021-02-09 03:40:19', 1, '2021-02-09 13:51:41', 1),
(2, NULL, 36, 1, 'Catheter - Non-Tunnel', 'Other', '12', 'Groin - L', '23', 'Yellow', '23', NULL, NULL, NULL, 'MD Order', '2323', 1, 'Gauze', '2323', NULL, NULL, NULL, NULL, NULL, 'Clear Guard', '232', '2021-02-09', 'Arterial', NULL, NULL, NULL, NULL, NULL, NULL, 1, '23', NULL, NULL, '2021-02-10 06:37:05', 1, '2021-02-10 06:44:59', 1),
(3, 2, NULL, NULL, 'Catheter - Tunnel', NULL, NULL, 'Forearm - L', NULL, NULL, NULL, '2021-02-01', NULL, '2', 'X-Ray', NULL, 1, 'Gauze', NULL, 'access conditon 2', 1, 'Sanguinous', '2021-02-04', 'describe 2', 'Clear Guard', NULL, NULL, 'Is HD Catheter', 1, 1, 1, 1, 1, 'comments notes 1', 0, NULL, 3, 6, '2021-02-18 09:43:45', 1, '2021-02-18 16:27:32', 1),
(4, NULL, 39, 0, 'Catheter - Non-Tunnel', 'Other', '12', 'Groin - L', '23', 'Yellow', '23', NULL, NULL, NULL, 'MD Order', '2323', 1, 'Gauze', '2323', NULL, NULL, NULL, NULL, NULL, 'Clear Guard', '232', '2021-02-09', 'Arterial', NULL, NULL, NULL, NULL, NULL, NULL, 1, '23', NULL, NULL, '2021-03-03 08:28:59', 1, '2021-03-03 08:36:15', 1),
(5, NULL, 44, 2, 'Subdermal Port', 'Other', 'lala', '', '', '', '', NULL, NULL, NULL, '', '', 0, '', '', NULL, NULL, NULL, NULL, NULL, '', '', '0000-00-00', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, '', NULL, NULL, '2021-03-04 02:26:06', 1, '2021-03-04 02:55:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `custom_treatments`
--

CREATE TABLE `custom_treatments` (
  `id` int(11) NOT NULL,
  `physician_id` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `heparin_free_bool` tinyint(1) DEFAULT NULL,
  `heparin_free_select` varchar(300) DEFAULT NULL,
  `catheter_lock_bool` tinyint(1) DEFAULT NULL,
  `catheter_lock_select` varchar(300) DEFAULT NULL,
  `hit_patient_bool` tinyint(1) DEFAULT NULL,
  `hit_patient_select` varchar(300) DEFAULT NULL,
  `rn_verified_bool` tinyint(1) DEFAULT NULL,
  `hd` varchar(250) DEFAULT NULL,
  `suf` varchar(250) DEFAULT NULL,
  `fluid_removal` varchar(250) DEFAULT NULL,
  `dialyzer` varchar(250) DEFAULT NULL,
  `lab_works_bool` tinyint(1) DEFAULT NULL,
  `lab_works_select` varchar(250) DEFAULT NULL,
  `sodium` varchar(250) DEFAULT NULL,
  `bicarbonate` varchar(250) DEFAULT NULL,
  `calcium` varchar(250) DEFAULT NULL,
  `blood_flow` varchar(250) DEFAULT NULL,
  `dialysate_flow` varchar(250) DEFAULT NULL,
  `sodium_modelling` varchar(250) DEFAULT NULL,
  `heparin_infusion` varchar(250) DEFAULT NULL,
  `md_signature` varchar(250) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custom_treatments`
--

INSERT INTO `custom_treatments` (`id`, `physician_id`, `name`, `heparin_free_bool`, `heparin_free_select`, `catheter_lock_bool`, `catheter_lock_select`, `hit_patient_bool`, `hit_patient_select`, `rn_verified_bool`, `hd`, `suf`, `fluid_removal`, `dialyzer`, `lab_works_bool`, `lab_works_select`, `sodium`, `bicarbonate`, `calcium`, `blood_flow`, `dialysate_flow`, `sodium_modelling`, `heparin_infusion`, `md_signature`, `date`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 1, 'Standard Treatment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'X 4H', 'X 3H', '2-3 ml', 'F180 or Equivalent', NULL, NULL, '137(mEq/L)', '35(mEq/L)', '2.5(mEq/L)', 'As tolerated by the access and per protocol.', '600 ml/min', '145 step PRN if SBP less than 90 mmHg', 'No Heparin', NULL, NULL, '2021-02-19 01:58:48', 1, NULL, NULL),
(4, 1, 'sam', 0, 'May use 100-200 ml NS every 30-60 minutes and PRN to prevent clotting of extracorporeal circuit. Do not exceed 500 ml.', 1, '', 0, '', 0, '', '', '', '', 0, 'Draw HBsAg, HBsAb, HBcAb, Hepatitis C antibody panel on admission. If HBsAb is less than 10 milli-IU/ml draw HBsAg monthly.', '', '', '', '', '', '', '', '', '0000-00-00', '2021-02-19 01:58:50', 1, NULL, NULL),
(5, 1, 'sam', 0, 'May use 100-200 ml NS every 30-60 minutes and PRN to prevent clotting of extracorporeal circuit. Do not exceed 500 ml.', 1, '', 0, '', 0, '', '', '', '', 0, 'Draw HBsAg, HBsAb, HBcAb, Hepatitis C antibody panel on admission. If HBsAb is less than 10 milli-IU/ml draw HBsAg monthly.', '', '', '', '', '', '', '', '', '0000-00-00', '2021-02-19 01:58:52', 1, NULL, NULL),
(6, 1, '', 0, 'May use 100-200 ml NS every 30-60 minutes and PRN to prevent clotting of extracorporeal circuit. Do not exceed 500 ml.', 0, 'Instill Heparin 5000 units/ml in each port according to catheter fill volume', 0, 'Instill Heparin 120mg/3ml in each port according to catheter fill volume', 0, '', '', '', '', 0, 'Draw HBsAg, HBsAb, HBcAb, Hepatitis C antibody panel on admission. If HBsAb is less than 10 milli-IU/ml draw HBsAg monthly.', '', '', '', '', '', '', '', '', '0000-00-00', '2021-02-19 05:44:58', 1, '2021-02-19 05:44:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `dialysis_machine_setup`
--

CREATE TABLE `dialysis_machine_setup` (
  `id` int(11) NOT NULL,
  `assessment_id` int(11) DEFAULT NULL,
  `b_braun` varchar(250) DEFAULT NULL,
  `station_number` varchar(250) DEFAULT NULL,
  `conductivity_machine` varchar(250) DEFAULT NULL,
  `conductivity_meter` varchar(250) DEFAULT NULL,
  `ph` varchar(250) DEFAULT NULL,
  `machine_temperature` varchar(250) DEFAULT NULL,
  `ph_test` varchar(250) DEFAULT NULL,
  `gross_bleach` varchar(250) DEFAULT NULL,
  `pressure_alarm` varchar(250) DEFAULT NULL,
  `temperature_set` varchar(250) DEFAULT NULL,
  `dialyzer` varchar(250) DEFAULT NULL,
  `is_new` tinyint(1) DEFAULT NULL,
  `cell_volume` varchar(250) DEFAULT NULL,
  `no_of_uses` varchar(250) DEFAULT NULL,
  `match_patient_dialyzer` tinyint(1) DEFAULT NULL,
  `verified_by` int(11) DEFAULT NULL,
  `staff_name` varchar(250) DEFAULT NULL,
  `serial_number` varchar(250) DEFAULT NULL,
  `last_use_date` date DEFAULT NULL,
  `disinfection_date_time` datetime DEFAULT NULL,
  `sterilant_negative` tinyint(1) DEFAULT NULL,
  `acid_potency_positive` tinyint(1) DEFAULT NULL,
  `staff_name2` varchar(250) DEFAULT NULL,
  `verified_by2` int(11) DEFAULT NULL,
  `dialysate_sodium` varchar(250) DEFAULT NULL,
  `dialysate_bicarbonate` varchar(250) DEFAULT NULL,
  `dialysate_potassium` varchar(250) DEFAULT NULL,
  `dialysate_calcium` varchar(250) DEFAULT NULL,
  `dialysate_flow_rate` varchar(250) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dialysis_machine_setup`
--

INSERT INTO `dialysis_machine_setup` (`id`, `assessment_id`, `b_braun`, `station_number`, `conductivity_machine`, `conductivity_meter`, `ph`, `machine_temperature`, `ph_test`, `gross_bleach`, `pressure_alarm`, `temperature_set`, `dialyzer`, `is_new`, `cell_volume`, `no_of_uses`, `match_patient_dialyzer`, `verified_by`, `staff_name`, `serial_number`, `last_use_date`, `disinfection_date_time`, `sterilant_negative`, `acid_potency_positive`, `staff_name2`, `verified_by2`, `dialysate_sodium`, `dialysate_bicarbonate`, `dialysate_potassium`, `dialysate_calcium`, `dialysate_flow_rate`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 1, 'asd', '1', '1', '1', '1', '1', 'ph passed', 'anu ni sya', 'presure alamr', '1', '1', 0, '1', '1', 1, 1, 'Joel Nava Jr.', '1', '2021-02-09', '2021-02-08 10:23:00', 1, 0, 'Pedro Tamunan Jr.', 1, '1', '1', '1', '1', '1', '2021-02-09 03:00:46', 1, NULL, NULL),
(2, 1, 'asd', '23', '23', '23', '23', '23', '1', '1', '23', '1', '1', 1, '23', '1', 1, 1, NULL, '1', '2021-02-09', '2021-02-08 10:23:00', 0, 1, NULL, 1, '1', '1', '1', '1', '1', '2021-02-22 06:27:38', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `name`, `date_created`, `created_by`, `is_active`) VALUES
(1, 'sample hospital', '2021-02-18 08:56:43', 1, 1),
(2, 'test 1', '2021-02-18 08:57:19', 1, 1),
(3, 'wdw', '2021-02-18 09:15:04', 1, 1),
(4, 'wdwasdwa', '2021-02-18 09:15:06', 1, 1),
(5, 'asdwasdwa', '2021-02-18 09:15:23', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gastrointestinal`
--

CREATE TABLE `gastrointestinal` (
  `id` int(11) NOT NULL,
  `nursing_assessment_id` int(11) DEFAULT NULL,
  `abdominal_assessment` varchar(250) DEFAULT NULL,
  `constipation` tinyint(1) DEFAULT NULL,
  `diarrhea` tinyint(1) DEFAULT NULL,
  `heartburn` tinyint(1) DEFAULT NULL,
  `blood_stool` tinyint(1) DEFAULT NULL,
  `nausea` tinyint(1) DEFAULT NULL,
  `vomiting` tinyint(1) DEFAULT NULL,
  `poor_appetite` tinyint(1) DEFAULT NULL,
  `abnormality_reported` tinyint(1) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gastrointestinal`
--

INSERT INTO `gastrointestinal` (`id`, `nursing_assessment_id`, `abdominal_assessment`, `constipation`, `diarrhea`, `heartburn`, `blood_stool`, `nausea`, `vomiting`, `poor_appetite`, `abnormality_reported`, `notes`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 1, 'Tender', 1, 1, 1, 1, 1, 1, 1, 1, 'hala kaw', '2021-02-09 03:40:20', 1, '2021-02-22 07:34:22', 1),
(2, 2, 'Soft', 1, 1, 1, 1, 1, 1, 1, 1, 'notes6', '2021-02-18 09:43:45', 1, '2021-02-18 16:27:33', 1),
(3, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, '', '2021-02-22 05:49:07', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genitourinary`
--

CREATE TABLE `genitourinary` (
  `id` int(11) NOT NULL,
  `nursing_assessment_id` int(11) DEFAULT NULL,
  `gu_assessment` varchar(250) DEFAULT NULL,
  `urinate_per_day` varchar(250) DEFAULT NULL,
  `volume_urine` varchar(250) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genitourinary`
--

INSERT INTO `genitourinary` (`id`, `nursing_assessment_id`, `gu_assessment`, `urinate_per_day`, `volume_urine`, `notes`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 1, 'Intermittent Catheterization', 'asd', 'haha', 'asdwasdwa', '2021-02-09 03:40:20', 1, '2021-02-22 07:34:22', 1),
(2, 2, 'Voids', 'still void', 'urine 24', 'note 8 plus', '2021-02-18 09:43:45', 1, '2021-02-18 16:27:33', 1),
(3, 0, '', '', '', '', '2021-02-22 05:49:07', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hd_line_status`
--

CREATE TABLE `hd_line_status` (
  `id` int(11) NOT NULL,
  `assessment_id` int(11) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `accessed` tinyint(1) NOT NULL DEFAULT 0,
  `capped` tinyint(1) NOT NULL DEFAULT 0,
  `clamped` tinyint(1) NOT NULL DEFAULT 0,
  `deceased` tinyint(1) NOT NULL DEFAULT 0,
  `flushed` tinyint(1) NOT NULL DEFAULT 0,
  `patent` tinyint(1) NOT NULL DEFAULT 0,
  `other` tinyint(1) NOT NULL DEFAULT 0,
  `other_comment` text DEFAULT NULL,
  `access_checked` tinyint(1) NOT NULL DEFAULT 0,
  `access_comment` text DEFAULT NULL,
  `site_classification` varchar(250) DEFAULT NULL,
  `site_comment` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hd_line_status`
--

INSERT INTO `hd_line_status` (`id`, `assessment_id`, `type`, `accessed`, `capped`, `clamped`, `deceased`, `flushed`, `patent`, `other`, `other_comment`, `access_checked`, `access_comment`, `site_classification`, `site_comment`, `notes`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 1, 'pre_treatment', 0, 0, 0, 0, 0, 0, 0, '', 0, '', '', '', 'anu ka gagao', '2021-02-22 04:14:12', 1, '2021-02-22 04:14:12', 1),
(2, 1, 'post_treatment', 1, 1, 1, 1, 1, 1, 0, '', 1, '', 'Good', 'good', 'wala ko notes', '2021-03-03 08:28:58', 1, NULL, NULL),
(3, 1, 'post_treatment', 1, 1, 1, 1, 1, 1, 0, '', 1, '', 'Good', 'good', 'wala ko notes', '2021-03-03 08:32:31', 1, NULL, NULL),
(4, 1, 'post_treatment', 1, 1, 1, 1, 1, 1, 0, '', 1, '', 'Good', 'good', 'wala ko notes', '2021-03-03 08:36:15', 1, NULL, NULL),
(5, 2, 'post_treatment', 1, 1, 0, 1, 0, 0, 0, '', 1, '', 'Perfect', '', 'anu ni sya', '2021-03-04 02:55:55', 1, '2021-03-04 02:55:55', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hemodialysis`
--

CREATE TABLE `hemodialysis` (
  `id` int(11) NOT NULL,
  `treatment_data_id` int(11) NOT NULL,
  `ultrafiltration_rate` varchar(250) DEFAULT NULL,
  `ultrafiltration_removed` varchar(250) DEFAULT NULL,
  `arterial_pressure` varchar(250) DEFAULT NULL,
  `venous_pressure` varchar(250) DEFAULT NULL,
  `dialysate_flow_rate` varchar(250) DEFAULT NULL,
  `transmembrane_pressure` varchar(250) DEFAULT NULL,
  `blood_flow_rate` varchar(250) DEFAULT NULL,
  `volume_heparin` varchar(250) DEFAULT NULL,
  `pnss_flushing` varchar(250) DEFAULT NULL,
  `intra_hemodialysis_comment` text DEFAULT NULL,
  `treatment_number` varchar(250) DEFAULT NULL,
  `bp_location` varchar(250) DEFAULT NULL,
  `dry_weight_date` varchar(250) DEFAULT NULL,
  `pre_treatment_weight` varchar(250) DEFAULT NULL,
  `access_checked` varchar(250) DEFAULT NULL,
  `site_classification` varchar(250) DEFAULT NULL,
  `jugular_vein` varchar(250) DEFAULT NULL,
  `edema` varchar(250) DEFAULT NULL,
  `sob` varchar(250) DEFAULT NULL,
  `lung_sounds` varchar(250) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hemodialysis`
--

INSERT INTO `hemodialysis` (`id`, `treatment_data_id`, `ultrafiltration_rate`, `ultrafiltration_removed`, `arterial_pressure`, `venous_pressure`, `dialysate_flow_rate`, `transmembrane_pressure`, `blood_flow_rate`, `volume_heparin`, `pnss_flushing`, `intra_hemodialysis_comment`, `treatment_number`, `bp_location`, `dry_weight_date`, `pre_treatment_weight`, `access_checked`, `site_classification`, `jugular_vein`, `edema`, `sob`, `lung_sounds`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 5, 'ulty', 'rem', 'arter', 'venou', 'dialy', 'trans', 'blood flo', 'volume', 'pnss', 'intra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-08 03:24:10', 1, NULL, NULL),
(2, 6, '21', '12', '2', '1', '21', '2', '3', '4', '5', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-08 03:25:52', 1, NULL, NULL),
(9, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'treat', 'bp lo', '2021-02-16', 'pre treat weight', 'access check', 'site class', 'jugular', 'edema', 'sob', 'yea boy', '2021-02-08 08:55:52', 1, '2021-02-22 07:03:38', 1),
(10, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'treat', 'bp lo', '2021-02-16', 'pre treat weight', 'access check', 'site class', 'jugular', 'edema', 'sob', 'lung sound', '2021-02-22 06:27:47', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `internal_access`
--

CREATE TABLE `internal_access` (
  `id` int(11) NOT NULL,
  `nursing_assessment_id` int(11) DEFAULT NULL,
  `site_assessment_id` int(11) DEFAULT NULL,
  `post_treatment_data_id` int(11) DEFAULT NULL,
  `access_type` varchar(250) DEFAULT NULL,
  `access_type_comment` text DEFAULT NULL,
  `access_status` varchar(250) DEFAULT NULL,
  `access_status_comment` text DEFAULT NULL,
  `access_location` varchar(250) DEFAULT NULL,
  `access_location_comment` text DEFAULT NULL,
  `access_condition` varchar(250) DEFAULT NULL,
  `hospital` varchar(250) DEFAULT NULL,
  `vascular_surgeon_id` int(11) DEFAULT NULL,
  `thrill_present` tinyint(1) DEFAULT NULL,
  `bruit_present` tinyint(1) DEFAULT NULL,
  `needle_size` varchar(250) DEFAULT NULL,
  `both_internal_and_catheter` varchar(250) DEFAULT NULL,
  `drainage_description` varchar(250) DEFAULT NULL,
  `drainage_description_comment` text DEFAULT NULL,
  `abnormal_report` tinyint(1) NOT NULL DEFAULT 0,
  `notes` text DEFAULT NULL,
  `facility_id` int(11) DEFAULT NULL,
  `physician_id` int(11) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `internal_access`
--

INSERT INTO `internal_access` (`id`, `nursing_assessment_id`, `site_assessment_id`, `post_treatment_data_id`, `access_type`, `access_type_comment`, `access_status`, `access_status_comment`, `access_location`, `access_location_comment`, `access_condition`, `hospital`, `vascular_surgeon_id`, `thrill_present`, `bruit_present`, `needle_size`, `both_internal_and_catheter`, `drainage_description`, `drainage_description_comment`, `abnormal_report`, `notes`, `facility_id`, `physician_id`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 1, 26, NULL, '', '', '', '', '', '', 'sample', '1', NULL, 1, 0, '', '', '', '', 0, '', NULL, NULL, '2021-02-09 03:40:19', 1, '2021-02-22 04:14:12', 1),
(2, NULL, 37, 1, 'Other', 'sd', '', 'asd', '', 'asd', NULL, NULL, NULL, NULL, NULL, '', 'Arterial', '4', 'asdasd', 0, 'asdasd', NULL, NULL, '2021-02-10 06:43:52', 1, '2021-02-10 06:44:59', 1),
(3, 2, NULL, NULL, 'AV Fistula', NULL, NULL, NULL, 'Forearm - L', NULL, 'acces condition', '1', NULL, 1, 1, '15G', 'Arterial', NULL, NULL, 0, NULL, 2, 6, '2021-02-18 09:43:45', 1, '2021-02-18 16:27:32', 1),
(4, NULL, 38, 0, 'Other', 'sd', '', 'asd', '', 'asd', NULL, NULL, NULL, NULL, NULL, '', 'Arterial', '4', 'asdasd', 0, 'asdasd', NULL, NULL, '2021-03-03 08:28:58', 1, '2021-03-03 08:36:15', 1),
(5, NULL, 40, 2, 'AV Graft', '', 'Absent Thrill/Bruit', '', 'Forearm - L', '', NULL, NULL, NULL, NULL, NULL, '', 'Not in use', '', '', 0, '', NULL, NULL, '2021-03-04 01:27:57', 1, '2021-03-04 02:55:56', 1),
(6, NULL, 41, 3, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', 0, '', NULL, NULL, '2021-03-04 01:36:02', 1, NULL, NULL),
(7, NULL, 0, 4, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', 0, '', NULL, NULL, '2021-03-04 01:39:21', 1, NULL, NULL),
(8, NULL, 42, 5, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', 0, '', NULL, NULL, '2021-03-04 01:39:48', 1, NULL, NULL),
(9, NULL, 43, 6, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, '', '', '', '', 0, '', NULL, NULL, '2021-03-04 01:42:07', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` varchar(250) DEFAULT NULL,
  `price` double NOT NULL,
  `price_discount` double DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` date NOT NULL,
  `updated_by` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `type`, `price`, `price_discount`, `date_created`, `created_by`, `last_updated`, `updated_by`, `is_active`) VALUES
(1, 'Conventional New', 'package', 4786, 2536, '2021-02-03 06:12:10', 1, '0000-00-00', 0, 1),
(2, 'Conventional Reuse', 'package', 3486, 1536, '2021-02-03 06:12:10', 1, '0000-00-00', 0, 1),
(3, 'Hemodiafiltration New', 'package', 6486, 4236, '2021-02-03 06:14:49', 1, '0000-00-00', 0, 1),
(4, 'Hemodiafiltration Reuse', 'package', 4486, 2236, '2021-02-03 06:14:49', 1, '0000-00-00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `machine_reprocessing_data`
--

CREATE TABLE `machine_reprocessing_data` (
  `id` int(11) NOT NULL,
  `assessment_id` int(11) DEFAULT NULL,
  `patient_name` varchar(250) DEFAULT NULL,
  `dob` varchar(250) DEFAULT NULL,
  `medical_record` varchar(250) DEFAULT NULL,
  `dialyzer_type` varchar(250) DEFAULT NULL,
  `serial_no` varchar(250) DEFAULT NULL,
  `date_first_use` varchar(250) DEFAULT NULL,
  `use_no` varchar(250) DEFAULT NULL,
  `reprocessing_machine` varchar(250) DEFAULT NULL,
  `sterilant_used` varchar(250) DEFAULT NULL,
  `reprocessing_successful` tinyint(1) DEFAULT 0,
  `rinse_cycle` tinyint(1) DEFAULT 0,
  `sterilant_negative` tinyint(1) DEFAULT 0,
  `paracetic_acid` tinyint(1) DEFAULT 0,
  `peroxide_negative` tinyint(1) DEFAULT 0,
  `total_cell_count` varchar(250) DEFAULT NULL,
  `is_passed` tinyint(1) DEFAULT NULL,
  `label_printed` tinyint(1) DEFAULT 0,
  `label_verified` tinyint(1) DEFAULT 0,
  `name` tinyint(1) DEFAULT 0,
  `birthday` tinyint(1) DEFAULT 0,
  `medical` tinyint(1) DEFAULT 0,
  `date_time` tinyint(1) DEFAULT 0,
  `label_attached` tinyint(1) DEFAULT 0,
  `storage_rack` tinyint(1) DEFAULT 0,
  `technician` varchar(250) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `machine_reprocessing_data`
--

INSERT INTO `machine_reprocessing_data` (`id`, `assessment_id`, `patient_name`, `dob`, `medical_record`, `dialyzer_type`, `serial_no`, `date_first_use`, `use_no`, `reprocessing_machine`, `sterilant_used`, `reprocessing_successful`, `rinse_cycle`, `sterilant_negative`, `paracetic_acid`, `peroxide_negative`, `total_cell_count`, `is_passed`, `label_printed`, `label_verified`, `name`, `birthday`, `medical`, `date_time`, `label_attached`, `storage_rack`, `technician`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 1, '33', '33', '33', '33', '33', '33', '33', '33', '33', 1, 1, 1, 1, 1, '33', 1, 1, 1, 1, 1, 1, 1, 1, 1, '33', '2021-02-10 10:32:17', 1, NULL, NULL),
(88, 2, 'machine', 'machine', 'machine', 'machine', 'machine', 'machine', 'machine', 'machine', 'machine', 0, 0, 0, 0, 0, 'machine', 0, 0, 0, 0, 0, 0, 0, 0, 0, 'machine', '2021-03-04 02:00:32', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medication_orders`
--

CREATE TABLE `medication_orders` (
  `id` int(11) NOT NULL,
  `assessment_id` int(11) DEFAULT NULL,
  `generic_name` varchar(250) DEFAULT NULL,
  `brand_name` varchar(250) DEFAULT NULL,
  `dosage` varchar(250) DEFAULT NULL,
  `route` varchar(250) DEFAULT NULL,
  `frequency_type` varchar(250) DEFAULT NULL,
  `frequency` varchar(250) NOT NULL,
  `start` date DEFAULT NULL,
  `end` date DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `reason_discontinue` text DEFAULT NULL,
  `is_given` tinyint(1) DEFAULT NULL,
  `given_time` time DEFAULT NULL,
  `given_location` varchar(250) DEFAULT NULL,
  `reason_not_given` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medication_orders`
--

INSERT INTO `medication_orders` (`id`, `assessment_id`, `generic_name`, `brand_name`, `dosage`, `route`, `frequency_type`, `frequency`, `start`, `end`, `notes`, `is_active`, `reason_discontinue`, `is_given`, `given_time`, `given_location`, `reason_not_given`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 2, 'Generic', 'Brand Name', 'Dosage', 'Per orem', 'Weekly', 'Mon,Tue,Wed,Fri,Sat', '2021-03-04', '2021-03-05', 'Sampel notes', 0, 'no reason at all', NULL, NULL, NULL, NULL, '2021-03-04 08:39:36', 1, '2021-03-05 01:28:23', 1),
(2, 2, 'Generic', 'Brand Name', 'Dosage', 'Sublingual', 'Weekly', 'Mon,Thu', '2021-03-03', '2021-03-10', NULL, 0, 'idunoo', NULL, NULL, NULL, NULL, '2021-03-05 03:18:34', 1, '2021-03-05 03:40:14', 1),
(3, 2, 'Generic', 'Brand Name', 'Dosage', 'Inhalation', 'Stat', '', '2021-03-09', '0000-00-00', '2021-03-17', 1, NULL, NULL, NULL, NULL, NULL, '2021-03-05 03:40:04', 1, NULL, NULL),
(4, 2, 'Generic', 'Brand Name', 'Dosage', 'Inhalation', 'Date', 'Mar 31, 2021,Mar 26, 2021,Mar 19, 2021', '0000-00-00', '0000-00-00', '', 1, NULL, NULL, NULL, NULL, NULL, '2021-03-05 03:46:44', 1, NULL, NULL),
(5, 2, 'Generic', 'Brand Name', 'Dosage', 'Sublingual', 'Weekly', 'Mon,Tue', '2021-03-04', '0000-00-00', '2021-03-16', 1, NULL, NULL, NULL, NULL, NULL, '2021-03-05 03:58:00', 1, NULL, NULL),
(6, 2, 'ss', 'sss', 'wa', 'Intradermal', 'Date', 'Apr 01, 2021,Apr 27, 2021,Apr 19, 2021', '0000-00-00', '0000-00-00', 'sdw', 1, NULL, NULL, NULL, NULL, NULL, '2021-03-05 04:19:10', 1, NULL, NULL),
(7, 2, 'we', 'we', 'we', 'Sublingual', 'Weekly', 'Mon,Wed,Thu', '2021-03-04', '2021-03-03', 'we', 1, NULL, NULL, NULL, NULL, NULL, '2021-03-05 04:20:09', 1, NULL, NULL),
(8, 2, 'we', 'we', 'we', 'Sublingual', 'Stat', '', '0000-00-00', '2021-03-16', 'wewe', 1, NULL, NULL, NULL, NULL, NULL, '2021-03-05 04:24:16', 1, NULL, NULL),
(9, 2, 'wew', 'wewe', 'wewe', 'Per orem', 'Weekly', 'Tue,Wed', '2021-03-11', '2021-03-17', 'wewe', 1, NULL, NULL, NULL, NULL, NULL, '2021-03-05 04:30:31', 1, NULL, NULL),
(10, 2, 'awdaw', 'awdaw', 'sadwa', 'Intramuscular', 'Date', 'Apr 01, 2021,Apr 28, 2021', '0000-00-00', '0000-00-00', 'aaa', 1, NULL, NULL, NULL, NULL, NULL, '2021-03-05 04:32:26', 1, NULL, NULL),
(11, 1, 'Generic', 'Brand Name', 'Dosage', 'Per orem', 'PRN', '', '2021-03-17', '2021-03-23', 'instruction', 1, NULL, 1, '12:24:00', 'Iloilo', NULL, '2021-03-29 01:35:30', 1, '2021-03-29 03:29:53', 1),
(12, 1, 'we', 'Brand Name', 'Dosage', 'Intramuscular', 'Weekly', 'Mon,Tue', '2021-03-30', '2021-04-02', 'instr', 1, NULL, 0, NULL, NULL, 'i dont want to', '2021-03-29 04:31:14', 1, '2021-03-29 04:31:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nurses`
--

CREATE TABLE `nurses` (
  `id` int(11) NOT NULL,
  `nurse_no_id` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `first_name` varchar(250) DEFAULT NULL,
  `middle_name` varchar(250) DEFAULT NULL,
  `last_name` varchar(250) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `phone_no` varchar(100) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `province` varchar(250) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `last_updated` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nurses`
--

INSERT INTO `nurses` (`id`, `nurse_no_id`, `image`, `first_name`, `middle_name`, `last_name`, `sex`, `phone_no`, `email`, `address`, `city`, `province`, `zipcode`, `join_date`, `date_created`, `created_by`, `last_updated`, `updated_by`, `is_active`) VALUES
(3, 'NRS-100000', 'avatar.jpg', 'Amira', NULL, 'Lavado', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-31 06:35:25', 1, NULL, NULL, 1),
(4, 'NRS-100001', 'avatar.jpg', 'Dindo', NULL, 'Catolico', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-31 06:35:25', 1, NULL, NULL, 1),
(5, 'NRS-100002', 'avatar.jpg', 'Joseph', NULL, 'Tayco Jr.', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-31 06:35:25', 1, NULL, NULL, 1),
(6, 'NRS-100003', 'avatar.jpg', 'Michael James', NULL, 'Araneta', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-31 06:35:25', 1, NULL, NULL, 1),
(7, 'NRS-100004', 'avatar.jpg', 'Karl', NULL, 'Segovia', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-31 06:35:25', 1, NULL, NULL, 1),
(8, 'NRS-100005', 'avatar.jpg', 'Jither Jade', NULL, 'Magbanua', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-31 06:35:25', 1, NULL, NULL, 1),
(9, 'NRS-100006', 'avatar.jpg', 'Peter Joseph', NULL, 'Patricio', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-31 06:35:25', 1, NULL, NULL, 1),
(10, 'NRS-100007', 'avatar.jpg', 'Mara Rica', NULL, 'Tasin', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-31 06:35:25', 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nursing_assessments`
--

CREATE TABLE `nursing_assessments` (
  `id` int(11) NOT NULL,
  `assessment_id` int(11) NOT NULL,
  `patient_height` varchar(250) NOT NULL,
  `patient_weight` varchar(250) DEFAULT NULL,
  `blood_pressure` varchar(250) DEFAULT NULL,
  `heart_rate` varchar(250) DEFAULT NULL,
  `rhythm` varchar(250) DEFAULT NULL,
  `respirations` varchar(250) DEFAULT NULL,
  `lung_sounds` varchar(250) DEFAULT NULL,
  `temperature` varchar(250) DEFAULT NULL,
  `oxygen_saturation` varchar(250) DEFAULT NULL,
  `completed_by` varchar(250) DEFAULT NULL,
  `completed_date` datetime DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nursing_assessments`
--

INSERT INTO `nursing_assessments` (`id`, `assessment_id`, `patient_height`, `patient_weight`, `blood_pressure`, `heart_rate`, `rhythm`, `respirations`, `lung_sounds`, `temperature`, `oxygen_saturation`, `completed_by`, `completed_date`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 1, '12', '12', '12', '12', '12', '12', '12', '12', '12', NULL, NULL, '2021-02-09 03:40:19', 1, NULL, NULL),
(2, 3, 'height', 'weight', 'blood pressure', 'hear rate', 'rhytm', 'respiration', 'Clear', 'temperature', 'oxygen', 'RENZO HIHI', '2021-02-03 12:19:00', '2021-02-18 09:43:45', 1, '2021-02-18 16:27:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pain_assessment`
--

CREATE TABLE `pain_assessment` (
  `id` int(11) NOT NULL,
  `nursing_assessment_id` int(11) DEFAULT NULL,
  `pain_complaints` tinyint(1) DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `intensity` int(11) DEFAULT NULL,
  `relieve_pain_method` varchar(250) DEFAULT NULL,
  `relieve_pain_notes` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pain_assessment`
--

INSERT INTO `pain_assessment` (`id`, `nursing_assessment_id`, `pain_complaints`, `location`, `intensity`, `relieve_pain_method`, `relieve_pain_notes`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 1, 1, 'yuta eh', 8, 'csaw3as', 'hahahaanu ni', '2021-02-09 03:40:19', 1, '2021-02-22 07:34:22', 1),
(2, 2, 1, 'Left', 1, 'what', 'notes1', '2021-02-18 09:43:45', 1, '2021-02-18 16:27:32', 1),
(3, 0, 0, '', 0, '', '', '2021-02-22 05:49:07', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `patient_no_id` varchar(250) DEFAULT NULL,
  `first_name` varchar(250) NOT NULL,
  `middle_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `name_ext` varchar(20) DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `unit_room` varchar(250) DEFAULT NULL,
  `building` varchar(250) DEFAULT NULL,
  `street` varchar(400) NOT NULL,
  `subdivision` varchar(250) DEFAULT NULL,
  `brgy` varchar(400) NOT NULL,
  `city` varchar(400) NOT NULL,
  `province` varchar(400) NOT NULL,
  `country` varchar(250) DEFAULT NULL,
  `zipcode` varchar(400) NOT NULL,
  `landline_no` varchar(250) DEFAULT NULL,
  `phone_no` varchar(400) NOT NULL,
  `sss` varchar(400) DEFAULT NULL,
  `sex` varchar(400) NOT NULL,
  `age` varchar(400) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `religion` varchar(250) DEFAULT NULL,
  `ss_number` varchar(200) DEFAULT NULL,
  `code_status` varchar(250) DEFAULT NULL,
  `allergies` varchar(400) DEFAULT NULL,
  `philhealth_pin_member` varchar(250) DEFAULT NULL,
  `is_philhealth` tinyint(1) DEFAULT 0,
  `is_private` tinyint(1) DEFAULT 0,
  `philhealth_pin_dependent` varchar(250) DEFAULT NULL,
  `insurance` varchar(400) DEFAULT NULL,
  `insurance_no` varchar(400) DEFAULT NULL,
  `coverage_exp` varchar(400) DEFAULT NULL,
  `secondary_coverage` varchar(400) DEFAULT NULL,
  `guarantor` varchar(400) DEFAULT NULL,
  `guarantor_phone_no` varchar(400) DEFAULT NULL,
  `emergency_contact_person` varchar(400) DEFAULT NULL,
  `emergency_contact_person_relationship` varchar(400) DEFAULT NULL,
  `emergency_contact_person_address` varchar(400) DEFAULT NULL,
  `emergency_contact_person_city` varchar(400) DEFAULT NULL,
  `emergency_contact_person_province` varchar(400) DEFAULT NULL,
  `emergency_contact_person_zipcode` varchar(400) DEFAULT NULL,
  `emergency_contact_person_phone_no` varchar(400) DEFAULT NULL,
  `nephrologist_doctor_id` int(11) DEFAULT NULL,
  `primary_physician_doctor_id` int(11) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `patient_no_id`, `first_name`, `middle_name`, `last_name`, `name_ext`, `image`, `unit_room`, `building`, `street`, `subdivision`, `brgy`, `city`, `province`, `country`, `zipcode`, `landline_no`, `phone_no`, `sss`, `sex`, `age`, `dob`, `email`, `religion`, `ss_number`, `code_status`, `allergies`, `philhealth_pin_member`, `is_philhealth`, `is_private`, `philhealth_pin_dependent`, `insurance`, `insurance_no`, `coverage_exp`, `secondary_coverage`, `guarantor`, `guarantor_phone_no`, `emergency_contact_person`, `emergency_contact_person_relationship`, `emergency_contact_person_address`, `emergency_contact_person_city`, `emergency_contact_person_province`, `emergency_contact_person_zipcode`, `emergency_contact_person_phone_no`, `nephrologist_doctor_id`, `primary_physician_doctor_id`, `date_created`, `created_by`, `last_updated`, `updated_by`, `is_active`) VALUES
(7, 'PAT100000', 'Keziar', 'Carnate', 'Basa', '', 'avatar.jpg', 'unit 4', 'ashan', 'baker', 'tabucan', 'bulivard', 'iloilo', 'iloilo', 'philippines', '5000', '33333', '0909090', NULL, 'Male', '11', '2021-01-07', 'basa@basa.com', 'Roman Catholic', '1122444', 'Single', 'None', '', 0, 0, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, 6, 7, '2021-01-28 01:30:14', 1, NULL, NULL, 1),
(28, 'PAT100001', 'Nayeon', 'Twice', 'Im', '', 'avatar.jpg', 'Room 1', 'JYP', 'Tabucan', 'Tabucan', 'Molo', 'Iloilo', 'Iloilo', 'Philippines', '5020', '333-444', '09123456789', NULL, 'Female', '25', '1995-03-31', 'nayeon@twice.com', 'Roman Catholic', '01234', 'Single', 'none', '1111', 0, 0, '11111', 'Insurance', '11111', '12/23', 'secondary', 'Guarantor', '09123', 'Park Jinyoung', 'Mentor', NULL, NULL, NULL, NULL, NULL, 6, 6, '2021-01-31 07:53:33', 1, NULL, NULL, 1),
(29, 'PAT100002', 'Jeongyeon', 'Twice', 'Yoo', '', 'avatar.jpg', 'Room 2', 'JYP', 'Tabucan', 'Tabucan', 'Molo', 'Iloilo', 'Iloilo', 'Philippines', '5020', '444345', '09123456789', NULL, 'Female', '23', '1997-02-28', 'jeongyeon@twice.com', 'Roman Catholic', '01234', 'Single', 'none', '22222', 0, 0, '22222', 'Insurance', '2222', '12/23', 'secondary', 'Guarantor', '09123', 'Park Jinyoung', 'Mentor', NULL, NULL, NULL, NULL, NULL, 7, 6, '2021-01-31 07:55:47', 1, NULL, NULL, 1),
(30, 'PAT-100003', 'Momo', 'Twice', 'Hirai', '', 'avatar.jpg', 'Room 1', 'JYP', 'Tabucan', 'Tabucan', 'Molo', 'Iloilo', 'Iloilo', 'Philippines', '5020', '333-444', '09123456789', NULL, 'Male', '25', '1995-03-31', 'nayeon@twice.com', 'Roman Catholic', '01234', 'Single', 'none', '1111', 0, 0, '11111', 'Insurance', '11111', '', 'secondary', 'Guarantor', '09123', '', '', NULL, NULL, NULL, NULL, NULL, 6, 7, '2021-03-01 10:47:09', 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_addons`
--

CREATE TABLE `patient_addons` (
  `id` int(11) NOT NULL,
  `assessment_id` int(11) DEFAULT NULL,
  `addons_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_addons`
--

INSERT INTO `patient_addons` (`id`, `assessment_id`, `addons_id`, `quantity`, `is_active`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 1, 1, 3, 1, '2021-02-26 03:26:35', 1, '2021-02-26 06:37:57', 1),
(2, 1, 2, 4, 0, '2021-02-26 03:34:39', 1, '2021-02-26 06:38:01', 1),
(3, 1, 3, 12, 1, '2021-02-26 05:19:02', 1, '2021-02-26 06:37:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient_files`
--

CREATE TABLE `patient_files` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `assessment_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `file` varchar(350) DEFAULT NULL,
  `type` varchar(250) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_files`
--

INSERT INTO `patient_files` (`id`, `patient_id`, `assessment_id`, `name`, `file`, `type`, `date_created`, `created_by`, `last_updated`, `updated_by`, `is_active`) VALUES
(1, 7, 1, 'patient_history', 'PeerAssessment-601cb192e565d5-601d007121d796.87302026.docx', 'patient_history', '2021-02-05 08:23:13', 1, NULL, NULL, 0),
(2, 7, 1, 'itzy', 'chart (17)-6035c8adb02ea8.25322962.sql', 'dietary_assessment', '2021-02-24 03:31:57', 1, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `patient_notes`
--

CREATE TABLE `patient_notes` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `assessment_id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `subjective` text DEFAULT NULL,
  `objective` text DEFAULT NULL,
  `assessment` text DEFAULT NULL,
  `plan` text DEFAULT NULL,
  `others` text DEFAULT NULL,
  `type` varchar(250) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient_notes`
--

INSERT INTO `patient_notes` (`id`, `patient_id`, `assessment_id`, `name`, `content`, `subjective`, `objective`, `assessment`, `plan`, `others`, `type`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 7, 1, 'Sample', 'haha', NULL, NULL, NULL, NULL, NULL, 'patient_history', '2021-02-08 06:38:10', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `physicians`
--

CREATE TABLE `physicians` (
  `id` int(11) NOT NULL,
  `physician_no_id` varchar(250) DEFAULT NULL,
  `first_name` varchar(250) DEFAULT NULL,
  `middle_name` varchar(250) DEFAULT NULL,
  `last_name` varchar(250) DEFAULT NULL,
  `sex` varchar(250) DEFAULT NULL,
  `specialization` varchar(250) DEFAULT NULL,
  `degree` varchar(250) DEFAULT NULL,
  `email` varchar(400) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `brgy` varchar(400) DEFAULT NULL,
  `city` varchar(400) DEFAULT NULL,
  `province` varchar(400) DEFAULT NULL,
  `zipcode` varchar(400) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `phone_no` varchar(400) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `physician_type` varchar(250) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `physicians`
--

INSERT INTO `physicians` (`id`, `physician_no_id`, `first_name`, `middle_name`, `last_name`, `sex`, `specialization`, `degree`, `email`, `address`, `brgy`, `city`, `province`, `zipcode`, `image`, `phone_no`, `join_date`, `physician_type`, `date_created`, `created_by`, `last_updated`, `updated_by`, `is_active`) VALUES
(6, 'PHY-100000', 'Cherish', NULL, 'Cuadras', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.jpg', NULL, NULL, 'In-house Physician', '2021-01-31 07:20:56', 1, NULL, NULL, 1),
(7, 'PHY-100001', 'Rannie', NULL, 'Segura', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.jpg', NULL, NULL, 'In-house Physician', '2021-01-31 07:20:56', 1, NULL, NULL, 1),
(8, 'PHY-100002', 'Alfonso', 'C', 'SAmple', 'Male', 'asdasd', 'degre', 'basa@basa.com', 'baker', NULL, 'iloilo', 'iloilo', '5000', 'avatar.jpg', '909090', '2021-03-31', 'In-house Physician', '2021-03-04 03:01:11', 1, NULL, NULL, 1),
(9, 'PHY-100003', 'HEHEHE', 'C.', 'HEHEHE', 'Female', 'asdasd', 'degre', 'basa@basa.com', 'baker', NULL, 'iloilo', 'iloilo', '5000', 'avatar.jpg', '909090', '2021-03-18', 'In-house Physician', '2021-03-04 03:04:35', 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `physician_orders`
--

CREATE TABLE `physician_orders` (
  `id` int(11) NOT NULL,
  `assessment_id` int(11) DEFAULT NULL,
  `custom_treatment_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `treatment_type` varchar(250) DEFAULT NULL,
  `md_signature` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `physician_orders`
--

INSERT INTO `physician_orders` (`id`, `assessment_id`, `custom_treatment_id`, `date`, `treatment_type`, `md_signature`, `notes`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(2, 3, 4, '2021-02-11 22:19:00', 'HD', NULL, NULL, '2021-02-10 14:19:04', 1, NULL, NULL),
(6, 1, 4, '2021-02-11 22:19:00', 'SUF', 'mdSignature-602f7c05ed5009.45735993.png', NULL, '2021-02-19 08:51:17', 1, NULL, NULL),
(7, 4, 1, '2021-02-17 17:00:00', 'HD', 'mdSignature-602f7e2d4754c0.95788260.png', NULL, '2021-02-19 09:00:29', 1, NULL, NULL),
(14, 5, 1, '2021-04-01 09:33:00', 'HD', 'mdSignature-6063d1793b7650.14450609.png', 'tete', '2021-03-31 01:33:45', 1, '2021-04-07 08:48:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post_treatment_data`
--

CREATE TABLE `post_treatment_data` (
  `id` int(11) NOT NULL,
  `assessment_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `rinse_volume` varchar(250) DEFAULT NULL,
  `blood_volume` varchar(250) DEFAULT NULL,
  `online_clearance` varchar(250) DEFAULT NULL,
  `dialyzer_appearance` varchar(250) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `fluid_removal` varchar(250) DEFAULT NULL,
  `platelets` varchar(250) DEFAULT NULL,
  `volume_heparin` varchar(250) DEFAULT NULL,
  `pnss_flushing` varchar(250) DEFAULT NULL,
  `hemodialysis_take` varchar(250) DEFAULT NULL,
  `duration_treatment` varchar(250) DEFAULT NULL,
  `hemodialysis_output` varchar(250) DEFAULT NULL,
  `patient_response` text DEFAULT NULL,
  `post_hemo_comment` text DEFAULT NULL,
  `post_weight` varchar(250) DEFAULT NULL,
  `weight_change` varchar(250) DEFAULT NULL,
  `fluid_loss` varchar(250) DEFAULT NULL,
  `reuse_dialyzer` tinyint(1) NOT NULL DEFAULT 0,
  `access_type` varchar(250) DEFAULT NULL,
  `internal_access_id` int(11) DEFAULT NULL,
  `central_venous_catheter_id` int(11) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post_treatment_data`
--

INSERT INTO `post_treatment_data` (`id`, `assessment_id`, `date`, `rinse_volume`, `blood_volume`, `online_clearance`, `dialyzer_appearance`, `comment`, `fluid_removal`, `platelets`, `volume_heparin`, `pnss_flushing`, `hemodialysis_take`, `duration_treatment`, `hemodialysis_output`, `patient_response`, `post_hemo_comment`, `post_weight`, `weight_change`, `fluid_loss`, `reuse_dialyzer`, `access_type`, `internal_access_id`, `central_venous_catheter_id`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 1, '2021-02-01 12:56:00', '1', '1', '1', 'Clear', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0, NULL, NULL, NULL, '2021-02-10 05:22:52', 1, NULL, NULL),
(2, 2, '2021-03-05 10:26:00', 'post', 'post', 'post', 'Clear', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 0, 'Both', NULL, NULL, '2021-03-04 01:27:57', 1, '2021-03-04 02:55:55', 1),
(3, 2, '2021-03-05 10:26:00', 'post', 'post', 'post', 'Clear', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 0, 'Internal Access', NULL, NULL, '2021-03-04 01:36:02', 1, NULL, NULL),
(4, 2, '2021-03-05 10:26:00', 'post', 'post', 'post', 'Clear', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 0, 'Internal Access', NULL, NULL, '2021-03-04 01:39:21', 1, NULL, NULL),
(5, 2, '2021-03-05 10:26:00', 'post', 'post', 'post', 'Clear', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 0, 'Internal Access', NULL, NULL, '2021-03-04 01:39:48', 1, NULL, NULL),
(6, 2, '2021-03-05 10:26:00', 'post', 'post', 'post', 'Clear', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 'post', 0, 'Internal Access', NULL, NULL, '2021-03-04 01:42:07', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `respiratory`
--

CREATE TABLE `respiratory` (
  `id` int(11) NOT NULL,
  `nursing_assessment_id` int(11) DEFAULT NULL,
  `lung_sounds` varchar(250) DEFAULT NULL,
  `location` varchar(250) DEFAULT NULL,
  `position` varchar(250) DEFAULT NULL,
  `respiratory_effects` varchar(250) DEFAULT NULL,
  `o2_administration` varchar(250) DEFAULT NULL,
  `o2_flow_rate` varchar(250) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `respiratory`
--

INSERT INTO `respiratory` (`id`, `nursing_assessment_id`, `lung_sounds`, `location`, `position`, `respiratory_effects`, `o2_administration`, `o2_flow_rate`, `notes`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 1, 'Crackles', 'Left', 'Bases', 'Normal', 'Face Mask', 'sad', 'samplee', '2021-02-09 03:40:19', 1, '2021-02-22 07:34:22', 1),
(2, 2, 'Clear', 'Left', 'Bases', 'Normal', 'Nasal Cannula', 'o2 flow', 'notes2', '2021-02-18 09:43:45', 1, '2021-02-18 16:27:33', 1),
(3, 0, '', '', '', '', '', '', '', '2021-02-22 05:49:07', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_type_users`
--

CREATE TABLE `role_type_users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `physician_id` int(11) DEFAULT NULL,
  `nurse_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_type_users`
--

INSERT INTO `role_type_users` (`id`, `user_id`, `user_type_id`, `user_role_id`, `physician_id`, `nurse_id`, `staff_id`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 1, 1, 7, NULL, NULL, NULL, '2021-01-20 08:39:17', 1, NULL, NULL),
(7, 10, 3, 1, NULL, 3, NULL, '2021-01-31 06:47:33', 1, NULL, NULL),
(8, 11, 3, 1, NULL, 4, NULL, '2021-01-31 06:47:33', 1, NULL, NULL),
(9, 12, 3, 1, NULL, 5, NULL, '2021-01-31 06:47:33', 1, NULL, NULL),
(10, 13, 3, 1, NULL, 6, NULL, '2021-01-31 06:47:33', 1, NULL, NULL),
(11, 14, 3, 1, NULL, 7, NULL, '2021-01-31 06:47:33', 1, NULL, NULL),
(12, 15, 3, 1, NULL, 8, NULL, '2021-01-31 06:47:33', 1, NULL, NULL),
(13, 16, 2, 1, NULL, 9, NULL, '2021-01-31 06:47:33', 1, NULL, NULL),
(14, 17, 2, 1, NULL, 10, NULL, '2021-01-31 06:47:33', 1, NULL, NULL),
(15, 18, 3, 2, NULL, NULL, 2, '2021-01-31 07:13:54', 1, NULL, NULL),
(16, 19, 3, 2, NULL, NULL, 3, '2021-01-31 07:13:54', 1, NULL, NULL),
(17, 20, 3, 3, NULL, NULL, 4, '2021-01-31 07:13:54', 1, NULL, NULL),
(18, 21, 3, 4, NULL, NULL, 5, '2021-01-31 07:13:54', 1, NULL, NULL),
(19, 22, 2, 5, NULL, NULL, 6, '2021-01-31 07:13:54', 1, NULL, NULL),
(20, 23, 3, 12, NULL, NULL, 7, '2021-01-31 07:13:54', 1, NULL, NULL),
(21, 24, 3, 9, 6, NULL, NULL, '2021-01-31 07:25:49', 1, NULL, NULL),
(22, 25, 3, 9, 7, NULL, NULL, '2021-01-31 07:25:49', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_assessment`
--

CREATE TABLE `site_assessment` (
  `id` int(11) NOT NULL,
  `clean_dry_intact` tinyint(1) NOT NULL DEFAULT 0,
  `dry` tinyint(1) NOT NULL DEFAULT 0,
  `edematous` tinyint(1) NOT NULL DEFAULT 0,
  `extravasated` tinyint(1) NOT NULL DEFAULT 0,
  `tender` tinyint(1) NOT NULL DEFAULT 0,
  `phlebitis` tinyint(1) NOT NULL DEFAULT 0,
  `clean` tinyint(1) NOT NULL DEFAULT 0,
  `intact` tinyint(1) NOT NULL DEFAULT 0,
  `swelling` tinyint(1) NOT NULL DEFAULT 0,
  `leaking` tinyint(1) NOT NULL DEFAULT 0,
  `infiltrated` tinyint(1) NOT NULL DEFAULT 0,
  `warm_touch` tinyint(1) NOT NULL DEFAULT 0,
  `bleeding` tinyint(1) NOT NULL DEFAULT 0,
  `bloody` tinyint(1) NOT NULL DEFAULT 0,
  `pink` tinyint(1) NOT NULL DEFAULT 0,
  `painful` tinyint(1) NOT NULL DEFAULT 0,
  `moist` tinyint(1) NOT NULL DEFAULT 0,
  `serous_drainage` tinyint(1) NOT NULL DEFAULT 0,
  `other` tinyint(1) NOT NULL DEFAULT 0,
  `other_comment` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `site_assessment`
--

INSERT INTO `site_assessment` (`id`, `clean_dry_intact`, `dry`, `edematous`, `extravasated`, `tender`, `phlebitis`, `clean`, `intact`, `swelling`, `leaking`, `infiltrated`, `warm_touch`, `bleeding`, `bloody`, `pink`, `painful`, `moist`, `serous_drainage`, `other`, `other_comment`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '2021-02-09 09:55:19', 1, '2021-02-22 04:14:12', 1),
(27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '2021-02-09 10:08:16', 1, NULL, NULL),
(31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'abcdefg', '2021-02-09 13:51:06', 1, '2021-02-09 13:51:41', 1),
(32, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2', '2021-02-10 06:19:58', 1, NULL, NULL),
(33, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2', '2021-02-10 06:24:08', 1, NULL, NULL),
(34, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2', '2021-02-10 06:24:53', 1, NULL, NULL),
(35, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2', '2021-02-10 06:25:13', 1, NULL, NULL),
(36, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '2021-02-10 06:37:05', 1, '2021-02-10 06:44:59', 1),
(37, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'asd', '2021-02-10 06:43:52', 1, '2021-02-10 06:44:59', 1),
(38, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'asd', '2021-03-03 08:28:58', 1, '2021-03-03 08:36:15', 1),
(39, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'asd', '2021-03-03 08:28:58', 1, '2021-03-03 08:36:15', 1),
(40, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, '', '2021-03-04 01:27:57', 1, '2021-03-04 02:55:55', 1),
(41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '2021-03-04 01:36:02', 1, NULL, NULL),
(42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '2021-03-04 01:39:48', 1, NULL, NULL),
(43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '2021-03-04 01:42:07', 1, NULL, NULL),
(44, 0, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, '', '2021-03-04 02:26:05', 1, '2021-03-04 02:55:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `skin`
--

CREATE TABLE `skin` (
  `id` int(11) NOT NULL,
  `nursing_assessment_id` int(11) DEFAULT NULL,
  `assessment` varchar(250) DEFAULT NULL,
  `assess_note` text DEFAULT NULL,
  `loc` varchar(250) DEFAULT NULL,
  `loc_notes` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skin`
--

INSERT INTO `skin` (`id`, `nursing_assessment_id`, `assessment`, `assess_note`, `loc`, `loc_notes`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 1, 'Cyanotic', 'asdw', 'Confused', 'anu ni sya', '2021-02-09 03:40:20', 1, '2021-02-22 07:34:22', 1),
(2, 2, 'Warm', 'notes4', 'Alert and Orient', 'notes5', '2021-02-18 09:43:45', 1, '2021-02-18 16:27:33', 1),
(3, 0, '', '', '', '', '2021-02-22 05:49:07', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `special_orders`
--

CREATE TABLE `special_orders` (
  `id` int(11) NOT NULL,
  `assessment_id` int(11) NOT NULL,
  `content` text DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `special_orders`
--

INSERT INTO `special_orders` (`id`, `assessment_id`, `content`, `notes`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(3, 1, 'sasd', NULL, '2021-02-07 07:05:50', 1, NULL, NULL),
(6, 5, 'sample special orders', 'wet wew', '2021-03-31 01:33:45', 1, '2021-04-07 08:48:23', 1),
(11, 5, 'we can d othis all night', NULL, '2021-03-31 08:45:32', 1, NULL, NULL),
(12, 5, 'hahaha', NULL, '2021-04-07 07:53:58', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `id` int(11) NOT NULL,
  `staff_no_id` varchar(250) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `first_name` varchar(250) DEFAULT NULL,
  `middle_name` varchar(250) DEFAULT NULL,
  `last_name` varchar(250) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `phone_no` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `province` varchar(250) DEFAULT NULL,
  `zipcode` varchar(250) DEFAULT NULL,
  `staff_type` varchar(250) DEFAULT NULL,
  `join_date` date DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `last_updated` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `staff_no_id`, `image`, `first_name`, `middle_name`, `last_name`, `sex`, `phone_no`, `email`, `address`, `city`, `province`, `zipcode`, `staff_type`, `join_date`, `date_created`, `created_by`, `last_updated`, `updated_by`, `is_active`) VALUES
(2, 'STF-100000', 'avatar.jpg', 'Joel', NULL, 'Nava Jr.', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, 'HD Technician', NULL, '2021-01-31 07:06:10', 1, NULL, NULL, 1),
(3, 'STF-100001', 'avatar.jpg', 'Pedro', NULL, 'Tamunan Jr.', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, 'HD Technician', NULL, '2021-01-31 07:06:10', 1, NULL, NULL, 1),
(4, 'STF-100002', 'avatar.jpg', 'Argyn', NULL, 'Porquez', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, 'Receptionist', NULL, '2021-01-31 07:06:10', 1, NULL, NULL, 1),
(5, 'STF-100003', 'avatar.jpg', 'Justine Marie', NULL, 'Indicar', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, 'Social Worker', NULL, '2021-01-31 07:06:10', 1, NULL, NULL, 1),
(6, 'STF-100004', 'avatar.jpg', 'Richard', NULL, 'Dahildahil', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, 'Clinical Manager', NULL, '2021-01-31 07:06:10', 1, NULL, NULL, 1),
(7, 'STF-100005', 'avatar.jpg', 'Ma. Primarosa', NULL, 'Sorrilla', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, 'Dietitian', NULL, '2021-01-31 07:06:10', 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `treatment_data`
--

CREATE TABLE `treatment_data` (
  `id` int(11) NOT NULL,
  `assessment_id` int(11) NOT NULL,
  `type` varchar(250) DEFAULT NULL,
  `name` varchar(300) NOT NULL,
  `date` datetime DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treatment_data`
--

INSERT INTO `treatment_data` (`id`, `assessment_id`, `type`, `name`, `date`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(5, 1, 'treatment', 'sample', '2021-02-08 13:24:00', '2021-02-08 03:24:09', 1, NULL, NULL),
(6, 1, 'treatment', 'Sample 2', '2021-02-08 15:29:00', '2021-02-08 03:25:52', 1, NULL, NULL),
(15, 1, 'pre_treatment', 'Pre-Treatment Data', '2021-02-08 16:55:52', '2021-02-08 08:55:52', 1, NULL, NULL),
(16, 0, 'pre_treatment', 'Pre-Treatment Data', '2021-02-22 14:27:47', '2021-02-22 06:27:47', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `is_physician` tinyint(1) NOT NULL DEFAULT 0,
  `is_nurse` tinyint(1) NOT NULL DEFAULT 0,
  `is_staff` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) DEFAULT NULL,
  `last_updated` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `username`, `password`, `is_physician`, `is_nurse`, `is_staff`, `date_created`, `created_by`, `last_updated`, `updated_by`, `is_active`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 0, 0, 0, '0000-00-00 00:00:00', 1, NULL, NULL, 1),
(10, 'Amira', 'Lavado', NULL, 'lavado.a', 'b50951613bcd649dc2f9fe580866fe38', 0, 1, 0, '2021-01-31 06:42:17', 1, NULL, NULL, 1),
(11, 'Dindo', 'Catolico', NULL, 'catolico.d', 'b50951613bcd649dc2f9fe580866fe38', 0, 1, 0, '2021-01-31 06:42:17', 1, NULL, NULL, 1),
(12, 'Joseph', 'Tayco Jr.', NULL, 'tayco.j', 'b50951613bcd649dc2f9fe580866fe38', 0, 1, 0, '2021-01-31 06:42:17', 1, NULL, NULL, 1),
(13, 'Michael James', 'Araneta', NULL, 'araneta.mj', 'b50951613bcd649dc2f9fe580866fe38', 0, 1, 0, '2021-01-31 06:42:17', 1, NULL, NULL, 1),
(14, 'Karl', 'Segovia', NULL, 'segovia.k', 'b50951613bcd649dc2f9fe580866fe38', 0, 1, 0, '2021-01-31 06:42:17', 1, NULL, NULL, 1),
(15, 'Jither Jade', 'Magbanua', NULL, 'magbanua.jj', 'b50951613bcd649dc2f9fe580866fe38', 0, 1, 0, '2021-01-31 06:42:17', 1, NULL, NULL, 1),
(16, 'Peter Joseph', 'Patricio', NULL, 'patricio.pj', 'b50951613bcd649dc2f9fe580866fe38', 0, 1, 0, '2021-01-31 06:42:17', 1, NULL, NULL, 1),
(17, 'Mara Rica', 'Tasin', NULL, 'tasin.mr', 'b50951613bcd649dc2f9fe580866fe38', 0, 1, 0, '2021-01-31 06:42:17', 1, NULL, NULL, 1),
(18, 'Joel', 'Nava Jr.', NULL, 'nava.j', 'b50951613bcd649dc2f9fe580866fe38', 0, 0, 1, '2021-01-31 07:09:31', 1, NULL, NULL, 1),
(19, 'Pedro', 'Tamunan Jr.', NULL, 'tamunan.p', 'b50951613bcd649dc2f9fe580866fe38', 0, 0, 1, '2021-01-31 07:09:31', 1, NULL, NULL, 1),
(20, 'Argyn', 'Porquez', NULL, 'porquez.a', 'b50951613bcd649dc2f9fe580866fe38', 0, 0, 1, '2021-01-31 07:09:31', 1, NULL, NULL, 1),
(21, 'Justine Marie', 'Indicar', NULL, 'indicar.jm', 'b50951613bcd649dc2f9fe580866fe38', 0, 0, 1, '2021-01-31 07:09:31', 1, NULL, NULL, 1),
(22, 'Richard', 'Dahildahil', NULL, 'dahildahil.r', 'b50951613bcd649dc2f9fe580866fe38', 0, 0, 1, '2021-01-31 07:09:31', 1, NULL, NULL, 1),
(23, 'Ma. Primarosa', 'Sorrilla', NULL, 'sorrilla.mp', 'b50951613bcd649dc2f9fe580866fe38', 0, 0, 1, '2021-01-31 07:09:31', 1, NULL, NULL, 1),
(24, 'Cherish', 'Cuadras', NULL, 'cuadras.c', 'b50951613bcd649dc2f9fe580866fe38', 1, 0, 1, '2021-01-31 07:24:14', 1, NULL, NULL, 1),
(25, 'Rannie', 'Segura', NULL, 'segura.r', 'b50951613bcd649dc2f9fe580866fe38', 1, 0, 1, '2021-01-31 07:24:14', 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(250) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `name`, `code`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 'Nurse', 'nurse', '2021-01-20 09:00:17', 1, NULL, NULL),
(2, 'Hemodialysis Technician', 'hemotech', '2021-01-20 09:00:17', 1, NULL, NULL),
(3, 'Receptionist', 'recep', '2021-01-20 09:00:17', 1, NULL, NULL),
(4, 'Social Worker', 'socwork', '2021-01-20 09:00:17', 1, NULL, NULL),
(5, 'Clinical Manager', 'climan', '2021-01-20 09:00:17', 1, NULL, NULL),
(6, 'Physician on Duty', 'physduty', '2021-01-20 09:00:17', 1, NULL, NULL),
(7, 'Super Admin', 'admin', '2021-01-20 09:00:48', 1, NULL, NULL),
(9, 'In-house Physician', 'inphys', '2021-01-27 09:05:55', 1, NULL, NULL),
(10, 'Affiliated Nephrologist', 'afilneph', '2021-01-27 09:05:55', 1, NULL, NULL),
(11, 'Affiliated Physician', 'afilphys', '2021-01-27 09:05:55', 1, NULL, NULL),
(12, 'Dietitian', 'diet', '2021-01-31 05:19:24', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `code` varchar(250) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `name`, `code`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 'Super Admin', 'sadmin', '2021-01-20 08:37:17', 1, NULL, NULL),
(2, 'Admin', 'admin', '2021-01-20 08:38:26', 1, NULL, NULL),
(3, 'User', 'user', '2021-01-20 08:38:26', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vital_signs`
--

CREATE TABLE `vital_signs` (
  `id` int(11) NOT NULL,
  `treatment_data_id` int(11) NOT NULL,
  `bp` varchar(250) DEFAULT NULL,
  `bp_location` varchar(250) DEFAULT NULL,
  `bp_location_comment` text DEFAULT NULL,
  `bp_method` varchar(250) DEFAULT NULL,
  `bp_method_comment` text DEFAULT NULL,
  `bp_standing` varchar(250) DEFAULT NULL,
  `bp_location_standing` varchar(250) DEFAULT NULL,
  `bp_method_standing` varchar(250) DEFAULT NULL,
  `heart_rate_standing` varchar(250) DEFAULT NULL,
  `heart_rate_source_standing` varchar(250) DEFAULT NULL,
  `heart_rate` varchar(250) DEFAULT NULL,
  `heart_rate_source` varchar(250) DEFAULT NULL,
  `heart_rate_comment` text DEFAULT NULL,
  `respiratory` varchar(250) DEFAULT NULL,
  `temperature` varchar(250) DEFAULT NULL,
  `temperature_source` varchar(250) DEFAULT NULL,
  `temperature_source_comment` text DEFAULT NULL,
  `spo2` varchar(250) DEFAULT NULL,
  `spo2_pulse` varchar(250) DEFAULT NULL,
  `oxygen_delivery` varchar(250) DEFAULT NULL,
  `oxygen_delivery_comment` varchar(250) DEFAULT NULL,
  `flow_rate` varchar(250) DEFAULT NULL,
  `oximetry_probe` varchar(250) DEFAULT NULL,
  `pulse_type` varchar(250) DEFAULT NULL,
  `accessed` tinyint(1) NOT NULL DEFAULT 0,
  `capped` tinyint(1) NOT NULL DEFAULT 0,
  `clamped` tinyint(1) NOT NULL DEFAULT 0,
  `deceased` tinyint(1) NOT NULL DEFAULT 0,
  `flushed` tinyint(1) NOT NULL DEFAULT 0,
  `patent` tinyint(1) NOT NULL DEFAULT 0,
  `other` tinyint(1) NOT NULL DEFAULT 0,
  `other_comment` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vital_signs`
--

INSERT INTO `vital_signs` (`id`, `treatment_data_id`, `bp`, `bp_location`, `bp_location_comment`, `bp_method`, `bp_method_comment`, `bp_standing`, `bp_location_standing`, `bp_method_standing`, `heart_rate_standing`, `heart_rate_source_standing`, `heart_rate`, `heart_rate_source`, `heart_rate_comment`, `respiratory`, `temperature`, `temperature_source`, `temperature_source_comment`, `spo2`, `spo2_pulse`, `oxygen_delivery`, `oxygen_delivery_comment`, `flow_rate`, `oximetry_probe`, `pulse_type`, `accessed`, `capped`, `clamped`, `deceased`, `flushed`, `patent`, `other`, `other_comment`, `date_created`, `created_by`, `last_updated`, `updated_by`) VALUES
(1, 5, 'bp', 'Right Arm', 'comm', 'Manual', 'com', NULL, NULL, NULL, NULL, NULL, '55', 'Apical', '', 'resp', 'temp', 'Tympanic', 'com', 'sp', 'pul', 'Room Air', 'com', 'flow', NULL, 'Continous', 1, 1, 1, 1, 1, 1, 1, 'comm', '0000-00-00 00:00:00', 1, NULL, NULL),
(2, 6, '12', 'Left Arm', '', 'Other', 'others', NULL, NULL, NULL, NULL, NULL, '55', 'Monitor', '', '12', '43', 'Tympanic', '', '21', '60', 'Room Air', '', '45', NULL, 'Continous', 1, 0, 0, 0, 0, 0, 0, '', '0000-00-00 00:00:00', 1, NULL, NULL),
(3, 15, 'bp sitting', 'bp location', NULL, 'bp methos', NULL, 'staninf', 'loc standi', 'meth stand', 'hear stan', 'source stan', 'hear rate', 'source', NULL, 'respi', 'temp', 'temp sour', NULL, 'spo2', NULL, 'o2 deli', NULL, 'flow rat', 'hala ka gd', 'oxime', 0, 0, 0, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', 1, '2021-02-22 07:03:38', 1),
(4, 21, 'bp sitting', 'bp xxxx', NULL, 'bp methos', NULL, 'staninf', 'loc standi', 'meth stand', 'hear stan', 'source stan', 'hear rate', 'source', NULL, 'respi', 'temp', 'temp sour', NULL, 'spo2', NULL, 'o2 deli', NULL, 'flow rat', 'oxi2', '23', 0, 0, 0, 0, 0, 0, 0, NULL, '0000-00-00 00:00:00', 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_assessment`
--
ALTER TABLE `access_assessment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assessments`
--
ALTER TABLE `assessments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billings`
--
ALTER TABLE `billings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing_items`
--
ALTER TABLE `billing_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cardiac`
--
ALTER TABLE `cardiac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `central_venous_catheter`
--
ALTER TABLE `central_venous_catheter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_treatments`
--
ALTER TABLE `custom_treatments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dialysis_machine_setup`
--
ALTER TABLE `dialysis_machine_setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gastrointestinal`
--
ALTER TABLE `gastrointestinal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genitourinary`
--
ALTER TABLE `genitourinary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hd_line_status`
--
ALTER TABLE `hd_line_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hemodialysis`
--
ALTER TABLE `hemodialysis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internal_access`
--
ALTER TABLE `internal_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machine_reprocessing_data`
--
ALTER TABLE `machine_reprocessing_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medication_orders`
--
ALTER TABLE `medication_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurses`
--
ALTER TABLE `nurses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nursing_assessments`
--
ALTER TABLE `nursing_assessments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pain_assessment`
--
ALTER TABLE `pain_assessment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_addons`
--
ALTER TABLE `patient_addons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_files`
--
ALTER TABLE `patient_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_notes`
--
ALTER TABLE `patient_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `physicians`
--
ALTER TABLE `physicians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `physician_orders`
--
ALTER TABLE `physician_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_treatment_data`
--
ALTER TABLE `post_treatment_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `respiratory`
--
ALTER TABLE `respiratory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_type_users`
--
ALTER TABLE `role_type_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_assessment`
--
ALTER TABLE `site_assessment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skin`
--
ALTER TABLE `skin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_orders`
--
ALTER TABLE `special_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treatment_data`
--
ALTER TABLE `treatment_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vital_signs`
--
ALTER TABLE `vital_signs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_assessment`
--
ALTER TABLE `access_assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `addons`
--
ALTER TABLE `addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `assessments`
--
ALTER TABLE `assessments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `billings`
--
ALTER TABLE `billings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `billing_items`
--
ALTER TABLE `billing_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cardiac`
--
ALTER TABLE `cardiac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `central_venous_catheter`
--
ALTER TABLE `central_venous_catheter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `custom_treatments`
--
ALTER TABLE `custom_treatments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dialysis_machine_setup`
--
ALTER TABLE `dialysis_machine_setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gastrointestinal`
--
ALTER TABLE `gastrointestinal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `genitourinary`
--
ALTER TABLE `genitourinary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hd_line_status`
--
ALTER TABLE `hd_line_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hemodialysis`
--
ALTER TABLE `hemodialysis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `internal_access`
--
ALTER TABLE `internal_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `machine_reprocessing_data`
--
ALTER TABLE `machine_reprocessing_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `medication_orders`
--
ALTER TABLE `medication_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nurses`
--
ALTER TABLE `nurses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nursing_assessments`
--
ALTER TABLE `nursing_assessments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pain_assessment`
--
ALTER TABLE `pain_assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `patient_addons`
--
ALTER TABLE `patient_addons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient_files`
--
ALTER TABLE `patient_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patient_notes`
--
ALTER TABLE `patient_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `physicians`
--
ALTER TABLE `physicians`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `physician_orders`
--
ALTER TABLE `physician_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `post_treatment_data`
--
ALTER TABLE `post_treatment_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `respiratory`
--
ALTER TABLE `respiratory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_type_users`
--
ALTER TABLE `role_type_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `site_assessment`
--
ALTER TABLE `site_assessment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `skin`
--
ALTER TABLE `skin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `special_orders`
--
ALTER TABLE `special_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `treatment_data`
--
ALTER TABLE `treatment_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vital_signs`
--
ALTER TABLE `vital_signs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
