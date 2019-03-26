-- MySQL dump 10.13  Distrib 5.7.14, for Win64 (x86_64)
--
-- Host: localhost    Database: ceppp
-- ------------------------------------------------------
-- Server version	5.7.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_accnt_id_del` (`id`,`deleted`),
  KEY `idx_accnt_name_del` (`name`,`deleted`),
  KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  KEY `idx_accnt_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('e9ee4d41-7a49-544c-c2c7-5ba56a95b3fb','Compte de recrutement [P0082]','2018-09-21 22:04:27','2018-10-12 21:40:18','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4',NULL,0,'66440dcf-8fc6-1c13-c7af-5ba56af6c0b4',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'http://',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,''),('44e90b16-1216-86eb-6d32-5bedd720e0a9','Compte de recrutement [P0085]','2018-11-15 20:29:21','2018-11-15 21:12:04','928c090d-96a8-79b3-0df4-5bedd5fd29d9','928c090d-96a8-79b3-0df4-5bedd5fd29d9',NULL,0,'928c090d-96a8-79b3-0df4-5bedd5fd29d9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,'');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_am_projecttemplates_1_c`
--

DROP TABLE IF EXISTS `accounts_am_projecttemplates_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_am_projecttemplates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_am_projecttemplates_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_am_projecttemplates_1am_projecttemplates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_am_projecttemplates_1_ida1` (`accounts_am_projecttemplates_1accounts_ida`),
  KEY `accounts_am_projecttemplates_1_idb2` (`accounts_am_projecttemplates_1am_projecttemplates_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_am_projecttemplates_1_c`
--

LOCK TABLES `accounts_am_projecttemplates_1_c` WRITE;
/*!40000 ALTER TABLE `accounts_am_projecttemplates_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_am_projecttemplates_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_audit`
--

DROP TABLE IF EXISTS `accounts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_accounts_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_audit`
--

LOCK TABLES `accounts_audit` WRITE;
/*!40000 ALTER TABLE `accounts_audit` DISABLE KEYS */;
INSERT INTO `accounts_audit` VALUES ('e0d39971-1198-b9f4-74c2-5ba574b0ea88','e9ee4d41-7a49-544c-c2c7-5ba56a95b3fb','2018-09-21 22:43:37','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','name','name','Patient P0082','Compte de recrutement [P0082]',NULL,NULL),('45c281c0-9be9-7df6-e52e-5beddfae17b4','44e90b16-1216-86eb-6d32-5bedd720e0a9','2018-11-15 21:04:53','928c090d-96a8-79b3-0df4-5bedd5fd29d9','assigned_user_id','relate','928c090d-96a8-79b3-0df4-5bedd5fd29d9','79537bf1-951c-9483-13e1-5ba567c42893',NULL,NULL),('7c150b60-c2aa-c036-8d44-5bede18983e9','44e90b16-1216-86eb-6d32-5bedd720e0a9','2018-11-15 21:12:04','928c090d-96a8-79b3-0df4-5bedd5fd29d9','assigned_user_id','relate','79537bf1-951c-9483-13e1-5ba567c42893','928c090d-96a8-79b3-0df4-5bedd5fd29d9',NULL,NULL);
/*!40000 ALTER TABLE `accounts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_bugs`
--

DROP TABLE IF EXISTS `accounts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_bug_acc` (`account_id`),
  KEY `idx_acc_bug_bug` (`bug_id`),
  KEY `idx_account_bug` (`account_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_bugs`
--

LOCK TABLES `accounts_bugs` WRITE;
/*!40000 ALTER TABLE `accounts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cases`
--

DROP TABLE IF EXISTS `accounts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acc_case_acc` (`account_id`),
  KEY `idx_acc_acc_case` (`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cases`
--

LOCK TABLES `accounts_cases` WRITE;
/*!40000 ALTER TABLE `accounts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_contacts`
--

DROP TABLE IF EXISTS `accounts_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_contact` (`account_id`,`contact_id`),
  KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_contacts`
--

LOCK TABLES `accounts_contacts` WRITE;
/*!40000 ALTER TABLE `accounts_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_cstm`
--

DROP TABLE IF EXISTS `accounts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  `experience_maladie_c` text,
  `domaine_soin_c` varchar(255) DEFAULT NULL,
  `domaine_soin_2_c` varchar(255) DEFAULT NULL,
  `domaine_soin_3_c` varchar(255) DEFAULT NULL,
  `med_1_c` varchar(100) DEFAULT NULL,
  `med_2_c` varchar(100) DEFAULT NULL,
  `med_3_c` varchar(100) DEFAULT NULL,
  `doul_chron_c` varchar(100) DEFAULT NULL,
  `prob_somm_c` varchar(100) DEFAULT NULL,
  `prob_resp_c` varchar(100) DEFAULT NULL,
  `etabl_sante_c` varchar(100) DEFAULT NULL,
  `etabl_prem_ligne_c` varchar(100) DEFAULT NULL,
  `exp_decision_c` varchar(100) DEFAULT NULL,
  `exprience_maladie_proche_c` text,
  `rel_patient_c` varchar(100) DEFAULT NULL,
  `rel_patient_autre__precision_c` varchar(255) DEFAULT NULL,
  `domaine_soin_pa_c` varchar(100) DEFAULT NULL,
  `domaine_soin_pa_2_c` varchar(100) DEFAULT NULL,
  `domaine_soin_pa_3_c` varchar(100) DEFAULT NULL,
  `prob_sant_pa_c` varchar(100) DEFAULT NULL,
  `prob_sant_pa_2_c` varchar(100) DEFAULT NULL,
  `prob_sant_pa_3_c` varchar(100) DEFAULT NULL,
  `etabl_sante_pa_c` varchar(100) DEFAULT NULL,
  `etabl_prem_ligne_pa_c` varchar(100) DEFAULT NULL,
  `etabl_sante_pa_autre__prec_c` varchar(255) DEFAULT NULL,
  `etabl_prem_ligne_pa_autre__p_c` varchar(255) DEFAULT NULL,
  `consentement_dcpp_recrut_c` varchar(100) DEFAULT NULL,
  `consentement_recherche_c` varchar(100) DEFAULT NULL,
  `consentement_usage_donnees_c` varchar(100) DEFAULT NULL,
  `consentement_miseajour_c` varchar(100) DEFAULT NULL,
  `etabl_sante_pp_c` varchar(255) DEFAULT NULL,
  `etabl_prem_ligne_pp_c` varchar(255) DEFAULT NULL,
  `etabl_sante_pa__c` varchar(255) DEFAULT NULL,
  `etabl_prem_ligne_pa__c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_cstm`
--

LOCK TABLES `accounts_cstm` WRITE;
/*!40000 ALTER TABLE `accounts_cstm` DISABLE KEYS */;
INSERT INTO `accounts_cstm` VALUES ('e9ee4d41-7a49-544c-c2c7-5ba56a95b3fb',0.00000000,0.00000000,'','','','Zebra','Whisky','Tango','566','2530','3520','oui','non','oui','Aucun','CLSC_Faubourgs','non','','parent','','aucune','aucune','aucune','-','-','-','Aucun','Aucun','','','non','oui','oui','non',NULL,NULL,NULL,NULL),('44e90b16-1216-86eb-6d32-5bedd720e0a9',0.00000000,0.00000000,'','','','','','','-','-','-','','','','','','','','parent','','aucune','aucune','aucune','-','-','-','','','','','','','','','','','','');
/*!40000 ALTER TABLE `accounts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_ent_entrevues_1_c`
--

DROP TABLE IF EXISTS `accounts_ent_entrevues_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_ent_entrevues_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_ent_entrevues_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_ent_entrevues_1ent_entrevues_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_ent_entrevues_1_ida1` (`accounts_ent_entrevues_1accounts_ida`),
  KEY `accounts_ent_entrevues_1_alt` (`accounts_ent_entrevues_1ent_entrevues_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_ent_entrevues_1_c`
--

LOCK TABLES `accounts_ent_entrevues_1_c` WRITE;
/*!40000 ALTER TABLE `accounts_ent_entrevues_1_c` DISABLE KEYS */;
INSERT INTO `accounts_ent_entrevues_1_c` VALUES ('80f49e96-b3ca-9598-2576-5bc0f70418d6','2018-10-12 19:36:07',0,'e9ee4d41-7a49-544c-c2c7-5ba56a95b3fb','436d0e53-60b5-4fac-2d1f-5bc0f78a6e1d');
/*!40000 ALTER TABLE `accounts_ent_entrevues_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_opportunities`
--

DROP TABLE IF EXISTS `accounts_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_opportunities`
--

LOCK TABLES `accounts_opportunities` WRITE;
/*!40000 ALTER TABLE `accounts_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_pat_patients_1_c`
--

DROP TABLE IF EXISTS `accounts_pat_patients_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_pat_patients_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `accounts_pat_patients_1accounts_ida` varchar(36) DEFAULT NULL,
  `accounts_pat_patients_1pat_patients_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_pat_patients_1_ida1` (`accounts_pat_patients_1accounts_ida`),
  KEY `accounts_pat_patients_1_idb2` (`accounts_pat_patients_1pat_patients_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_pat_patients_1_c`
--

LOCK TABLES `accounts_pat_patients_1_c` WRITE;
/*!40000 ALTER TABLE `accounts_pat_patients_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_pat_patients_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_actions`
--

DROP TABLE IF EXISTS `acl_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclaction_id_del` (`id`,`deleted`),
  KEY `idx_category_name` (`category`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_actions`
--

LOCK TABLES `acl_actions` WRITE;
/*!40000 ALTER TABLE `acl_actions` DISABLE KEYS */;
INSERT INTO `acl_actions` VALUES ('9381d6cd-6635-68a6-6540-5ba5608314b4','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Leads','module',89,0),('b4b5d127-08f3-6e65-8cf0-5ba560c253e2','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Leads','module',90,0),('b9d65a34-c04d-c7b7-33a2-5ba560f26a8a','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Leads','module',90,0),('bef6dcac-0d18-9309-ccd1-5ba56066f4dd','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Leads','module',90,0),('c3d8d5fe-8f18-0bc4-46ae-5ba5602d76ff','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Leads','module',90,0),('c83dd518-3b4c-2a09-0887-5ba560c74124','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Leads','module',90,0),('cca2dfa6-4ea6-8e0b-2015-5ba56031f517','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Leads','module',90,0),('d1465e27-8aaa-3618-7a6f-5ba5609770b8','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Leads','module',90,0),('efcad147-2243-4fde-bc59-5ba560715dfc','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Cases','module',89,0),('4a500438-87f0-e7ea-f832-5ba560a5b33d','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Cases','module',90,0),('4af50f1f-8bfd-013c-4794-5ba5608c97a1','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Cases','module',90,0),('8d5d09c3-3ea3-9771-6fd7-5ba560b1289d','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Cases','module',90,0),('d3ad08a0-3613-e5b7-0efb-5ba560ac910e','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Cases','module',90,0),('11de554d-febf-ac8a-858f-5ba560ec20f3','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Cases','module',90,0),('164351b6-2c99-6385-04af-5ba560b8cb0b','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Cases','module',90,0),('1ae6deea-e02f-3285-6faa-5ba560417bd5','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Cases','module',90,0),('3832df52-8433-1f53-2728-5ba56021ff62','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Bugs','module',89,0),('3d14d3df-1b8b-87f3-db65-5ba56030d0f4','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Bugs','module',90,0),('41f6d356-906a-c32b-e829-5ba5609bd049','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Bugs','module',90,0),('465bdaa8-6459-d15d-e13e-5ba560d89c95','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Bugs','module',90,0),('4b3dd334-e0a5-8d1f-b158-5ba560ff3754','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Bugs','module',90,0),('4fe15085-139d-34c6-4c4b-5ba560b3bf93','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Bugs','module',90,0),('5484d53f-95f8-6089-b98d-5ba560779292','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Bugs','module',90,0),('59285b82-1eb0-6956-4d86-5ba560fc328d','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Bugs','module',90,0),('75f75c6a-a1cd-87a7-76b0-5ba5600ca5b3','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Users','module',89,0),('7b565cb5-5952-c6c1-7fba-5ba560e848e6','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Users','module',90,0),('7ff9d2b0-dfe3-d7d0-e3a0-5ba560534eb3','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Users','module',90,0),('845ed2f0-5fa4-c1a9-ddbd-5ba560b700bc','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Users','module',90,0),('88c3d360-9b4d-4cae-d3f5-5ba56077654b','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Users','module',90,0),('8d6757bb-2de9-8221-367c-5ba560c5773c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Users','module',90,0),('920ad038-a8c7-520e-8b2b-5ba560915026','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Users','module',90,0),('966fdc47-652a-cf31-72c6-5ba56040a14e','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Users','module',90,0),('bff0d409-2019-8c0f-bb40-5ba56084f010','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Project','module',89,0),('c455d6ce-f955-b0a4-b27c-5ba5607ee44f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Project','module',90,0),('c8f95fc4-3082-2cd2-ad7d-5ba560635b1e','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Project','module',90,0),('cd5e5080-0626-7ed8-c7c3-5ba5602ab434','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Project','module',90,0),('d1c35210-9779-cd70-f11a-5ba560f73bc6','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Project','module',90,0),('d666de34-8b75-8c51-d6aa-5ba560313577','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Project','module',90,0),('db0a5c2a-e9bb-ab5e-73af-5ba560848618','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Project','module',90,0),('e02ad153-a77d-7761-1678-5ba560b57799','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Project','module',90,0),('33850e7b-0543-0f4d-1f3e-5ba560e6be93','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','ProjectTask','module',89,0),('7dbd030e-83e9-46c6-050b-5ba560942606','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','ProjectTask','module',90,0),('c40d0655-7d73-668b-0079-5ba560be55a7','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','ProjectTask','module',90,0),('10e4553d-56e8-73e7-fdc0-5ba560a9157d','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','ProjectTask','module',90,0),('15c6545d-ac4c-d867-44d6-5ba56035cf40','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','ProjectTask','module',90,0),('1a69dad4-6f75-4817-2645-5ba5601e7a7d','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','ProjectTask','module',90,0),('1f4bdd49-b84d-efed-69e7-5ba5609c188a','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','ProjectTask','module',90,0),('242dd503-7c45-86ad-8659-5ba560708c24','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','ProjectTask','module',90,0),('40be56f5-46d0-fb57-369f-5ba560733469','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Campaigns','module',89,0),('4561d625-d886-f7b5-6bf0-5ba560cf941e','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Campaigns','module',90,0),('49c6d979-82b0-dcd2-da7a-5ba5608f6840','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Campaigns','module',90,0),('4ea8dcd2-43fe-59e9-ca03-5ba5602a5da6','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Campaigns','module',90,0),('530ddf23-521c-433a-5331-5ba5605f7dcc','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Campaigns','module',90,0),('5772d282-4254-00d6-a59f-5ba560cfcdcb','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Campaigns','module',90,0),('5bd7d975-2998-4d11-9961-5ba560e79658','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Campaigns','module',90,0),('603cd62f-c6b1-256a-4410-5ba560e45964','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Campaigns','module',90,0),('7a9ad655-9559-1d7a-4de5-5ba560f46f8b','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','ProspectLists','module',89,0),('7f7cde83-a345-1594-534c-5ba56053afaf','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','ProspectLists','module',90,0),('84205924-7f97-42fe-4d62-5ba5606d9b35','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','ProspectLists','module',90,0),('888551a9-f89d-421f-8713-5ba560301950','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','ProspectLists','module',90,0),('8d6755f0-8f67-3cd6-1547-5ba560e702fb','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','ProspectLists','module',90,0),('92495633-8c3c-ac11-3682-5ba5603f0c05','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','ProspectLists','module',90,0),('972b5b1b-4512-977d-228b-5ba560dc9e56','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','ProspectLists','module',90,0),('9c4bda06-c474-29c3-18c0-5ba56085c972','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','ProspectLists','module',90,0),('b571519e-5a1c-b5e2-87ef-5ba5609af23a','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Prospects','module',89,0),('b9d65938-6822-7ce3-df87-5ba560918d7a','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Prospects','module',90,0),('be79daa8-1735-c5ed-a388-5ba560c79f2b','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Prospects','module',90,0),('c39a5018-cbe8-6f14-cd40-5ba560fe95eb','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Prospects','module',90,0),('c87c5f87-95ee-d54d-6fb8-5ba560c69a17','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Prospects','module',90,0),('cd5e5075-aabc-1446-b6f4-5ba5607e2be4','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Prospects','module',90,0),('d240570e-cc57-ea27-aaa7-5ba56036614c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Prospects','module',90,0),('d760d352-1afe-43c4-a2b9-5ba560c30911','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Prospects','module',90,0),('ed59d83e-acbb-08a6-00e1-5ba560034463','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','EmailMarketing','module',89,0),('f2b8d981-45e8-5384-ac88-5ba56072e5e3','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','EmailMarketing','module',90,0),('3f3c0cb6-624a-549a-b916-5ba560f365f6','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','EmailMarketing','module',90,0),('8d5d05df-2b15-9a9e-35b3-5ba56014c123','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','EmailMarketing','module',90,0),('e34d0f4c-993a-ee97-b58f-5ba560896a9f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','EmailMarketing','module',90,0),('13d25090-53fd-5fb3-51ee-5ba560980d4e','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','EmailMarketing','module',90,0),('18b45e01-51f7-4c10-934a-5ba560eac563','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','EmailMarketing','module',90,0),('1d965140-4c62-6f71-9722-5ba5600ee65e','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','EmailMarketing','module',90,0),('7ec15446-c190-9701-fa7e-5ba560d7f30a','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Contacts','module',89,0),('83a35f6a-08c5-0ef9-2c13-5ba560e50f82','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Contacts','module',90,0),('8846d1dd-5094-111e-552c-5ba56026644f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Contacts','module',90,0),('8d675264-51de-fb27-cd7d-5ba560fabd83','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Contacts','module',90,0),('9287d457-1431-c1da-8e39-5ba56001e68e','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Contacts','module',90,0),('9769db31-1d18-d34d-4a49-5ba560efca0a','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Contacts','module',90,0),('9c4bda7d-4792-db7a-bbbe-5ba5604186ad','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Contacts','module',90,0),('a0b0d215-ccf7-78a8-b354-5ba5608fae90','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Contacts','module',90,0),('c4d2d810-93b0-e878-00b1-5ba5607941b3','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Accounts','module',89,0),('ca31d48e-0c35-4043-dad9-5ba5600d6ca9','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Accounts','module',90,0),('cf13d1ca-dabd-c61c-ab5c-5ba56068104d','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Accounts','module',90,0),('d3f5d509-3690-8ead-025e-5ba56071bd32','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Accounts','module',90,0),('d954d935-73cb-b076-f595-5ba5601771f0','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Accounts','module',90,0),('deb3daae-5c0e-b80f-a0f6-5ba5602ce776','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Accounts','module',90,0),('e3d45e6d-2acc-5af3-5a38-5ba560fcc70d','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Accounts','module',90,0),('e8f4dc20-e5e7-f0f2-f62f-5ba5606293e9','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Accounts','module',90,0),('148dd6c5-4501-3ee2-c225-5ba5606c1eff','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Opportunities','module',89,0),('196fdb17-e4a2-ee29-2821-5ba560869412','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Opportunities','module',90,0),('1e1350fb-e5c7-3947-bd1a-5ba560440b80','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Opportunities','module',90,0),('21fb57a3-0611-5dfb-1eda-5ba5605c9796','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Opportunities','module',90,0),('26605f29-745b-4179-58b0-5ba560791d7d','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Opportunities','module',90,0),('2b425eee-26c3-6843-4161-5ba560313599','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Opportunities','module',90,0),('30245824-5924-ad1f-d5be-5ba560b8277c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Opportunities','module',90,0),('34c7ddb5-424a-3113-92c6-5ba560518976','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Opportunities','module',90,0),('51d551cb-9d05-889b-088f-5ba560d5966f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','EmailTemplates','module',89,0),('56b75388-7eff-2bc8-fe41-5ba56043eab9','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','EmailTemplates','module',90,0),('5b5ad081-1d77-9467-98fd-5ba560f12461','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','EmailTemplates','module',90,0),('5ffe5a96-6e44-dcec-f8cd-5ba560ea1dc0','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','EmailTemplates','module',90,0),('64e05ce0-2c11-b0c2-9f8f-5ba56056ea19','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','EmailTemplates','module',90,0),('69455a68-a8bc-1c21-9a70-5ba56035a5e2','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','EmailTemplates','module',90,0),('6de8d16d-fc40-3ca6-569b-5ba560d45311','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','EmailTemplates','module',90,0),('720f5ef5-b2d7-b108-9013-5ba560195c3a','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','EmailTemplates','module',90,0),('897f5a0d-7936-b6e5-2431-5ba5607511df','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Notes','module',89,0),('8e9fd640-0417-e8b7-f589-5ba560f20f44','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Notes','module',90,0),('934357bb-de26-2537-c98c-5ba560df3b1d','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Notes','module',90,0),('97a85641-7f53-bf4d-7f21-5ba5600af628','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Notes','module',90,0),('9c0d5b6c-424c-8dce-3707-5ba560626f36','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Notes','module',90,0),('a12dd91e-3859-0405-4023-5ba56099e249','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Notes','module',90,0),('a5d1583d-2f82-7812-0fe7-5ba5605b5207','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Notes','module',90,0),('aa365402-b036-b222-f620-5ba560f80d13','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Notes','module',90,0),('c54fdca3-86d7-fb35-85e5-5ba560537abd','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Calls','module',89,0),('ca31de80-0cce-5f3a-04c4-5ba56047985b','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Calls','module',90,0),('ced55f4d-15a8-6fc7-c9a3-5ba560df10d4','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Calls','module',90,0),('d33a5a9e-63c9-835a-8c34-5ba560407ca9','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Calls','module',90,0),('d7ddd0cf-9f9f-dd6f-2777-5ba5600b2e95','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Calls','module',90,0),('dc815db8-7e3b-d373-a417-5ba560aa2542','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Calls','module',90,0),('e1635d10-8a22-76aa-1b21-5ba5607b8ca4','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Calls','module',90,0),('e5c8539a-4c6b-1120-520a-5ba560f3eb64','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Calls','module',90,0),('e7350a0f-27a7-8222-957b-5ba56039fb2f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Emails','module',89,0),('1355517e-1ce3-9bea-0f6f-5ba560bd2526','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Emails','module',90,0),('17ba5c3e-abbe-5ee7-6828-5ba560a8d6d7','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Emails','module',90,0),('1c9c58c4-c6f8-9d3a-6e5d-5ba56044cf58','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Emails','module',90,0),('21015821-2eb1-910d-24af-5ba560ac37ab','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Emails','module',90,0),('25a4d645-28f2-fefd-2bde-5ba5600c5910','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Emails','module',90,0),('2a86d999-a2ff-84fd-17d0-5ba56078868c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Emails','module',90,0),('2f2a5bcd-97e7-a5bf-9bd2-5ba560dcbdbb','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Emails','module',90,0),('49c6dcff-ef8c-784e-b182-5ba56030ed3d','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Meetings','module',89,0),('4e2bd2e8-7678-0a7e-24f3-5ba56083cfac','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Meetings','module',90,0),('5290d332-a322-d121-555d-5ba560be8732','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Meetings','module',90,0),('56f5d69d-1fdb-56d9-e816-5ba5600564af','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Meetings','module',90,0),('5b5ad3c7-4fa9-7d39-4fa9-5ba560224882','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Meetings','module',90,0),('5f815dfc-42ee-38b6-131c-5ba560701742','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Meetings','module',90,0),('63e65f8a-0770-a8b6-c084-5ba560c7e61d','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Meetings','module',90,0),('684b586a-4090-20c8-2fd3-5ba560a6ed02','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Meetings','module',90,0),('7effd9aa-7f2e-3afd-f031-5ba560d74735','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Tasks','module',89,0),('8364dbda-92d3-21a1-bfac-5ba560e4c9e9','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Tasks','module',90,0),('87c9d69c-71b2-3044-2729-5ba5602645d3','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Tasks','module',90,0),('8c2eda0f-626a-c5fa-3c9f-5ba5601ea948','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Tasks','module',90,0),('9093d6fa-c126-4193-7d66-5ba5601aa07a','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Tasks','module',90,0),('95375439-990a-ce8e-386f-5ba5605a60da','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Tasks','module',90,0),('99dad990-b01f-524b-bd5e-5ba5605e8b07','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Tasks','module',90,0),('9e3fd76e-dd2d-156f-b40f-5ba56079eace','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Tasks','module',90,0),('10a5dacf-39b3-bf7e-077d-5ba56075fcce','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Alerts','module',89,0),('154954c6-204c-e897-6703-5ba560fd00f3','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Alerts','module',90,0),('196fdb17-666f-a607-1241-5ba560658b45','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Alerts','module',90,0),('1dd4d50d-0664-19e4-6052-5ba560efbe20','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Alerts','module',90,0),('21bcd215-595a-15f1-2e62-5ba560b50708','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Alerts','module',90,0),('25e35b61-2ae4-f429-7cf1-5ba56076089c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Alerts','module',90,0),('2a48522d-40cb-831b-e71a-5ba560ed246c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Alerts','module',90,0),('2f2a57ca-355b-b18e-4a88-5ba560e06e2f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Alerts','module',90,0),('52cf513b-e5f8-d690-162f-5ba560ee953f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Documents','module',89,0),('5772d38c-9823-68db-4b16-5ba5602755a4','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Documents','module',90,0),('5c16595e-e4da-f2ec-469b-5ba5608923d5','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Documents','module',90,0),('607b50fb-298a-c1e2-b5cd-5ba56030f97b','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Documents','module',90,0),('64a1d70a-8c58-7a83-c2aa-5ba560e8d085','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Documents','module',90,0),('6906d662-2dcf-8c5f-0f48-5ba560d48873','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Documents','module',90,0),('6d2d54be-b8dc-87c1-bbcb-5ba5600c1b6a','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Documents','module',90,0),('7153dd16-c411-8075-995c-5ba56039072d','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Documents','module',90,0),('e73f5b1a-c845-ac26-db22-5ba5601d52f1','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Spots','module',89,0),('ebe2d47d-949a-347e-2a2a-5ba56026cd5b','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Spots','module',90,0),('f0865143-ad50-0577-8003-5ba560b9e5eb','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Spots','module',90,0),('105d04e6-fb91-7cb3-c925-5ba560bfe1c6','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Spots','module',90,0),('5a95018e-f01d-8805-0c78-5ba5609e0717','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Spots','module',90,0),('a0e50eb5-c52e-4e85-c17c-5ba560c865c3','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Spots','module',90,0),('e7350a3b-2cf1-d0d0-8e5b-5ba560994d19','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Spots','module',90,0),('12d851ed-5bcb-4dd5-97d9-5ba560c93821','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Spots','module',90,0),('4d31db16-dd0f-434e-016b-5ba560c32350','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','EAPM','module',89,0),('5196daa5-403e-c1a0-1332-5ba560be266d','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','EAPM','module',90,0),('563a5d8a-d2d0-8835-fc53-5ba5608c2492','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','EAPM','module',90,0),('5b1c535e-b214-de34-7c05-5ba5602c79ea','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','EAPM','module',90,0),('5f8158b2-dfae-4cfc-c034-5ba56073eb3c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','EAPM','module',90,0),('63e65f5e-7c4e-0aba-f645-5ba560e74ed7','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','EAPM','module',90,0),('6889d250-5767-796d-9cfa-5ba560197ca6','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','EAPM','module',90,0),('6cb05205-352e-0f80-7fbb-5ba5608e9d25','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','EAPM','module',90,0),('a60fd9ad-3343-8630-b87a-5ba560744cf5','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','AM_ProjectTemplates','module',89,0),('aa365358-29d3-72cb-f146-5ba56060fc07','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','AM_ProjectTemplates','module',90,0),('aed9de02-cbfa-0da0-382a-5ba560f1c331','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','AM_ProjectTemplates','module',90,0),('b33eda66-6ed9-9db4-00b0-5ba560b1f0f2','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','AM_ProjectTemplates','module',90,0),('b7a3d619-27f3-351a-8fde-5ba560783537','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','AM_ProjectTemplates','module',90,0),('bbca5963-fc43-bc26-e746-5ba5607e9e8f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','AM_ProjectTemplates','module',90,0),('c02f56f5-11af-993a-92f4-5ba560c51bb8','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','AM_ProjectTemplates','module',90,0),('c455db85-d903-ff16-2de3-5ba5604b3e04','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','AM_ProjectTemplates','module',90,0),('e0a7d212-cc6d-cdab-0f01-5ba5609788f7','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','AM_TaskTemplates','module',89,0),('e50cdc5a-0643-ece7-92dd-5ba560331069','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','AM_TaskTemplates','module',90,0),('e9335d25-906d-7ca8-1ca5-5ba560cc48db','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','AM_TaskTemplates','module',90,0),('ed9855f4-6709-dd83-ea9a-5ba5605a70ae','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','AM_TaskTemplates','module',90,0),('f1bed56e-c3f7-e3a5-ca99-5ba560318fb7','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','AM_TaskTemplates','module',90,0),('1c150a1f-5375-bfb7-0b5c-5ba560034aed','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','AM_TaskTemplates','module',90,0),('5e7d0588-7e26-e535-5898-5ba560479de1','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','AM_TaskTemplates','module',90,0),('a4cd0720-d3e0-a2fc-9fc1-5ba56020642b','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','AM_TaskTemplates','module',90,0),('3d535f39-4f9c-08af-f5d4-5ba56090154d','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','AOK_Knowledge_Base_Categories','module',89,0),('41b85946-0cdd-8900-c180-5ba5603fcc4e','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','AOK_Knowledge_Base_Categories','module',90,0),('461d5205-6fcf-5ae0-7bc9-5ba560c4d5cf','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','AOK_Knowledge_Base_Categories','module',90,0),('4a825989-137c-184d-7fad-5ba560e333da','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','AOK_Knowledge_Base_Categories','module',90,0),('4f25db19-f95b-6b60-f264-5ba560458c3f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','AOK_Knowledge_Base_Categories','module',90,0),('538ad202-729c-4408-1255-5ba5600f9b8b','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','AOK_Knowledge_Base_Categories','module',90,0),('57efd3c0-de90-c209-a8b2-5ba560912632','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','AOK_Knowledge_Base_Categories','module',90,0),('5c935081-b152-6711-46af-5ba560231a2a','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','AOK_Knowledge_Base_Categories','module',90,0),('78685a5d-8b98-ce28-07f9-5ba5606f4ba6','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','AOK_KnowledgeBase','module',89,0),('7c8ed5fd-eb70-00be-2481-5ba5605663ee','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','AOK_KnowledgeBase','module',90,0),('8132544a-f253-b804-0e79-5ba560494bbb','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','AOK_KnowledgeBase','module',90,0),('8558d4ce-1524-a98c-a987-5ba56063acfc','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','AOK_KnowledgeBase','module',90,0),('89fc5ef3-bcde-add7-12d9-5ba560a7eb44','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','AOK_KnowledgeBase','module',90,0),('8e6159c6-5bc9-26be-9136-5ba5603aa83f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','AOK_KnowledgeBase','module',90,0),('92c6547c-ff34-2ea8-da27-5ba560c1be14','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','AOK_KnowledgeBase','module',90,0),('9769d630-b5e4-9d02-6a4b-5ba560657044','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','AOK_KnowledgeBase','module',90,0),('db0a5cb3-1431-ac92-854a-5ba56090f4ff','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','FP_events','module',89,0),('dfec5072-c0f3-9b2e-9306-5ba560fe8450','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','FP_events','module',90,0),('e4515bbd-c36c-d521-26fb-5ba5603db520','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','FP_events','module',90,0),('e8b65223-fbc7-3e49-7724-5ba560364f53','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','FP_events','module',90,0),('ed59d0c1-e588-2071-322c-5ba560a582b1','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','FP_events','module',90,0),('f1bed219-5727-1531-4bf6-5ba56031fb7a','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','FP_events','module',90,0),('1c150fd7-6447-7ee8-7ed8-5ba560d629da','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','FP_events','module',90,0),('6a35011b-0744-81d1-e230-5ba56001b39d','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','FP_events','module',90,0),('22f550c2-99b8-67a4-1d3b-5ba560c9cbbf','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','FP_Event_Locations','module',89,0),('2798d20c-2b10-bbf4-3a8a-5ba56046e909','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','FP_Event_Locations','module',90,0),('2c3c5e31-199d-612a-85c8-5ba5603f8d86','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','FP_Event_Locations','module',90,0),('311e5af5-650b-c717-6676-5ba560d7f5a3','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','FP_Event_Locations','module',90,0),('35c1d93c-f4b8-8b4d-3600-5ba560fa62e6','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','FP_Event_Locations','module',90,0),('3a26d62b-de3b-2b13-46cc-5ba5601e127a','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','FP_Event_Locations','module',90,0),('3e8bdb98-8dad-1ebc-8087-5ba5605b7857','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','FP_Event_Locations','module',90,0),('436dd7af-b6ff-068c-297d-5ba560cb38a0','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','FP_Event_Locations','module',90,0),('60f85c24-9ab7-5420-c1ff-5ba5604e8166','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','AOD_IndexEvent','module',89,0),('655d5b76-ae8b-631a-9f8c-5ba560a22faf','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','AOD_IndexEvent','module',90,0),('69c255e5-3452-450a-9d60-5ba560ba98d4','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','AOD_IndexEvent','module',90,0),('6e65dc28-8380-22ec-a930-5ba56016febc','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','AOD_IndexEvent','module',90,0),('72cada86-2b30-aa74-5de3-5ba5602125ee','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','AOD_IndexEvent','module',90,0),('776e5ba9-c397-e3a9-70bc-5ba5608a32fd','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','AOD_IndexEvent','module',90,0),('7c11d2d0-8a2c-b7a4-9185-5ba560a0759c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','AOD_IndexEvent','module',90,0),('80f3d7d3-7204-a817-73ae-5ba56068c87f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','AOD_IndexEvent','module',90,0),('9c4bdc12-06a9-c597-9922-5ba5603ed1c6','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','AOD_Index','module',89,0),('a0ef58fb-b4b0-6849-aaa6-5ba560f31c82','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','AOD_Index','module',90,0),('a5d15774-9597-53ff-8330-5ba5602e5698','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','AOD_Index','module',90,0),('aa74da46-88eb-6d6c-f48a-5ba560530c0f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','AOD_Index','module',90,0),('af56dd8b-a664-724e-6982-5ba5601b879e','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','AOD_Index','module',90,0),('b438d646-3e92-f7a4-879e-5ba560c702da','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','AOD_Index','module',90,0),('b91ad5d4-c281-730c-50de-5ba560212a1f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','AOD_Index','module',90,0),('be3b5d36-959d-65ad-8278-5ba560b6c023','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','AOD_Index','module',90,0),('da4edb64-4057-79ec-4451-5ba560b2ee0f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','AOP_Case_Events','module',89,0),('dfadd537-b0bc-caa8-0f98-5ba560543f37','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','AOP_Case_Events','module',90,0),('e4ce5d85-f09e-513c-6c28-5ba560a2f5ec','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','AOP_Case_Events','module',90,0),('e933511d-1c04-b633-1473-5ba5608a2c73','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','AOP_Case_Events','module',90,0),('ee1556f2-e599-47d8-488b-5ba560f5d88c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','AOP_Case_Events','module',90,0),('f335daf0-3354-6b77-ae7f-5ba5605811ee','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','AOP_Case_Events','module',90,0),('3f3c02dd-7ffb-9cfe-cddc-5ba560ec2f95','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','AOP_Case_Events','module',90,0),('858d0450-2d94-1676-d91f-5ba5607186e0','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','AOP_Case_Events','module',90,0),('2527d12f-e982-87c8-daf1-5ba56062f4f7','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','AOP_Case_Updates','module',89,0),('2a09df0b-8501-890b-403e-5ba56092e025','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','AOP_Case_Updates','module',90,0),('2eebd065-ab24-f461-3879-5ba560f70173','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','AOP_Case_Updates','module',90,0),('3350debf-6c70-a12d-cbc0-5ba56022d530','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','AOP_Case_Updates','module',90,0),('37f454e5-c8fc-239b-766d-5ba560f41373','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','AOP_Case_Updates','module',90,0),('3bdc564e-fce2-3445-f7d5-5ba560d089e4','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','AOP_Case_Updates','module',90,0),('407fdef6-a485-8de6-68ef-5ba560d14ffa','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','AOP_Case_Updates','module',90,0),('45a0509b-07a2-2c91-e725-5ba5604ebf42','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','AOP_Case_Updates','module',90,0),('680cdd46-ee05-411f-981b-5ba5607027ca','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','AOR_Reports','module',89,0),('6c71da37-c80b-b05e-ba52-5ba560841e9c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','AOR_Reports','module',90,0),('7153d287-163a-7c62-cd5c-5ba560039452','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','AOR_Reports','module',90,0),('75b8dc34-20c9-e5a8-5093-5ba5606a09ec','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','AOR_Reports','module',90,0),('7a1dd1cd-47c1-4f1c-7691-5ba560d635af','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','AOR_Reports','module',90,0),('7e82df30-3af8-b4bb-ba33-5ba560fb35ac','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','AOR_Reports','module',90,0),('82e7da1b-c6af-8608-b7d0-5ba560f77f96','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','AOR_Reports','module',90,0),('874cd5d0-334f-a401-7ba1-5ba5602f3247','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','AOR_Reports','module',90,0),('e3575796-8c4a-7b39-6f9a-5ba560ee2b3d','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','AOR_Scheduled_Reports','module',89,0),('e7fadd8b-dd62-c328-6258-5ba560e97ea1','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','AOR_Scheduled_Reports','module',90,0),('ec9e52b9-a6cd-ed19-5982-5ba56048bdc2','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','AOR_Scheduled_Reports','module',90,0),('f141da32-71f6-528c-49c6-5ba560df60ad','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','AOR_Scheduled_Reports','module',90,0),('182d0dd3-0ad2-60b0-a8fb-5ba5601de484','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','AOR_Scheduled_Reports','module',90,0),('5e7d0017-1614-8d28-510c-5ba560991219','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','AOR_Scheduled_Reports','module',90,0),('a4cd0712-89e6-cbd0-4087-5ba5603ee1e1','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','AOR_Scheduled_Reports','module',90,0),('ef05092f-b4a4-b9af-ced0-5ba560630f74','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','AOR_Scheduled_Reports','module',90,0),('2db35cda-029a-594d-2932-5ba560b8ecd5','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','AOS_Contracts','module',89,0),('33125005-f4d3-548e-9a24-5ba56051d967','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','AOS_Contracts','module',90,0),('3832d7b8-8162-a997-809c-5ba560b263f9','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','AOS_Contracts','module',90,0),('3e0edff6-014e-caf0-6294-5ba560321b97','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','AOS_Contracts','module',90,0),('42b25ecd-61bf-b879-331b-5ba560294da9','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','AOS_Contracts','module',90,0),('47175cac-55bb-4390-9ce7-5ba560633a24','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','AOS_Contracts','module',90,0),('4b3dd428-4acd-d597-4148-5ba5602844e4','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','AOS_Contracts','module',90,0),('4fa2dbc4-b740-b690-234a-5ba560cdf7dc','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','AOS_Contracts','module',90,0),('70985ff2-9c11-6099-af08-5ba560c164f6','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','AOS_Invoices','module',89,0),('753bd5d5-685e-7ae8-2a41-5ba560f5077e','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','AOS_Invoices','module',90,0),('79625e7e-103f-a927-f44b-5ba560abba1a','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','AOS_Invoices','module',90,0),('7d88d87e-8d76-dc39-701f-5ba5600ef5f2','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','AOS_Invoices','module',90,0),('81edd490-f40e-18ec-f6f4-5ba56092646b','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','AOS_Invoices','module',90,0),('86915950-632d-a35f-d9af-5ba560d098a8','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','AOS_Invoices','module',90,0),('8af65d73-6c50-9f83-cf7a-5ba560581de1','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','AOS_Invoices','module',90,0),('8f5b5f73-ec71-055b-d6c7-5ba560563ccc','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','AOS_Invoices','module',90,0),('addfd4aa-0e39-6457-5dc0-5ba5604e442c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','AOS_PDF_Templates','module',89,0),('b2835ca8-4159-77c0-362a-5ba56020abe2','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','AOS_PDF_Templates','module',90,0),('b6e857e5-05bc-d9ce-b23b-5ba560f7bee9','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','AOS_PDF_Templates','module',90,0),('bb4d5137-ef31-d684-359a-5ba560efa439','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','AOS_PDF_Templates','module',90,0),('bfb252ca-c809-9f22-1838-5ba560353860','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','AOS_PDF_Templates','module',90,0),('c455d60f-723c-f4a0-1875-5ba560155a34','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','AOS_PDF_Templates','module',90,0),('c8badc9c-c039-5adb-5ccc-5ba56095d1a9','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','AOS_PDF_Templates','module',90,0),('cce15df4-04e9-6a64-12de-5ba560384f9e','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','AOS_PDF_Templates','module',90,0),('eaaa593e-b2e0-745b-50ba-5ba5602b7233','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','AOS_Product_Categories','module',89,0),('ef8c5eb7-121d-40ca-c561-5ba5608654ef','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','AOS_Product_Categories','module',90,0),('bd000da8-3324-84f2-9b09-5ba560de62ca','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','AOS_Product_Categories','module',90,0),('43250dc5-1a96-8e18-8975-5ba5603473db','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','AOS_Product_Categories','module',90,0),('8975094f-c2c7-3148-0ac7-5ba560b7aff3','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','AOS_Product_Categories','module',90,0),('cfc50c3e-6bc2-03af-2f54-5ba560028cf3','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','AOS_Product_Categories','module',90,0),('119fd8bb-cba4-266b-458f-5ba560661d3c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','AOS_Product_Categories','module',90,0),('16435f4b-8236-537d-36f6-5ba560aec1eb','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','AOS_Product_Categories','module',90,0),('338f5a97-d633-0c5d-6fa7-5ba56047cdfb','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','AOS_Products','module',89,0),('3832d55c-5340-e569-4ea5-5ba56024c855','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','AOS_Products','module',90,0),('3c97d1d7-5dac-13e9-370e-5ba5605b414a','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','AOS_Products','module',90,0),('413b5536-b4c6-285c-0433-5ba560966bb3','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','AOS_Products','module',90,0),('45a059ab-2f52-ab82-5cb8-5ba560fbbb05','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','AOS_Products','module',90,0),('4a43d8cf-2ce9-39ac-e800-5ba560ec0ce0','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','AOS_Products','module',90,0),('4e6a57ac-6ecb-7c07-bb73-5ba5607301a2','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','AOS_Products','module',90,0),('530dd0dc-2b75-71f4-74f3-5ba560e54fee','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','AOS_Products','module',90,0),('a786d264-a383-9754-b1a1-5ba560583863','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','AOS_Quotes','module',89,0),('ace5dee4-fd45-84f1-9332-5ba5602954c4','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','AOS_Quotes','module',90,0),('b1c7d5c0-696b-d995-f714-5ba560a71063','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','AOS_Quotes','module',90,0),('b66b584a-aeca-2335-aef7-5ba5606aac11','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','AOS_Quotes','module',90,0),('bad059a7-0d4e-84a4-7592-5ba56097c9de','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','AOS_Quotes','module',90,0),('bf35503c-d8cd-9b61-42da-5ba560c64610','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','AOS_Quotes','module',90,0),('c39a5eb4-4e5f-4425-da15-5ba56029e497','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','AOS_Quotes','module',90,0),('c87c5586-9e0c-e1bc-b4a3-5ba560ca7d88','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','AOS_Quotes','module',90,0),('edd6d0d3-672d-908b-51c1-5ba560aeb17b','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','AOW_WorkFlow','module',89,0),('f23bdfdc-c338-2df1-6ae7-5ba5600bfd84','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','AOW_WorkFlow','module',90,0),('2bb506ed-c189-6f40-54fb-5ba560c25fdb','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','AOW_WorkFlow','module',90,0),('72050d04-8083-beaf-b05e-5ba56019bd06','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','AOW_WorkFlow','module',90,0),('b8550284-d20d-d469-0acd-5ba5605d2a5f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','AOW_WorkFlow','module',90,0),('fea50746-29ce-0216-e5a6-5ba5605e154e','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','AOW_WorkFlow','module',90,0),('148dd6ec-ad97-88af-f4c4-5ba560972eab','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','AOW_WorkFlow','module',90,0),('193154b6-a400-8e23-427e-5ba560d283cf','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','AOW_WorkFlow','module',90,0),('3544d4d0-dde8-5b7c-1ce9-5ba5604af2d5','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','AOW_Processed','module',89,0),('39e850a4-234e-71d8-45ea-5ba560338e8c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','AOW_Processed','module',90,0),('3e0edc46-5001-c43a-86b8-5ba560239f90','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','AOW_Processed','module',90,0),('42b25ad3-f6da-13cb-816f-5ba560f9c4ff','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','AOW_Processed','module',90,0),('47175889-f919-6656-e49f-5ba560ca3750','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','AOW_Processed','module',90,0),('4aff530b-182c-81eb-b4d6-5ba560876c3c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','AOW_Processed','module',90,0),('4fa2d403-438b-438b-bd25-5ba5604f7b31','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','AOW_Processed','module',90,0),('544650bf-2d26-4991-57f6-5ba5608cdc27','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','AOW_Processed','module',90,0),('81325950-b34a-3d4e-986d-5ba560c6012d','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','jjwg_Maps','module',89,0),('86145310-351a-4936-e8c3-5ba56070a34b','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','jjwg_Maps','module',90,0),('8a79570b-2d5a-ab4f-1924-5ba560d475d6','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','jjwg_Maps','module',90,0),('8ede5e63-23ea-c236-8c61-5ba56091ad72','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','jjwg_Maps','module',90,0),('9381d83c-0eef-f482-c276-5ba5608683d1','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','jjwg_Maps','module',90,0),('98255d86-6597-168a-6eae-5ba560c80bc2','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','jjwg_Maps','module',90,0),('9c8a5c28-7d4e-0ced-5585-5ba56042d553','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','jjwg_Maps','module',90,0),('a0b0d279-5d83-a77d-4c38-5ba560305154','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','jjwg_Maps','module',90,0),('c2235ab3-0f10-0102-d025-5ba5600a3fb0','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','jjwg_Markers','module',89,0),('c6885801-3f5b-4f74-9440-5ba5603b2c0b','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','jjwg_Markers','module',90,0),('cb2bd12d-0645-f687-3cf9-5ba560a8076f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','jjwg_Markers','module',90,0),('cf90dd7d-a9d3-b7fa-daf5-5ba560946aae','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','jjwg_Markers','module',90,0),('d3b75b61-adfe-26c4-1e6c-5ba560736135','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','jjwg_Markers','module',90,0),('d81c5c77-8850-ec43-b183-5ba560fac96b','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','jjwg_Markers','module',90,0),('dc42d0cf-5197-1a12-9d88-5ba560cc63bd','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','jjwg_Markers','module',90,0),('e0a7df9a-8567-acb1-108e-5ba560e8a31b','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','jjwg_Markers','module',90,0),('b08502cd-1114-356c-cbfe-5ba56020cf0c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','jjwg_Areas','module',89,0),('fabc0102-e50a-a32b-1324-5ba56040e15a','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','jjwg_Areas','module',90,0),('1410d777-4045-538e-5001-5ba5607dedc9','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','jjwg_Areas','module',90,0),('18f2db45-6a70-419b-e20e-5ba560bdca5c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','jjwg_Areas','module',90,0),('1d96595f-4dbe-4fe9-f030-5ba56056ef10','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','jjwg_Areas','module',90,0),('2239d84e-fa1b-bd1b-ab76-5ba5608f9ec6','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','jjwg_Areas','module',90,0),('26dd5c74-b763-796d-4781-5ba5609c3ceb','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','jjwg_Areas','module',90,0),('2b42540c-b5db-7b05-1f56-5ba560f30b85','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','jjwg_Areas','module',90,0),('47d2db9b-1bf8-7c2f-f92f-5ba56003b488','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','jjwg_Address_Cache','module',89,0),('4cb4dee6-149e-ba5c-0314-5ba560b1f9cc','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','jjwg_Address_Cache','module',90,0),('50db5ac0-9d27-d582-16ce-5ba5603e7d3c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','jjwg_Address_Cache','module',90,0),('5501d15d-81a7-6eb4-bf7a-5ba560e2000f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','jjwg_Address_Cache','module',90,0),('59a55531-2d18-d6bb-f84b-5ba5603bdd8e','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','jjwg_Address_Cache','module',90,0),('5e48d006-875b-8fd1-7248-5ba5608cd59f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','jjwg_Address_Cache','module',90,0),('62addd25-263a-5a17-799d-5ba56001114c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','jjwg_Address_Cache','module',90,0),('67515fbd-2afd-6c45-7b8c-5ba5602203f8','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','jjwg_Address_Cache','module',90,0),('83a353fc-26d1-bfe9-5aff-5ba560b4050e','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Calls_Reschedule','module',89,0),('87c9db39-2d74-8e67-8f04-5ba560da5e44','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Calls_Reschedule','module',90,0),('8c2ed712-f4d7-79a1-87b3-5ba5602f92ed','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Calls_Reschedule','module',90,0),('905554b2-5518-068a-37b4-5ba56059535f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Calls_Reschedule','module',90,0),('94f8d9ed-9789-e283-c57b-5ba56019ad47','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Calls_Reschedule','module',90,0),('995dd21e-5047-b68a-c182-5ba5603ca281','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Calls_Reschedule','module',90,0),('9dc2da8d-13bb-ce95-4a23-5ba5609880f5','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Calls_Reschedule','module',90,0),('a2665079-c558-4993-1738-5ba56014e604','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Calls_Reschedule','module',90,0),('b2835a6b-69b7-6755-dabb-5ba56089bfdf','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','SecurityGroups','module',89,0),('b6e8570a-fd1f-d4f5-4f89-5ba5601d76cb','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','SecurityGroups','module',90,0),('bb0eda93-8c40-86e1-7ad4-5ba560624361','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','SecurityGroups','module',90,0),('bf355c46-f8d8-515d-29fc-5ba5601a8537','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','SecurityGroups','module',90,0),('c3d8d2a6-fcd7-0756-4edc-5ba560adf509','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','SecurityGroups','module',90,0),('c83dddaa-1190-5ff6-a985-5ba560237d0c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','SecurityGroups','module',90,0),('cca2da23-3a0b-d77c-0823-5ba560a4a4a7','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','SecurityGroups','module',90,0),('d107d507-a1c8-192c-5f8e-5ba56008abd4','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','SecurityGroups','module',90,0),('e877db06-588a-c401-c25c-5ba5605eab40','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','OutboundEmailAccounts','module',89,0),('ecdcdb97-0827-70d9-df57-5ba56026d6f5','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','OutboundEmailAccounts','module',90,0),('f1805955-2953-0368-16b8-5ba56024c0f5','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','OutboundEmailAccounts','module',90,0),('1ffd0b2f-e43f-c159-22f8-5ba560c99042','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','OutboundEmailAccounts','module',90,0),('6e1d0180-80bc-9a8b-7544-5ba560b46f90','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','OutboundEmailAccounts','module',90,0),('b8550aed-41ec-c1e8-a9fb-5ba56075da00','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','OutboundEmailAccounts','module',90,0),('1028db5a-73ce-7dfe-b52a-5ba56089b2d5','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','OutboundEmailAccounts','module',90,0),('148dddac-5a58-d4fd-e399-5ba5609bcc2a','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','OutboundEmailAccounts','module',90,0),('2d365fa4-0f3c-83bd-4760-5ba560d0e979','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','TemplateSectionLine','module',89,0),('319b5255-4dc0-c6c9-4a95-5ba5609589dd','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','TemplateSectionLine','module',90,0),('360057fc-d1d1-8531-47bd-5ba56047d942','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','TemplateSectionLine','module',90,0),('3a6553a4-bf90-c7c2-d546-5ba5604da26d','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','TemplateSectionLine','module',90,0),('3e8bd0c5-1433-c1d8-ea9a-5ba560a6aeaa','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','TemplateSectionLine','module',90,0),('42b25a40-e69a-773d-e79c-5ba560b78640','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','TemplateSectionLine','module',90,0),('47945725-f9ef-4a05-de15-5ba560bf67ff','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','TemplateSectionLine','module',90,0),('4bf95c11-df7b-a178-825a-5ba560c7b22e','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','TemplateSectionLine','module',90,0),('897f5e99-d705-8c8f-cea5-5ba560ac8425','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','SurveyResponses','module',89,0),('8e615858-352d-02c7-b71f-5ba5609687f2','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','SurveyResponses','module',90,0),('92c65b90-9eb3-4e4c-3308-5ba560680ea2','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','SurveyResponses','module',90,0),('9769d0a8-0385-47d5-7deb-5ba560f77a47','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','SurveyResponses','module',90,0),('9c0d5f11-9c04-b997-94dd-5ba560aae77e','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','SurveyResponses','module',90,0),('a033d988-b413-6586-45bf-5ba5606751e4','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','SurveyResponses','module',90,0),('a45a5139-52f4-47d7-4ea7-5ba560f0e9ab','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','SurveyResponses','module',90,0),('a8bf5718-1255-ee45-5e2e-5ba560606ab1','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','SurveyResponses','module',90,0),('c3d8da9c-f763-3be4-3453-5ba5605fdffa','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','Surveys','module',89,0),('c83dd3d6-f1f8-1acf-0e05-5ba5608e936c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','Surveys','module',90,0),('cca2da37-6040-8fcc-1af8-5ba560c1ba30','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','Surveys','module',90,0),('d0c95ae2-7651-51f8-ad20-5ba56041acef','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','Surveys','module',90,0),('d52e547d-0eaa-20c2-522e-5ba560af93e5','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','Surveys','module',90,0),('d9d1d7bc-179d-1e11-a19c-5ba5604ef5e7','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','Surveys','module',90,0),('de755d1a-efc3-9e91-20b3-5ba560c1458c','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','Surveys','module',90,0),('e2da5bb7-3371-b853-62bf-5ba5609cf98a','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','Surveys','module',90,0),('ac9d0fc9-a593-33cd-146a-5ba560c76464','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','SurveyQuestionResponses','module',89,0),('f2ed014f-ddd6-4b0d-039a-5ba5608876e2','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','SurveyQuestionResponses','module',90,0),('13d250ef-f83a-0056-a258-5ba5607f5dfe','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','SurveyQuestionResponses','module',90,0),('1875dafb-e316-d593-2cb1-5ba5608afd95','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','SurveyQuestionResponses','module',90,0),('1cdadabc-0049-de5f-9b11-5ba5602139c3','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','SurveyQuestionResponses','module',90,0),('217e505b-c06a-b96f-cb35-5ba5609ef9bb','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','SurveyQuestionResponses','module',90,0),('25e355aa-0d62-6a2e-b7a8-5ba56001d2bf','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','SurveyQuestionResponses','module',90,0),('2a86d305-d671-d90e-770c-5ba560c78a7f','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','SurveyQuestionResponses','module',90,0),('45a05ea4-41dd-5866-09fb-5ba560c847dd','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','SurveyQuestions','module',89,0),('4a825bdb-289d-46d4-87e8-5ba560dde2f5','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','SurveyQuestions','module',90,0),('4ea8d172-bbe5-7867-ce50-5ba5607c8d5b','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','SurveyQuestions','module',90,0),('530dd676-b6df-f95f-8cf3-5ba560075d14','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','SurveyQuestions','module',90,0),('573451e3-9e15-789a-6528-5ba560112f26','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','SurveyQuestions','module',90,0),('5c165099-c531-7f1f-ff41-5ba5606d29ca','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','SurveyQuestions','module',90,0),('60b9d22a-e9e1-5ec6-59b9-5ba56085f705','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','SurveyQuestions','module',90,0),('651ed954-9365-806d-0731-5ba560d3326b','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','SurveyQuestions','module',90,0),('81325e2f-2af4-b186-88ff-5ba560735dfa','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','access','SurveyQuestionOptions','module',89,0),('85d5d92d-7ad1-fa1b-de83-5ba560ae8c4b','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','view','SurveyQuestionOptions','module',90,0),('8a3ada5a-ee2d-8f2b-5cd6-5ba560890b34','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','list','SurveyQuestionOptions','module',90,0),('8e9fdea2-6680-9a7d-e75f-5ba560311de2','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','edit','SurveyQuestionOptions','module',90,0),('9304d546-f1bc-bf7a-28f4-5ba560a4a5a0','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','delete','SurveyQuestionOptions','module',90,0),('9769de9d-e5a6-ce95-8d72-5ba56010f353','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','import','SurveyQuestionOptions','module',90,0),('9c0d5968-3c41-299e-ea41-5ba5606538ed','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','export','SurveyQuestionOptions','module',90,0),('a0725bf5-079b-31ce-f51c-5ba560930f1e','2018-09-21 21:19:10','2018-09-21 21:19:10','1','','massupdate','SurveyQuestionOptions','module',90,0),('c4111253-e351-7e4f-67fa-5ba573eb9b54','2018-09-21 22:40:10','2018-09-21 22:40:10','1','1','access','pat_Partenariats','module',89,0),('e15f5b22-e07f-0da9-1aff-5ba573734fcf','2018-09-21 22:40:10','2018-09-21 22:40:10','1','1','view','pat_Partenariats','module',90,0),('e7b8d5b8-cfd0-d9fd-fefd-5ba5731f619d','2018-09-21 22:40:10','2018-09-21 22:40:10','1','1','list','pat_Partenariats','module',90,0),('ed95423b-728d-73bc-0356-5ba573d143ff','2018-09-21 22:40:10','2018-09-21 22:40:10','1','1','edit','pat_Partenariats','module',90,0),('f371b535-11ea-e329-09c2-5ba57367211c','2018-09-21 22:40:10','2018-09-21 22:40:10','1','1','delete','pat_Partenariats','module',90,0),('568b0f52-b474-fd7a-3461-5ba573db525e','2018-09-21 22:40:10','2018-09-21 22:40:10','1','1','import','pat_Partenariats','module',90,0),('c3f30685-558a-3aec-8942-5ba5736661b4','2018-09-21 22:40:10','2018-09-21 22:40:10','1','1','export','pat_Partenariats','module',90,0),('11dd2ec5-ab3f-9ca6-42f6-5ba57382c97c','2018-09-21 22:40:10','2018-09-21 22:40:10','1','1','massupdate','pat_Partenariats','module',90,0),('28d1e629-0403-247a-0db1-5ba573e04488','2018-09-21 22:40:10','2018-09-21 22:40:10','1','1','access','pat_Patients','module',89,0),('2df2ce60-9e7e-c2de-00a3-5ba573be7cd3','2018-09-21 22:40:10','2018-09-21 22:40:10','1','1','view','pat_Patients','module',90,0),('32d52ecf-171c-8ab3-2a33-5ba5734e50df','2018-09-21 22:40:10','2018-09-21 22:40:10','1','1','list','pat_Patients','module',90,0),('37f61d3b-fcd7-0c01-4985-5ba57351ec58','2018-09-21 22:40:10','2018-09-21 22:40:10','1','1','edit','pat_Patients','module',90,0),('3cd871e7-3548-8ded-f69c-5ba573105e23','2018-09-21 22:40:10','2018-09-21 22:40:10','1','1','delete','pat_Patients','module',90,0),('4237d0b2-0a20-a3e2-3269-5ba573372086','2018-09-21 22:40:10','2018-09-21 22:40:10','1','1','import','pat_Patients','module',90,0),('4758ccd3-5a5a-4412-7dfc-5ba5731df4ee','2018-09-21 22:40:10','2018-09-21 22:40:10','1','1','export','pat_Patients','module',90,0),('4c79a726-6388-bc98-d4a6-5ba5734aa1ff','2018-09-21 22:40:10','2018-09-21 22:40:10','1','1','massupdate','pat_Patients','module',90,0),('538ee9ae-54ba-d6c5-5eb3-5bc0d4c24921','2018-10-12 17:07:48','2018-10-12 17:07:48','1','1','access','ent_Entrevues','module',89,0),('a74c608b-cd37-d22c-2050-5bc0d4ccfecd','2018-10-12 17:07:48','2018-10-12 17:07:48','1','1','view','ent_Entrevues','module',90,0),('b248eaa5-1408-a494-e934-5bc0d4277a4b','2018-10-12 17:07:48','2018-10-12 17:07:48','1','1','list','ent_Entrevues','module',90,0),('bc89ec68-592e-9e4a-517c-5bc0d45c4f54','2018-10-12 17:07:48','2018-10-12 17:07:48','1','1','edit','ent_Entrevues','module',90,0),('c64de1c2-8e73-451e-5014-5bc0d4e8be9a','2018-10-12 17:07:48','2018-10-12 17:07:48','1','1','delete','ent_Entrevues','module',90,0),('d050669a-c5ae-d0cd-4a23-5bc0d45f856e','2018-10-12 17:07:48','2018-10-12 17:07:48','1','1','import','ent_Entrevues','module',90,0),('dc086dcc-685c-3128-532b-5bc0d44ed82b','2018-10-12 17:07:48','2018-10-12 17:07:48','1','1','export','ent_Entrevues','module',90,0),('e6c6641e-a6ea-96e8-ccc8-5bc0d40fc838','2018-10-12 17:07:48','2018-10-12 17:07:48','1','1','massupdate','ent_Entrevues','module',90,0);
/*!40000 ALTER TABLE `acl_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles`
--

DROP TABLE IF EXISTS `acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id_del` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles`
--

LOCK TABLES `acl_roles` WRITE;
/*!40000 ALTER TABLE `acl_roles` DISABLE KEYS */;
INSERT INTO `acl_roles` VALUES ('6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','2018-09-21 21:35:39','2018-11-15 20:41:44','1','1','Recruteur',NULL,0),('9d130d73-a70f-3968-3f2d-5ba5646c12e9','2018-09-21 21:37:54','2018-11-15 20:21:40','1','1','Recruteur en chef',NULL,0);
/*!40000 ALTER TABLE `acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_actions`
--

DROP TABLE IF EXISTS `acl_roles_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_acl_role_id` (`role_id`),
  KEY `idx_acl_action_id` (`action_id`),
  KEY `idx_aclrole_action` (`role_id`,`action_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_actions`
--

LOCK TABLES `acl_roles_actions` WRITE;
/*!40000 ALTER TABLE `acl_roles_actions` DISABLE KEYS */;
INSERT INTO `acl_roles_actions` VALUES ('c4a08cd6-4836-c1ff-3aab-5ba56539a13a','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','access',89,'2018-11-15 21:22:49',0),('c4df072d-7d08-adf2-db19-5ba56554df1e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','delete',-99,'2018-11-15 21:22:49',0),('c51d9f0d-aca8-402d-96e7-5ba5655a9e7c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','edit',75,'2018-11-15 21:22:49',0),('c51d99ba-4534-0d8c-e3fb-5ba565acb161','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','export',0,'2018-11-15 21:22:49',0),('c55c1f2e-6b6c-ba5a-80f1-5ba5657f8f81','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','import',0,'2018-11-15 21:22:49',0),('c55c137a-3c0e-0a43-6f7a-5ba56546a5b4','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','list',80,'2018-11-15 21:22:49',0),('c59a961a-c7b0-567a-8e00-5ba565d7f75c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','massupdate',-99,'2018-11-15 21:22:49',0),('c59a9a0c-c38e-6693-dd45-5ba565419a6e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','view',80,'2018-11-15 21:22:49',0),('c5d91003-5191-7107-5f29-5ba565e7b5c9','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c4d2d810-93b0-e878-00b1-5ba5607941b3',89,'2018-11-15 21:22:49',0),('c5d9150d-3117-01f4-8839-5ba565e465f3','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','d954d935-73cb-b076-f595-5ba5601771f0',-99,'2018-11-15 21:22:49',0),('c61795e5-a88d-f6e6-b443-5ba565939cad','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','d3f5d509-3690-8ead-025e-5ba56071bd32',75,'2018-11-15 21:22:49',0),('c6179483-ba15-880e-a620-5ba565e7f72d','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e3d45e6d-2acc-5af3-5a38-5ba560fcc70d',0,'2018-11-15 21:22:49',0),('c65610e6-014d-1719-6fc4-5ba565793ff0','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','deb3daae-5c0e-b80f-a0f6-5ba5602ce776',0,'2018-11-15 21:22:49',0),('c6949167-a099-6966-cf58-5ba5654d6a32','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','cf13d1ca-dabd-c61c-ab5c-5ba56068104d',80,'2018-11-15 21:22:49',0),('c69495fa-f210-2aa2-285a-5ba565615178','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e8f4dc20-e5e7-f0f2-f62f-5ba5606293e9',-99,'2018-11-15 21:22:49',0),('c6d31ef7-c653-9849-6376-5ba5658c4d0a','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','ca31d48e-0c35-4043-dad9-5ba5600d6ca9',80,'2018-11-15 21:22:49',0),('c6d31702-f0b6-2db5-1ce8-5ba5655a5ed2','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','10a5dacf-39b3-bf7e-077d-5ba56075fcce',0,'2018-11-15 21:22:49',0),('c71197d5-6e1d-7dea-6040-5ba565714b90','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','21bcd215-595a-15f1-2e62-5ba560b50708',0,'2018-11-15 21:22:49',0),('c750149c-11b5-f5ba-f7ee-5ba5654ce085','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','1dd4d50d-0664-19e4-6052-5ba560efbe20',0,'2018-11-15 21:22:49',0),('c75013fb-156d-d532-1206-5ba565c4f4d2','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','2a48522d-40cb-831b-e71a-5ba560ed246c',0,'2018-11-15 21:22:49',0),('c78ea39d-f729-f912-abbb-5ba565e04373','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','25e35b61-2ae4-f429-7cf1-5ba56076089c',0,'2018-11-15 21:22:49',0),('c78ea83b-dbed-18a1-7189-5ba565c589b3','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','196fdb17-666f-a607-1241-5ba560658b45',0,'2018-11-15 21:22:49',0),('c7cd2fa4-4240-0a09-0d02-5ba565b16dca','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','2f2a57ca-355b-b18e-4a88-5ba560e06e2f',0,'2018-11-15 21:22:49',0),('c7cd2994-c099-cd70-1c50-5ba56545eccc','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','154954c6-204c-e897-6703-5ba560fd00f3',0,'2018-11-15 21:22:49',0),('c80babcd-ee16-68e6-366a-5ba56536ce12','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','3832df52-8433-1f53-2728-5ba56021ff62',0,'2018-11-15 21:22:49',0),('c80bae12-0cd4-3c2e-3e32-5ba565463e56','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4b3dd334-e0a5-8d1f-b158-5ba560ff3754',0,'2018-11-15 21:22:49',0),('c84a217d-44b2-9aa7-e50d-5ba5654bdbd7','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','465bdaa8-6459-d15d-e13e-5ba560d89c95',0,'2018-11-15 21:22:49',0),('c888a29b-7e32-e71a-4d19-5ba5659f383f','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5484d53f-95f8-6089-b98d-5ba560779292',0,'2018-11-15 21:22:49',0),('c888ad7e-e146-c819-13ed-5ba565d61bc5','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4fe15085-139d-34c6-4c4b-5ba560b3bf93',0,'2018-11-15 21:22:49',0),('c8c724b1-827d-0f48-d718-5ba56568c8ae','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','41f6d356-906a-c32b-e829-5ba5609bd049',0,'2018-11-15 21:22:49',0),('c905ac6e-f37d-1942-afe0-5ba5655dd91b','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','59285b82-1eb0-6956-4d86-5ba560fc328d',0,'2018-11-15 21:22:49',0),('c905a19b-d08e-f851-91e4-5ba565c9298d','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','3d14d3df-1b8b-87f3-db65-5ba56030d0f4',0,'2018-11-15 21:22:49',0),('c94429fe-58be-1b5e-ce33-5ba565fbfb14','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c54fdca3-86d7-fb35-85e5-5ba560537abd',0,'2018-11-15 21:22:49',0),('c94424ea-84c2-747f-f734-5ba5654a4b71','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','d7ddd0cf-9f9f-dd6f-2777-5ba5600b2e95',0,'2018-11-15 21:22:49',0),('c982a7fd-0ea0-672d-bd94-5ba565adf70c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','d33a5a9e-63c9-835a-8c34-5ba560407ca9',0,'2018-11-15 21:22:49',0),('c982a0fc-ec71-acb5-d2f3-5ba565781555','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e1635d10-8a22-76aa-1b21-5ba5607b8ca4',0,'2018-11-15 21:22:49',0),('c9c1215a-2028-2238-f9ce-5ba5654bffd7','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','dc815db8-7e3b-d373-a417-5ba560aa2542',0,'2018-11-15 21:22:49',0),('c9ffbf52-2fbc-6425-0167-5ba5651272ec','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','ced55f4d-15a8-6fc7-c9a3-5ba560df10d4',0,'2018-11-15 21:22:49',0),('c9ffb4f1-515f-6b55-eb2c-5ba5651c7b4f','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e5c8539a-4c6b-1120-520a-5ba560f3eb64',0,'2018-11-15 21:22:49',0),('ca3e3ae4-ce54-0e95-6e84-5ba5652b72dd','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','ca31de80-0cce-5f3a-04c4-5ba56047985b',0,'2018-11-15 21:22:49',0),('ca3e3451-f38e-1e93-9896-5ba565e0d43d','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','83a353fc-26d1-bfe9-5aff-5ba560b4050e',0,'2018-11-15 21:22:49',0),('ca7cb7d8-81f7-7b79-8f19-5ba5652ad7b7','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','94f8d9ed-9789-e283-c57b-5ba56019ad47',0,'2018-11-15 21:22:49',0),('ca7cbda9-30d4-7dcd-8997-5ba5658c7fb5','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','905554b2-5518-068a-37b4-5ba56059535f',0,'2018-11-15 21:22:49',0),('cabb3af9-b2aa-c071-cb66-5ba565693856','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','9dc2da8d-13bb-ce95-4a23-5ba5609880f5',0,'2018-11-15 21:22:49',0),('caf9b7a6-765b-72ae-fae3-5ba565ba01ae','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','995dd21e-5047-b68a-c182-5ba5603ca281',0,'2018-11-15 21:22:49',0),('caf9b2b1-9368-80b6-b541-5ba565680c9d','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8c2ed712-f4d7-79a1-87b3-5ba5602f92ed',0,'2018-11-15 21:22:49',0),('cb3830ad-9311-af71-059a-5ba5657651ee','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','a2665079-c558-4993-1738-5ba56014e604',0,'2018-11-15 21:22:49',0),('cb383c73-5208-cf77-6c16-5ba5652213ef','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','87c9db39-2d74-8e67-8f04-5ba560da5e44',0,'2018-11-15 21:22:49',0),('cb76b975-3b43-e22b-a53b-5ba565530226','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','40be56f5-46d0-fb57-369f-5ba560733469',0,'2018-11-15 21:22:49',0),('cb76b060-dec4-ef42-66be-5ba56532e4ba','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','530ddf23-521c-433a-5331-5ba5605f7dcc',0,'2018-11-15 21:22:49',0),('cb76ba1a-7eb9-b501-40c5-5ba565c30af4','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4ea8dcd2-43fe-59e9-ca03-5ba5602a5da6',0,'2018-11-15 21:22:49',0),('cbb53236-abdc-6a36-8d53-5ba565b5b990','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5bd7d975-2998-4d11-9961-5ba560e79658',0,'2018-11-15 21:22:49',0),('cbb535d3-dbf2-c058-120a-5ba5653d6b28','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5772d282-4254-00d6-a59f-5ba560cfcdcb',0,'2018-11-15 21:22:49',0),('cbf3b068-57d5-c289-f0f2-5ba565129235','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','49c6d979-82b0-dcd2-da7a-5ba5608f6840',0,'2018-11-15 21:22:49',0),('cbf3b25f-d6be-47a7-52ea-5ba565a03ad2','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','603cd62f-c6b1-256a-4410-5ba560e45964',0,'2018-11-15 21:22:49',0),('cc323561-c985-11bd-2157-5ba5650dad6f','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4561d625-d886-f7b5-6bf0-5ba560cf941e',0,'2018-11-15 21:22:49',0),('cc3234ba-49af-887a-2830-5ba56599454e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','da4edb64-4057-79ec-4451-5ba560b2ee0f',0,'2018-11-15 21:22:49',0),('cc70c1be-079f-c65b-17c0-5ba565f7767b','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','ee1556f2-e599-47d8-488b-5ba560f5d88c',0,'2018-11-15 21:22:49',0),('cc70c450-ee3b-2e9a-eed1-5ba5652cc0c7','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e933511d-1c04-b633-1473-5ba5608a2c73',0,'2018-11-15 21:22:49',0),('ccaf43a0-93fb-3a5f-46aa-5ba565e1c77b','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','3f3c02dd-7ffb-9cfe-cddc-5ba560ec2f95',0,'2018-11-15 21:22:49',0),('ccaf480c-baf6-e309-3046-5ba5659681c1','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','f335daf0-3354-6b77-ae7f-5ba5605811ee',0,'2018-11-15 21:22:49',0),('ccedca11-4b3c-18bb-51cb-5ba565a6b6f2','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e4ce5d85-f09e-513c-6c28-5ba560a2f5ec',0,'2018-11-15 21:22:49',0),('cd2c46d8-2624-d2ff-d216-5ba565414a51','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','858d0450-2d94-1676-d91f-5ba5607186e0',0,'2018-11-15 21:22:49',0),('cd2c4b35-a80b-ae2f-044f-5ba565cbda82','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','dfadd537-b0bc-caa8-0f98-5ba560543f37',0,'2018-11-15 21:22:49',0),('cd6accf0-4611-1b36-4c0c-5ba565d39096','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','2527d12f-e982-87c8-daf1-5ba56062f4f7',0,'2018-11-15 21:22:49',0),('cd6ac50d-7afd-f054-53f3-5ba56542d73b','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','37f454e5-c8fc-239b-766d-5ba560f41373',0,'2018-11-15 21:22:49',0),('cda94054-5ab9-10a7-e1c2-5ba5656ab8f4','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','3350debf-6c70-a12d-cbc0-5ba56022d530',0,'2018-11-15 21:22:49',0),('cda94c55-1297-88ab-56e3-5ba5652e259f','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','407fdef6-a485-8de6-68ef-5ba560d14ffa',0,'2018-11-15 21:22:49',0),('cde7c3e9-a9d2-b555-efc7-5ba56529359f','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','3bdc564e-fce2-3445-f7d5-5ba560d089e4',0,'2018-11-15 21:22:49',0),('ce26411f-79e8-ef07-db22-5ba5657c27ec','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','2eebd065-ab24-f461-3879-5ba560f70173',0,'2018-11-15 21:22:49',0),('ce26418f-133f-2ee3-c0c0-5ba56518ad46','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','45a0509b-07a2-2c91-e725-5ba5604ebf42',0,'2018-11-15 21:22:49',0),('ce64cf75-fd5b-37b6-ce76-5ba565e135ea','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','2a09df0b-8501-890b-403e-5ba56092e025',0,'2018-11-15 21:22:49',0),('ce64c336-9b81-f769-0c4b-5ba56578564b','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','efcad147-2243-4fde-bc59-5ba560715dfc',0,'2018-11-15 21:22:49',0),('cea349d1-ae51-168f-fc15-5ba565b6a95b','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','d3ad08a0-3613-e5b7-0efb-5ba560ac910e',0,'2018-11-15 21:22:49',0),('cee1d784-9098-fbc3-716b-5ba56585e08a','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8d5d09c3-3ea3-9771-6fd7-5ba560b1289d',0,'2018-11-15 21:22:49',0),('cee1d22f-4bf4-155f-c4ad-5ba5653fc765','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','164351b6-2c99-6385-04af-5ba560b8cb0b',0,'2018-11-15 21:22:49',0),('cf205d54-c93b-f4a5-477b-5ba565b8e5de','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','11de554d-febf-ac8a-858f-5ba560ec20f3',0,'2018-11-15 21:22:49',0),('cf205a1c-860d-af4f-e972-5ba5659dcbcf','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4af50f1f-8bfd-013c-4794-5ba5608c97a1',0,'2018-11-15 21:22:49',0),('cf5ede05-75fa-25ef-fb89-5ba5653759c5','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','1ae6deea-e02f-3285-6faa-5ba560417bd5',0,'2018-11-15 21:22:49',0),('cf5edcf5-e2e6-a347-c790-5ba56542a6e9','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4a500438-87f0-e7ea-f832-5ba560a5b33d',0,'2018-11-15 21:22:49',0),('cf9d5810-0392-7fde-4e8d-5ba565d0abd2','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','7ec15446-c190-9701-fa7e-5ba560d7f30a',0,'2018-11-15 21:22:49',0),('cf9d5149-15b6-1c5a-6c3c-5ba565022b8a','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','9287d457-1431-c1da-8e39-5ba56001e68e',0,'2018-11-15 21:22:49',0),('cfdbdce7-7de2-4660-d681-5ba565e08d3b','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8d675264-51de-fb27-cd7d-5ba560fabd83',0,'2018-11-15 21:22:49',0),('cfdbd218-ecd0-6c95-638c-5ba565ea6804','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','9c4bda7d-4792-db7a-bbbe-5ba5604186ad',0,'2018-11-15 21:22:49',0),('d01a5937-4815-29e0-678c-5ba5650fdb0b','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','9769db31-1d18-d34d-4a49-5ba560efca0a',0,'2018-11-15 21:22:49',0),('d01a5042-985a-38f9-e6d0-5ba5651ebb22','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8846d1dd-5094-111e-552c-5ba56026644f',0,'2018-11-15 21:22:49',0),('d058d2c1-7fbc-520a-4280-5ba565fcbb22','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','a0b0d215-ccf7-78a8-b354-5ba5608fae90',0,'2018-11-15 21:22:49',0),('d058d14f-0af8-9954-336c-5ba565653d71','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','83a35f6a-08c5-0ef9-2c13-5ba560e50f82',0,'2018-11-15 21:22:49',0),('d058dc56-1897-a23c-750b-5ba565cb538d','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','2db35cda-029a-594d-2932-5ba560b8ecd5',0,'2018-11-15 21:22:49',0),('d0975ac8-927e-53b2-1ab5-5ba565474a44','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','42b25ecd-61bf-b879-331b-5ba560294da9',0,'2018-11-15 21:22:49',0),('d09754fd-2bc1-8ea9-3ded-5ba565774277','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','3e0edff6-014e-caf0-6294-5ba560321b97',0,'2018-11-15 21:22:49',0),('d0d5dfb7-9cf9-e522-133d-5ba565dcbcf6','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4b3dd428-4acd-d597-4148-5ba5602844e4',0,'2018-11-15 21:22:49',0),('d0d5d737-d5c1-98ca-5403-5ba565a189ae','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','47175cac-55bb-4390-9ce7-5ba560633a24',0,'2018-11-15 21:22:49',0),('d1145322-2289-222c-af3d-5ba565d9642e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','3832d7b8-8162-a997-809c-5ba560b263f9',0,'2018-11-15 21:22:49',0),('d1145879-5422-d8e3-2178-5ba56586b3a7','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4fa2dbc4-b740-b690-234a-5ba560cdf7dc',0,'2018-11-15 21:22:49',0),('d152e19d-504e-9b1b-0fad-5ba565506544','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','33125005-f4d3-548e-9a24-5ba56051d967',0,'2018-11-15 21:22:49',0),('d152e143-9714-e708-0a08-5ba565565998','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','52cf513b-e5f8-d690-162f-5ba560ee953f',0,'2018-11-15 21:22:49',0),('d1916a83-6be8-8ef1-5cc1-5ba565f39d25','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','64a1d70a-8c58-7a83-c2aa-5ba560e8d085',0,'2018-11-15 21:22:49',0),('d19167b4-3ade-c46d-9ff7-5ba56536872c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','607b50fb-298a-c1e2-b5cd-5ba56030f97b',0,'2018-11-15 21:22:49',0),('d1cfef46-cf95-d7f3-574e-5ba5657b11cc','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','6d2d54be-b8dc-87c1-bbcb-5ba5600c1b6a',0,'2018-11-15 21:22:49',0),('d20e66e7-01ae-b53b-6a2f-5ba565df1dc5','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','6906d662-2dcf-8c5f-0f48-5ba560d48873',0,'2018-11-15 21:22:49',0),('d20e65c4-2fd1-1317-c294-5ba565a0fe10','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5c16595e-e4da-f2ec-469b-5ba5608923d5',0,'2018-11-15 21:22:49',0),('d24ce649-15d8-442d-8c37-5ba565ee7bf0','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','7153dd16-c411-8075-995c-5ba56039072d',0,'2018-11-15 21:22:49',0),('d28b660f-8f3c-79d0-daba-5ba565ce7a55','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5772d38c-9823-68db-4b16-5ba5602755a4',0,'2018-11-15 21:22:49',0),('d28b6479-1f8d-3a92-2c91-5ba565e40f8d','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4d31db16-dd0f-434e-016b-5ba560c32350',0,'2018-11-15 21:22:49',0),('d2c9e21f-cf5f-dcf0-0c91-5ba56581340e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5f8158b2-dfae-4cfc-c034-5ba56073eb3c',0,'2018-11-15 21:22:49',0),('d2c9e1d7-5aad-9a48-b093-5ba5650ce07a','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5b1c535e-b214-de34-7c05-5ba5602c79ea',0,'2018-11-15 21:22:49',0),('d30867b4-d063-2e22-b861-5ba565a78aee','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','6889d250-5767-796d-9cfa-5ba560197ca6',0,'2018-11-15 21:22:49',0),('d30862fd-9227-a679-90fb-5ba565f24e59','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','63e65f5e-7c4e-0aba-f645-5ba560e74ed7',0,'2018-11-15 21:22:49',0),('d346e3df-b8d6-1d9f-7134-5ba565487a17','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','563a5d8a-d2d0-8835-fc53-5ba5608c2492',0,'2018-11-15 21:22:49',0),('d346e03b-fde0-7fbc-705c-5ba565e27920','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','6cb05205-352e-0f80-7fbb-5ba5608e9d25',0,'2018-11-15 21:22:49',0),('d38566ff-ebc7-6641-7462-5ba565251f2a','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5196daa5-403e-c1a0-1332-5ba560be266d',0,'2018-11-15 21:22:49',0),('d3856b42-c705-a23c-7f06-5ba565e3a4e7','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','51d551cb-9d05-889b-088f-5ba560d5966f',0,'2018-11-15 21:22:49',0),('d3c3f1ad-faf7-c15e-d5d6-5ba565df114e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','64e05ce0-2c11-b0c2-9f8f-5ba56056ea19',0,'2018-11-15 21:22:49',0),('d3c3fd32-5b54-abfd-d344-5ba565916584','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5ffe5a96-6e44-dcec-f8cd-5ba560ea1dc0',0,'2018-11-15 21:22:49',0),('d4027a45-7e8f-6767-4b54-5ba565fc4932','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','6de8d16d-fc40-3ca6-569b-5ba560d45311',0,'2018-11-15 21:22:49',0),('d4027e6c-7722-fafc-5051-5ba56518c659','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','69455a68-a8bc-1c21-9a70-5ba56035a5e2',0,'2018-11-15 21:22:49',0),('d440f027-e5a1-64b3-d555-5ba565475e44','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5b5ad081-1d77-9467-98fd-5ba560f12461',0,'2018-11-15 21:22:49',0),('d47f7e95-9744-e912-1ac0-5ba565f89313','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','720f5ef5-b2d7-b108-9013-5ba560195c3a',0,'2018-11-15 21:22:49',0),('d47f7df4-59ea-fbdb-824f-5ba565152b57','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','56b75388-7eff-2bc8-fe41-5ba56043eab9',0,'2018-11-15 21:22:49',0),('d4bdf35c-b676-87ea-e16a-5ba565b4cc8e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','ed59d83e-acbb-08a6-00e1-5ba560034463',0,'2018-11-15 21:22:49',0),('d4bdf1a9-c8c2-baaa-41c2-5ba56510c7a7','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e34d0f4c-993a-ee97-b58f-5ba560896a9f',0,'2018-11-15 21:22:49',0),('d4fc7982-e2bb-292a-6a14-5ba565a9f061','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8d5d05df-2b15-9a9e-35b3-5ba56014c123',0,'2018-11-15 21:22:49',0),('d53afc18-8cf6-3e82-97af-5ba565dd980d','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','18b45e01-51f7-4c10-934a-5ba560eac563',0,'2018-11-15 21:22:49',0),('d53af820-e37a-0325-0798-5ba565b6fbe0','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','13d25090-53fd-5fb3-51ee-5ba560980d4e',0,'2018-11-15 21:22:49',0),('d57977a9-8c17-c167-efa8-5ba56575b8cb','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','3f3c0cb6-624a-549a-b916-5ba560f365f6',0,'2018-11-15 21:22:49',0),('d5b7f177-e8d8-cd75-b39a-5ba5654b02aa','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','1d965140-4c62-6f71-9722-5ba5600ee65e',0,'2018-11-15 21:22:49',0),('d5b7f81f-e699-d018-dcfa-5ba5659c66e1','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','f2b8d981-45e8-5384-ac88-5ba56072e5e3',0,'2018-11-15 21:22:49',0),('d5f67bae-f9ba-bc56-e2ec-5ba565e5a43e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e7350a0f-27a7-8222-957b-5ba56039fb2f',0,'2018-11-15 21:22:49',0),('d6350a79-149b-e54f-959a-5ba565c16c15','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','21015821-2eb1-910d-24af-5ba560ac37ab',0,'2018-11-15 21:22:49',0),('d6350418-fc72-4a8e-008d-5ba565e282b8','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','1c9c58c4-c6f8-9d3a-6e5d-5ba56044cf58',0,'2018-11-15 21:22:49',0),('d67383e1-192a-810c-5c99-5ba565f526ff','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','2a86d999-a2ff-84fd-17d0-5ba56078868c',0,'2018-11-15 21:22:49',0),('d6b20c06-0f17-a780-1475-5ba5654e25fb','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','25a4d645-28f2-fefd-2bde-5ba5600c5910',0,'2018-11-15 21:22:49',0),('d6b200b4-3212-5253-7b2b-5ba565ce4f3f','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','17ba5c3e-abbe-5ee7-6828-5ba560a8d6d7',0,'2018-11-15 21:22:49',0),('d6f0892a-2d8b-62f3-6a10-5ba565efd993','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','2f2a5bcd-97e7-a5bf-9bd2-5ba560dcbdbb',0,'2018-11-15 21:22:49',0),('d72f0ce2-ea3c-f0d2-6ad6-5ba5655c1873','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','1355517e-1ce3-9bea-0f6f-5ba560bd2526',0,'2018-11-15 21:22:49',0),('d76d8195-e91f-d799-e35c-5ba56509bf52','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','db0a5cb3-1431-ac92-854a-5ba56090f4ff',0,'2018-11-15 21:22:49',0),('d76d8893-feeb-d2dd-3c5c-5ba565e78cba','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','ed59d0c1-e588-2071-322c-5ba560a582b1',0,'2018-11-15 21:22:49',0),('d7ac0103-248a-82ed-c808-5ba565248e63','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e8b65223-fbc7-3e49-7724-5ba560364f53',0,'2018-11-15 21:22:49',0),('d7ea8d2d-db95-8d17-0925-5ba565a2a3f0','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','1c150fd7-6447-7ee8-7ed8-5ba560d629da',0,'2018-11-15 21:22:49',0),('d7ea8c6c-2e83-0004-2e4d-5ba565f68055','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','f1bed219-5727-1531-4bf6-5ba56031fb7a',0,'2018-11-15 21:22:49',0),('d829081d-5dff-73d6-8fb6-5ba565da70f1','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e4515bbd-c36c-d521-26fb-5ba5603db520',0,'2018-11-15 21:22:49',0),('d8678d10-facb-18dd-c94c-5ba565af73d3','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','6a35011b-0744-81d1-e230-5ba56001b39d',0,'2018-11-15 21:22:49',0),('d8678850-a7ae-bb4f-9003-5ba565b95a36','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','dfec5072-c0f3-9b2e-9306-5ba560fe8450',0,'2018-11-15 21:22:49',0),('d8a61446-9f2f-9135-d435-5ba5652d7cb0','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','9c4bdc12-06a9-c597-9922-5ba5603ed1c6',0,'2018-11-15 21:22:49',0),('d8e49eb4-33b7-1ed7-0180-5ba565d2f104','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','af56dd8b-a664-724e-6982-5ba5601b879e',0,'2018-11-15 21:22:49',0),('d8e495e2-f3f5-803d-7a8b-5ba565a1b667','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','aa74da46-88eb-6d6c-f48a-5ba560530c0f',0,'2018-11-15 21:22:49',0),('d9231fd8-ae28-eb88-abad-5ba565ba2d71','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','b91ad5d4-c281-730c-50de-5ba560212a1f',0,'2018-11-15 21:22:49',0),('d96197c3-5e0c-8e9f-7ff6-5ba56520960e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','b438d646-3e92-f7a4-879e-5ba560c702da',0,'2018-11-15 21:22:49',0),('d961952d-001a-4952-ec55-5ba5653217d8','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','a5d15774-9597-53ff-8330-5ba5602e5698',0,'2018-11-15 21:22:49',0),('d9a01a96-0246-94e6-56a1-5ba5657043d4','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','be3b5d36-959d-65ad-8278-5ba560b6c023',0,'2018-11-15 21:22:49',0),('d9de90aa-dd3b-3ac7-bea4-5ba565e2e0c6','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','a0ef58fb-b4b0-6849-aaa6-5ba560f31c82',0,'2018-11-15 21:22:49',0),('d9de9eb4-141d-58c5-074f-5ba565adf307','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','60f85c24-9ab7-5420-c1ff-5ba5604e8166',0,'2018-11-15 21:22:49',0),('da1d1840-2acd-a30d-9e55-5ba565fb56c3','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','72cada86-2b30-aa74-5de3-5ba5602125ee',0,'2018-11-15 21:22:49',0),('da5b9dce-eeb3-a8f5-3e8a-5ba56545ba96','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','6e65dc28-8380-22ec-a930-5ba56016febc',0,'2018-11-15 21:22:49',0),('da9a1fd3-20b5-896d-80fa-5ba565b2f10d','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','7c11d2d0-8a2c-b7a4-9185-5ba560a0759c',0,'2018-11-15 21:22:49',0),('da9a13f0-4490-4ce9-942f-5ba56589c77c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','776e5ba9-c397-e3a9-70bc-5ba5608a32fd',0,'2018-11-15 21:22:49',0),('dad8910c-2694-c24a-fac1-5ba565333370','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','69c255e5-3452-450a-9d60-5ba560ba98d4',0,'2018-11-15 21:22:49',0),('db172b32-2348-4335-cca0-5ba565f9bc09','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','80f3d7d3-7204-a817-73ae-5ba56068c87f',0,'2018-11-15 21:22:49',0),('db17297c-b9f3-353c-1e7b-5ba565478d4e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','655d5b76-ae8b-631a-9f8c-5ba560a22faf',0,'2018-11-15 21:22:49',0),('db55ad2c-e99c-fbf6-e1c0-5ba565b0e82c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','70985ff2-9c11-6099-af08-5ba560c164f6',0,'2018-11-15 21:22:49',0),('db942900-ea46-30de-e4cf-5ba5657406a6','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','81edd490-f40e-18ec-f6f4-5ba56092646b',0,'2018-11-15 21:22:49',0),('db9425dd-ff09-6de8-ec96-5ba5653e8ce8','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','7d88d87e-8d76-dc39-701f-5ba5600ef5f2',0,'2018-11-15 21:22:49',0),('dbd2a025-65d2-9229-4e5d-5ba565cbd4bf','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8af65d73-6c50-9f83-cf7a-5ba560581de1',0,'2018-11-15 21:22:49',0),('dc112eba-8c08-4833-695c-5ba565285839','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','86915950-632d-a35f-d9af-5ba560d098a8',0,'2018-11-15 21:22:49',0),('dc112727-aecd-d339-53c6-5ba565ffd209','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','79625e7e-103f-a927-f44b-5ba560abba1a',0,'2018-11-15 21:22:49',0),('dc4fa63a-5a43-1b66-25dc-5ba565737327','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8f5b5f73-ec71-055b-d6c7-5ba560563ccc',0,'2018-11-15 21:22:49',0),('dc4fa755-520d-b505-aab4-5ba56552e485','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','753bd5d5-685e-7ae8-2a41-5ba560f5077e',0,'2018-11-15 21:22:49',0),('dc8e22c4-4104-3c8b-8c1c-5ba565fb1600','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','3d535f39-4f9c-08af-f5d4-5ba56090154d',0,'2018-11-15 21:22:49',0),('dcccadc0-b245-69d8-409f-5ba565dd1198','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4f25db19-f95b-6b60-f264-5ba560458c3f',0,'2018-11-15 21:22:49',0),('dcccaaba-3680-4a03-043a-5ba5654088a3','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4a825989-137c-184d-7fad-5ba560e333da',0,'2018-11-15 21:22:49',0),('dd0b2f32-3963-fa71-656d-5ba565028b41','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','57efd3c0-de90-c209-a8b2-5ba560912632',0,'2018-11-15 21:22:49',0),('dd49ab70-5a91-6887-c593-5ba5653eb761','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','538ad202-729c-4408-1255-5ba5600f9b8b',0,'2018-11-15 21:22:49',0),('dd49a842-2a6e-580f-b543-5ba565adc05b','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','461d5205-6fcf-5ae0-7bc9-5ba560c4d5cf',0,'2018-11-15 21:22:49',0),('dd883b3e-c592-eb18-b41b-5ba565c8397c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5c935081-b152-6711-46af-5ba560231a2a',0,'2018-11-15 21:22:49',0),('ddc6b0a9-5cf9-35be-d94a-5ba565aa3d84','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','41b85946-0cdd-8900-c180-5ba5603fcc4e',0,'2018-11-15 21:22:49',0),('ddc6b278-5ec5-39d8-68d0-5ba565960596','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','78685a5d-8b98-ce28-07f9-5ba5606f4ba6',0,'2018-11-15 21:22:49',0),('de053e6c-69e0-64ac-42ce-5ba5653ccb68','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','89fc5ef3-bcde-add7-12d9-5ba560a7eb44',0,'2018-11-15 21:22:49',0),('de43b034-4db1-2885-adec-5ba565b313f7','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8558d4ce-1524-a98c-a987-5ba56063acfc',0,'2018-11-15 21:22:49',0),('de823385-e5e7-1953-ce5f-5ba56569de30','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','92c6547c-ff34-2ea8-da27-5ba560c1be14',0,'2018-11-15 21:22:49',0),('de823131-cefe-b65b-b2be-5ba5658c7274','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8e6159c6-5bc9-26be-9136-5ba5603aa83f',0,'2018-11-15 21:22:49',0),('dec0b30b-b9ba-58f9-8fb4-5ba565175ea4','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8132544a-f253-b804-0e79-5ba560494bbb',0,'2018-11-15 21:22:49',0),('deff3b69-a92b-48ec-720a-5ba5658e959b','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','9769d630-b5e4-9d02-6a4b-5ba560657044',0,'2018-11-15 21:22:49',0),('df3db2fa-ad76-8170-00d4-5ba5657ce44c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','7c8ed5fd-eb70-00be-2481-5ba5605663ee',0,'2018-11-15 21:22:49',0),('df3db742-7203-bab8-8ce1-5ba5655f6a81','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','9381d6cd-6635-68a6-6540-5ba5608314b4',0,'2018-11-15 21:22:49',0),('df7c3ec5-6fd8-e8ae-4ea4-5ba56513b4bb','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c3d8d5fe-8f18-0bc4-46ae-5ba5602d76ff',0,'2018-11-15 21:22:49',0),('dfbab0eb-205f-bb1a-3976-5ba565c937c4','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','bef6dcac-0d18-9309-ccd1-5ba56066f4dd',0,'2018-11-15 21:22:49',0),('dfbabdf8-2b94-85fb-2565-5ba5653114b9','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','cca2dfa6-4ea6-8e0b-2015-5ba56031f517',0,'2018-11-15 21:22:49',0),('dff946a8-618c-b9e5-9653-5ba565acfa74','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c83dd518-3b4c-2a09-0887-5ba560c74124',0,'2018-11-15 21:22:49',0),('e037cc10-6a4e-292c-bde8-5ba5654bfdbc','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','b9d65a34-c04d-c7b7-33a2-5ba560f26a8a',0,'2018-11-15 21:22:49',0),('e037cb06-8db9-2f9a-2c23-5ba565ac431c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','d1465e27-8aaa-3618-7a6f-5ba5609770b8',0,'2018-11-15 21:22:49',0),('e0764a49-7bb8-cf7f-dfba-5ba5655bd4f3','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','b4b5d127-08f3-6e65-8cf0-5ba560c253e2',0,'2018-11-15 21:22:49',0),('e0b4c105-5fa7-94c0-503c-5ba565058499','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','22f550c2-99b8-67a4-1d3b-5ba560c9cbbf',0,'2018-11-15 21:22:49',0),('e0f348f8-a81c-93ae-bdf4-5ba5651eddce','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','35c1d93c-f4b8-8b4d-3600-5ba560fa62e6',0,'2018-11-15 21:22:49',0),('e0f34f01-ce3b-a5c5-a185-5ba565c39248','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','311e5af5-650b-c717-6676-5ba560d7f5a3',0,'2018-11-15 21:22:49',0),('e131c570-f4c1-8b08-a8e7-5ba56546b520','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','3e8bdb98-8dad-1ebc-8087-5ba5605b7857',0,'2018-11-15 21:22:49',0),('e1704290-8f20-2bc9-b36f-5ba565143599','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','3a26d62b-de3b-2b13-46cc-5ba5601e127a',0,'2018-11-15 21:22:49',0),('e1aeced9-27d8-4c91-38f5-5ba565b09bdc','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','2c3c5e31-199d-612a-85c8-5ba5603f8d86',0,'2018-11-15 21:22:49',0),('e1aecd31-5459-d7f1-d9eb-5ba565a9d2aa','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','436dd7af-b6ff-068c-297d-5ba560cb38a0',0,'2018-11-15 21:22:49',0),('e1ed4d61-f2ef-ba12-52d9-5ba565db4643','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','2798d20c-2b10-bbf4-3a8a-5ba56046e909',0,'2018-11-15 21:22:49',0),('e22bcb58-c898-2c9f-44bd-5ba5651d7d0e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','81325950-b34a-3d4e-986d-5ba560c6012d',0,'2018-11-15 21:22:49',0),('e26a5c83-fb8c-6996-c554-5ba565be2277','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','9381d83c-0eef-f482-c276-5ba5608683d1',0,'2018-11-15 21:22:49',0),('e26a59cd-41d9-c78b-e640-5ba5651b6016','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8ede5e63-23ea-c236-8c61-5ba56091ad72',0,'2018-11-15 21:22:49',0),('e2a8d9dc-6339-2149-afe0-5ba565804bb3','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','9c8a5c28-7d4e-0ced-5585-5ba56042d553',0,'2018-11-15 21:22:49',0),('e2e75f9b-11e8-26ca-2fde-5ba565c5b373','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','98255d86-6597-168a-6eae-5ba560c80bc2',0,'2018-11-15 21:22:49',0),('e325d995-7b51-74bd-5659-5ba565af14e8','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8a79570b-2d5a-ab4f-1924-5ba560d475d6',0,'2018-11-15 21:22:49',0),('e325d208-327f-8a8c-c4f3-5ba565460d97','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','a0b0d279-5d83-a77d-4c38-5ba560305154',0,'2018-11-15 21:22:49',0),('e36450a8-914a-93a2-0c6c-5ba5653b5868','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','86145310-351a-4936-e8c3-5ba56070a34b',0,'2018-11-15 21:22:49',0),('e3a2d9ef-aeac-4198-2e99-5ba5655c2d86','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','47d2db9b-1bf8-7c2f-f92f-5ba56003b488',0,'2018-11-15 21:22:49',0),('e3e15bcf-99bd-1ec0-3451-5ba56507420c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','59a55531-2d18-d6bb-f84b-5ba5603bdd8e',0,'2018-11-15 21:22:49',0),('e3e15101-27fb-52d9-ac56-5ba565f7bd93','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5501d15d-81a7-6eb4-bf7a-5ba560e2000f',0,'2018-11-15 21:22:49',0),('e41fd6eb-2e9f-92ee-94ad-5ba565bb70e9','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','62addd25-263a-5a17-799d-5ba56001114c',0,'2018-11-15 21:22:49',0),('e45e5028-8337-b2fd-6888-5ba565521a19','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5e48d006-875b-8fd1-7248-5ba5608cd59f',0,'2018-11-15 21:22:49',0),('e45e5618-2638-cddd-386c-5ba565a3e9ca','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','50db5ac0-9d27-d582-16ce-5ba5603e7d3c',0,'2018-11-15 21:22:49',0),('e49cd75a-2927-aed5-8f8f-5ba565e8315b','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','67515fbd-2afd-6c45-7b8c-5ba5602203f8',0,'2018-11-15 21:22:49',0),('e4db6af9-6fa9-53d8-d536-5ba56593b6f3','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4cb4dee6-149e-ba5c-0314-5ba560b1f9cc',0,'2018-11-15 21:22:49',0),('e519e364-125e-b3c3-3d94-5ba565046507','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','b08502cd-1114-356c-cbfe-5ba56020cf0c',0,'2018-11-15 21:22:49',0),('e519e062-e6c3-d772-265e-5ba565adf201','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','1d96595f-4dbe-4fe9-f030-5ba56056ef10',0,'2018-11-15 21:22:49',0),('e55869ac-5860-98f7-2eee-5ba565e93185','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','18f2db45-6a70-419b-e20e-5ba560bdca5c',0,'2018-11-15 21:22:49',0),('e596e182-a16a-600d-26db-5ba565c67108','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','26dd5c74-b763-796d-4781-5ba5609c3ceb',0,'2018-11-15 21:22:49',0),('e5d567eb-de9d-0018-8ef8-5ba565740135','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','2239d84e-fa1b-bd1b-ab76-5ba5608f9ec6',0,'2018-11-15 21:22:49',0),('e5d56ad6-22a3-da7d-eca1-5ba56568fb62','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','1410d777-4045-538e-5001-5ba5607dedc9',0,'2018-11-15 21:22:49',0),('e613e65c-18cd-8fd1-fd26-5ba565811a19','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','2b42540c-b5db-7b05-1f56-5ba560f30b85',0,'2018-11-15 21:22:49',0),('e652638d-8966-d1f9-33e8-5ba56512fe96','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','fabc0102-e50a-a32b-1324-5ba56040e15a',0,'2018-11-15 21:22:49',0),('e690e626-80ec-9170-faf2-5ba5655729e2','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c2235ab3-0f10-0102-d025-5ba5600a3fb0',0,'2018-11-15 21:22:49',0),('e690e1c8-2d91-17d9-b8de-5ba5651572bb','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','d3b75b61-adfe-26c4-1e6c-5ba560736135',0,'2018-11-15 21:22:49',0),('e6cf6f76-ec79-2e24-f8c8-5ba565c76c2b','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','cf90dd7d-a9d3-b7fa-daf5-5ba560946aae',0,'2018-11-15 21:22:49',0),('e70de8d5-0cc5-42a1-3887-5ba56551f768','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','dc42d0cf-5197-1a12-9d88-5ba560cc63bd',0,'2018-11-15 21:22:49',0),('e70deeac-95ca-cf49-cadc-5ba5652c7c26','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','d81c5c77-8850-ec43-b183-5ba560fac96b',0,'2018-11-15 21:22:49',0),('e74c7b6b-f9d7-8ca4-df81-5ba565b4bed1','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','cb2bd12d-0645-f687-3cf9-5ba560a8076f',0,'2018-11-15 21:22:49',0),('e78af827-ad8b-ea01-c9fc-5ba565ecc9d5','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e0a7df9a-8567-acb1-108e-5ba560e8a31b',0,'2018-11-15 21:22:49',0),('e7c97b56-2083-af95-753c-5ba565769e30','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c6885801-3f5b-4f74-9440-5ba5603b2c0b',0,'2018-11-15 21:22:49',0),('e807f52e-a647-aabd-321d-5ba5657afff9','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','49c6dcff-ef8c-784e-b182-5ba56030ed3d',0,'2018-11-15 21:22:49',0),('e807f1c2-595c-99e2-6083-5ba56525d585','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5b5ad3c7-4fa9-7d39-4fa9-5ba560224882',0,'2018-11-15 21:22:49',0),('e8467e97-9bf3-858e-d4e6-5ba56505d311','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','56f5d69d-1fdb-56d9-e816-5ba5600564af',0,'2018-11-15 21:22:49',0),('e84673e2-1ac1-993b-5936-5ba565870574','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','63e65f8a-0770-a8b6-c084-5ba560c7e61d',0,'2018-11-15 21:22:49',0),('e884fb57-5208-153a-9663-5ba565f8c6c6','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5f815dfc-42ee-38b6-131c-5ba560701742',0,'2018-11-15 21:22:49',0),('e884f1ea-fe46-dfed-b1e8-5ba56581afbd','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5290d332-a322-d121-555d-5ba560be8732',0,'2018-11-15 21:22:49',0),('e8c376c3-7c86-389b-9343-5ba565429bfd','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','684b586a-4090-20c8-2fd3-5ba560a6ed02',0,'2018-11-15 21:22:49',0),('e8c37c22-27ff-0ec0-9238-5ba565d8eaab','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4e2bd2e8-7678-0a7e-24f3-5ba56083cfac',0,'2018-11-15 21:22:49',0),('e901fbda-995f-c5e9-6554-5ba565fb0c8d','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','897f5a0d-7936-b6e5-2431-5ba5607511df',0,'2018-11-15 21:22:49',0),('e901fa16-dfe8-a32a-81d4-5ba565fa12ab','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','9c0d5b6c-424c-8dce-3707-5ba560626f36',0,'2018-11-15 21:22:49',0),('e9407c57-4bf3-0a54-f658-5ba5655cae71','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','97a85641-7f53-bf4d-7f21-5ba5600af628',0,'2018-11-15 21:22:49',0),('e97efabe-b763-9646-b5c5-5ba5658f24ae','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','a5d1583d-2f82-7812-0fe7-5ba5605b5207',0,'2018-11-15 21:22:49',0),('e97efd76-0e91-0632-9181-5ba565541970','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','a12dd91e-3859-0405-4023-5ba56099e249',0,'2018-11-15 21:22:49',0),('e9bd8641-f756-e86e-8ed2-5ba5652ac66b','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','934357bb-de26-2537-c98c-5ba560df3b1d',0,'2018-11-15 21:22:49',0),('e9bd8af1-56fb-e0a2-571d-5ba5658a761b','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','aa365402-b036-b222-f620-5ba560f80d13',0,'2018-11-15 21:22:49',0),('e9fc07cd-f72e-ec63-e309-5ba565289752','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8e9fd640-0417-e8b7-f589-5ba560f20f44',0,'2018-11-15 21:22:49',0),('ea3a898e-ce42-588b-fb01-5ba56528b485','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','148dd6c5-4501-3ee2-c225-5ba5606c1eff',0,'2018-11-15 21:22:49',0),('ea790b22-a9e7-2f3e-105a-5ba5654e429f','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','26605f29-745b-4179-58b0-5ba560791d7d',0,'2018-11-15 21:22:49',0),('ea7907f9-b9fb-d7da-72f2-5ba56516fbef','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','21fb57a3-0611-5dfb-1eda-5ba5605c9796',0,'2018-11-15 21:22:49',0),('eab783fa-98f7-3537-6160-5ba565e695db','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','30245824-5924-ad1f-d5be-5ba560b8277c',0,'2018-11-15 21:22:49',0),('eaf6049e-e6f4-4f13-ee5a-5ba565397afd','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','2b425eee-26c3-6843-4161-5ba560313599',0,'2018-11-15 21:22:49',0),('eb348b7f-01ad-1121-60a2-5ba5655cc36a','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','1e1350fb-e5c7-3947-bd1a-5ba560440b80',0,'2018-11-15 21:22:49',0),('eb34862a-d732-8c75-dfdd-5ba565c347c7','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','34c7ddb5-424a-3113-92c6-5ba560518976',0,'2018-11-15 21:22:49',0),('eb730610-3964-864e-cff5-5ba5652d2563','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','196fdb17-e4a2-ee29-2821-5ba560869412',0,'2018-11-15 21:22:49',0),('ebb18002-27ad-28fb-37b4-5ba56565277c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e877db06-588a-c401-c25c-5ba5605eab40',0,'2018-11-15 21:22:49',0),('ebb185ba-85ce-9516-b2c7-5ba56578a6c5','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','6e1d0180-80bc-9a8b-7544-5ba560b46f90',0,'2018-11-15 21:22:49',0),('ebf00677-965b-48e2-a849-5ba5659a7dd2','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','1ffd0b2f-e43f-c159-22f8-5ba560c99042',0,'2018-11-15 21:22:49',0),('ebf00043-5411-3849-7c83-5ba565f17710','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','1028db5a-73ce-7dfe-b52a-5ba56089b2d5',0,'2018-11-15 21:22:49',0),('ec2e9653-4c17-4e50-c653-5ba565d4fdde','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','b8550aed-41ec-c1e8-a9fb-5ba56075da00',0,'2018-11-15 21:22:49',0),('ec2e9b9f-0407-1ec6-91d2-5ba565195b08','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','f1805955-2953-0368-16b8-5ba56024c0f5',0,'2018-11-15 21:22:49',0),('ec6d1d70-3c53-b7ec-b753-5ba56565396a','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','148dddac-5a58-d4fd-e399-5ba5609bcc2a',0,'2018-11-15 21:22:49',0),('ecab9ebd-1cc7-6083-3b1f-5ba565ef257a','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','ecdcdb97-0827-70d9-df57-5ba56026d6f5',0,'2018-11-15 21:22:49',0),('ecea14d2-f2c8-8bd6-47e2-5ba56592644f','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','addfd4aa-0e39-6457-5dc0-5ba5604e442c',0,'2018-11-15 21:22:49',0),('ecea1560-a39c-30e8-52ba-5ba56542c3c9','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','bfb252ca-c809-9f22-1838-5ba560353860',0,'2018-11-15 21:22:49',0),('ed2892be-55b1-0e0d-c75f-5ba565557822','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','bb4d5137-ef31-d684-359a-5ba560efa439',0,'2018-11-15 21:22:49',0),('ed67182b-a4e4-0c2b-0a87-5ba5656570b2','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c8badc9c-c039-5adb-5ccc-5ba56095d1a9',0,'2018-11-15 21:22:49',0),('eda596a2-3b66-cf19-6651-5ba56533cb51','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c455d60f-723c-f4a0-1875-5ba560155a34',0,'2018-11-15 21:22:49',0),('eda59dae-2cc0-181a-fa3c-5ba565a3724e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','b6e857e5-05bc-d9ce-b23b-5ba560f7bee9',0,'2018-11-15 21:22:49',0),('ede41716-7519-51c1-8dcf-5ba56569f625','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','cce15df4-04e9-6a64-12de-5ba560384f9e',0,'2018-11-15 21:22:49',0),('ee229213-30b8-a30b-97a4-5ba56553eea3','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','b2835ca8-4159-77c0-362a-5ba56020abe2',0,'2018-11-15 21:22:49',0),('ee611f1c-55d6-6d05-b77e-5ba565f6fcb4','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','3544d4d0-dde8-5b7c-1ce9-5ba5604af2d5',0,'2018-11-15 21:22:49',0),('ee61120a-dd86-f267-70d0-5ba5654fe8dc','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','47175889-f919-6656-e49f-5ba560ca3750',0,'2018-11-15 21:22:49',0),('ee9fa242-fa29-f3c7-9ac1-5ba5652e9984','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','42b25ad3-f6da-13cb-816f-5ba560f9c4ff',0,'2018-11-15 21:22:49',0),('eede2940-7cac-695d-3b41-5ba5653193b5','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4fa2d403-438b-438b-bd25-5ba5604f7b31',0,'2018-11-15 21:22:49',0),('ef1cac1a-01d0-d836-d552-5ba565bbbe47','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4aff530b-182c-81eb-b4d6-5ba560876c3c',0,'2018-11-15 21:22:49',0),('ef5b28e7-c1c9-4b5d-b9c4-5ba565edacad','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','3e0edc46-5001-c43a-86b8-5ba560239f90',0,'2018-11-15 21:22:49',0),('ef99aae5-aefd-f6f1-6915-5ba565ac0ac1','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','544650bf-2d26-4991-57f6-5ba5608cdc27',0,'2018-11-15 21:22:49',0),('ef99a570-b31c-9ee9-95c9-5ba565f76f26','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','39e850a4-234e-71d8-45ea-5ba560338e8c',0,'2018-11-15 21:22:49',0),('efd82a80-76ec-0fc5-d1e1-5ba565b4869e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','338f5a97-d633-0c5d-6fa7-5ba56047cdfb',0,'2018-11-15 21:22:49',0),('f016a0ae-0cca-ab02-2277-5ba56525635a','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','45a059ab-2f52-ab82-5cb8-5ba560fbbb05',0,'2018-11-15 21:22:49',0),('f05528a9-ae9a-2621-0709-5ba565b07f60','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','413b5536-b4c6-285c-0433-5ba560966bb3',0,'2018-11-15 21:22:49',0),('f093a6eb-c3fc-a4c3-a4c9-5ba5653e4d90','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4e6a57ac-6ecb-7c07-bb73-5ba5607301a2',0,'2018-11-15 21:22:49',0),('f0d22247-e34a-9f0d-1307-5ba565e79c99','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4a43d8cf-2ce9-39ac-e800-5ba560ec0ce0',0,'2018-11-15 21:22:49',0),('f0d22502-5d0e-2167-c522-5ba5658f3962','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','3c97d1d7-5dac-13e9-370e-5ba5605b414a',0,'2018-11-15 21:22:49',0),('f110ba62-407c-f385-3aca-5ba5655beaa1','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','530dd0dc-2b75-71f4-74f3-5ba560e54fee',0,'2018-11-15 21:22:49',0),('f14f34a9-da83-6e18-b7ce-5ba565c19ecd','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','3832d55c-5340-e569-4ea5-5ba56024c855',0,'2018-11-15 21:22:49',0),('f14f37f9-c5a9-2e04-13e1-5ba565dc1411','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','eaaa593e-b2e0-745b-50ba-5ba5602b7233',0,'2018-11-15 21:22:49',0),('f18db7fa-5332-094b-2684-5ba565682299','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8975094f-c2c7-3148-0ac7-5ba560b7aff3',0,'2018-11-15 21:22:49',0),('f1cc3f5b-7d5a-78ec-fe72-5ba5659dc89d','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','43250dc5-1a96-8e18-8975-5ba5603473db',0,'2018-11-15 21:22:49',0),('f1cc3af9-91d9-19d6-bcda-5ba565169ab3','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','119fd8bb-cba4-266b-458f-5ba560661d3c',0,'2018-11-15 21:22:49',0),('f20ab4ac-bed2-1b9e-73e7-5ba56535a4e7','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','cfc50c3e-6bc2-03af-2f54-5ba560028cf3',0,'2018-11-15 21:22:49',0),('f2493172-f539-cc7f-9047-5ba5652b0f3e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','bd000da8-3324-84f2-9b09-5ba560de62ca',0,'2018-11-15 21:22:49',0),('f287bba9-0985-4fd8-ea86-5ba565c70271','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','16435f4b-8236-537d-36f6-5ba560aec1eb',0,'2018-11-15 21:22:49',0),('f287b91d-bc5b-b8bc-38a5-5ba565970b30','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','ef8c5eb7-121d-40ca-c561-5ba5608654ef',0,'2018-11-15 21:22:49',0),('f2c63bd4-2fb0-3ee5-4410-5ba5653e9387','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e0a7d212-cc6d-cdab-0f01-5ba5609788f7',0,'2018-11-15 21:22:49',0),('f304b0e6-13d2-6269-5abf-5ba56522df17','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','f1bed56e-c3f7-e3a5-ca99-5ba560318fb7',0,'2018-11-15 21:22:49',0),('f3433fe0-6ee7-057c-f6e8-5ba56568eef4','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','ed9855f4-6709-dd83-ea9a-5ba5605a70ae',0,'2018-11-15 21:22:49',0),('f381ceca-251c-838e-94dc-5ba565d1bb38','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5e7d0588-7e26-e535-5898-5ba560479de1',0,'2018-11-15 21:22:49',0),('f3c04f3c-efec-af91-0085-5ba565590abf','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','1c150a1f-5375-bfb7-0b5c-5ba560034aed',0,'2018-11-15 21:22:49',0),('f3c04dac-af52-b896-d878-5ba565e90c84','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e9335d25-906d-7ca8-1ca5-5ba560cc48db',0,'2018-11-15 21:22:49',0),('f3fec724-4cf8-cb16-d6e0-5ba56501c7b6','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','a4cd0720-d3e0-a2fc-9fc1-5ba56020642b',0,'2018-11-15 21:22:49',0),('194005e9-19a7-4a6b-0c7f-5ba56508f5a9','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e50cdc5a-0643-ece7-92dd-5ba560331069',0,'2018-11-15 21:22:49',0),('57c007c1-0b31-3d4f-5482-5ba565f42fa8','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','33850e7b-0543-0f4d-1f3e-5ba560e6be93',0,'2018-11-15 21:22:49',0),('964003e1-5f4d-8ae3-eaa8-5ba565687733','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','15c6545d-ac4c-d867-44d6-5ba56035cf40',0,'2018-11-15 21:22:49',0),('9640072d-6f22-1806-4bc5-5ba5653468f1','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','10e4553d-56e8-73e7-fdc0-5ba560a9157d',0,'2018-11-15 21:22:49',0),('d4c001d5-7200-a495-a251-5ba565646608','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','1f4bdd49-b84d-efed-69e7-5ba5609c188a',0,'2018-11-15 21:22:49',0),('11340286-a387-5632-cb56-5ba5652235f3','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','1a69dad4-6f75-4817-2645-5ba5601e7a7d',0,'2018-11-15 21:22:49',0),('151c02c7-a825-69c4-0a87-5ba565ae1ff3','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c40d0655-7d73-668b-0079-5ba560be55a7',0,'2018-11-15 21:22:49',0),('151c06ba-622a-9807-2738-5ba565468b6c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','242dd503-7c45-86ad-8659-5ba560708c24',0,'2018-11-15 21:22:49',0),('19040302-ade9-1b5d-4479-5ba5656341f8','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','7dbd030e-83e9-46c6-050b-5ba560942606',0,'2018-11-15 21:22:49',0),('1ced01d8-1709-65fb-0294-5ba565fd850e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','bff0d409-2019-8c0f-bb40-5ba56084f010',0,'2018-11-15 21:22:49',0),('20d50547-aa29-fff5-58e4-5ba5659d377f','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','d1c35210-9779-cd70-f11a-5ba560f73bc6',0,'2018-11-15 21:22:49',0),('20d50f9e-6b5f-0480-f1de-5ba565af5dcb','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','cd5e5080-0626-7ed8-c7c3-5ba5602ab434',0,'2018-11-15 21:22:49',0),('24bd06a6-1c2a-450c-7e60-5ba56591e81e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','db0a5c2a-e9bb-ab5e-73af-5ba560848618',0,'2018-11-15 21:22:49',0),('28a50081-3353-edef-454a-5ba5654d3e8a','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','d666de34-8b75-8c51-d6aa-5ba560313577',0,'2018-11-15 21:22:49',0),('2c8d05fb-7314-aa8a-ef4d-5ba5658b661f','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c8f95fc4-3082-2cd2-ad7d-5ba560635b1e',0,'2018-11-15 21:22:49',0),('3075060b-71dd-ca42-89f2-5ba5650b658d','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e02ad153-a77d-7761-1678-5ba560b57799',0,'2018-11-15 21:22:49',0),('3075005c-ff2f-98ed-334e-5ba56532f430','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c455d6ce-f955-b0a4-b27c-5ba5607ee44f',0,'2018-11-15 21:22:49',0),('345d0346-6932-a966-fe6d-5ba565bd487c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','a60fd9ad-3343-8630-b87a-5ba560744cf5',0,'2018-11-15 21:22:49',0),('38450946-b2fd-208c-7bd1-5ba565425c67','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','b7a3d619-27f3-351a-8fde-5ba560783537',0,'2018-11-15 21:22:49',0),('3c2d0dc0-d3fb-4f72-51bd-5ba5651e6cee','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','b33eda66-6ed9-9db4-00b0-5ba560b1f0f2',0,'2018-11-15 21:22:49',0),('3c2d0a18-c449-705c-d523-5ba565813c43','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c02f56f5-11af-993a-92f4-5ba560c51bb8',0,'2018-11-15 21:22:49',0),('40150db5-f295-2d6f-5f44-5ba56533dd26','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','bbca5963-fc43-bc26-e746-5ba5607e9e8f',0,'2018-11-15 21:22:49',0),('43fe023b-84f5-47f0-c44d-5ba565eb64ea','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','aed9de02-cbfa-0da0-382a-5ba560f1c331',0,'2018-11-15 21:22:49',0),('47e60c47-eff5-1f73-b98d-5ba5659d0bc5','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c455db85-d903-ff16-2de3-5ba5604b3e04',0,'2018-11-15 21:22:49',0),('4bce01d0-a001-edb2-7049-5ba565bdd5c1','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','aa365358-29d3-72cb-f146-5ba56060fc07',0,'2018-11-15 21:22:49',0),('4fb60d4e-615f-a98e-a723-5ba565a03000','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','a786d264-a383-9754-b1a1-5ba560583863',0,'2018-11-15 21:22:49',0),('539e0005-bf04-c55c-463d-5ba565bf98a7','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','bad059a7-0d4e-84a4-7592-5ba56097c9de',0,'2018-11-15 21:22:49',0),('539e0ade-6f43-b65e-b521-5ba565e5b3c3','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','b66b584a-aeca-2335-aef7-5ba5606aac11',0,'2018-11-15 21:22:49',0),('5786012d-f393-49fe-a81a-5ba565e42333','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c39a5eb4-4e5f-4425-da15-5ba56029e497',0,'2018-11-15 21:22:49',0),('5b6e092e-62b3-eabd-4be9-5ba565a0c4d0','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','bf35503c-d8cd-9b61-42da-5ba560c64610',0,'2018-11-15 21:22:49',0),('5f56044d-0033-1e6a-97df-5ba565165363','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','b1c7d5c0-696b-d995-f714-5ba560a71063',0,'2018-11-15 21:22:49',0),('633e079c-dd80-2239-a2c5-5ba5655701d7','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c87c5586-9e0c-e1bc-b4a3-5ba560ca7d88',0,'2018-11-15 21:22:49',0),('67260816-680a-c3f6-0130-5ba565ad8913','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','ace5dee4-fd45-84f1-9332-5ba5602954c4',0,'2018-11-15 21:22:49',0),('672601da-ef65-a6bc-506b-5ba565564495','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','680cdd46-ee05-411f-981b-5ba5607027ca',0,'2018-11-15 21:22:49',0),('6b0f09a4-777a-5847-6395-5ba565e296ab','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','7a1dd1cd-47c1-4f1c-7691-5ba560d635af',0,'2018-11-15 21:22:49',0),('6ef7027d-c5ea-e63a-5bee-5ba565e3981c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','75b8dc34-20c9-e5a8-5093-5ba5606a09ec',0,'2018-11-15 21:22:49',0),('72df0735-b8fe-c918-d812-5ba56588969e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','82e7da1b-c6af-8608-b7d0-5ba560f77f96',0,'2018-11-15 21:22:49',0),('76c705aa-2b44-b577-1467-5ba56571c334','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','7e82df30-3af8-b4bb-ba33-5ba560fb35ac',0,'2018-11-15 21:22:49',0),('7aae0f24-95aa-f642-e94f-5ba56535627a','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','7153d287-163a-7c62-cd5c-5ba560039452',0,'2018-11-15 21:22:49',0),('7aae00ab-287e-32b3-ae6c-5ba565f3fc83','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','874cd5d0-334f-a401-7ba1-5ba5602f3247',0,'2018-11-15 21:22:49',0),('7e97014c-eb3c-d5a0-3e21-5ba56584fae5','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','6c71da37-c80b-b05e-ba52-5ba560841e9c',0,'2018-11-15 21:22:49',0),('827f02c7-3ae2-838d-5394-5ba565d33ab9','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e3575796-8c4a-7b39-6f9a-5ba560ee2b3d',0,'2018-11-15 21:22:49',0),('8667075e-2ad2-50f5-04a1-5ba565243b8c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','182d0dd3-0ad2-60b0-a8fb-5ba5601de484',0,'2018-11-15 21:22:49',0),('8a4f0bbf-d4e0-1539-f039-5ba56554ec1c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','f141da32-71f6-528c-49c6-5ba560df60ad',0,'2018-11-15 21:22:49',0),('8a4f0d93-8f06-4caa-76e6-5ba5656f8ec8','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','a4cd0712-89e6-cbd0-4087-5ba5603ee1e1',0,'2018-11-15 21:22:49',0),('8e3702ea-6eae-c658-a8bb-5ba5659e408e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5e7d0017-1614-8d28-510c-5ba560991219',0,'2018-11-15 21:22:49',0),('92200061-984d-e6bb-0e4a-5ba565fd3350','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','ec9e52b9-a6cd-ed19-5982-5ba56048bdc2',0,'2018-11-15 21:22:49',0),('96080607-50a6-4056-d7d3-5ba565084e6b','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','ef05092f-b4a4-b9af-ced0-5ba560630f74',0,'2018-11-15 21:22:49',0),('99f00ca1-d091-108f-1dd9-5ba565a2dcca','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e7fadd8b-dd62-c328-6258-5ba560e97ea1',0,'2018-11-15 21:22:49',0),('9dd80821-07cb-3505-d018-5ba565dfc972','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','b2835a6b-69b7-6755-dabb-5ba56089bfdf',-98,'2018-11-15 21:22:49',0),('a1c002e7-dcd0-6387-886e-5ba565f54204','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c3d8d2a6-fcd7-0756-4edc-5ba560adf509',0,'2018-11-15 21:22:49',0),('a1c00785-f390-47ce-eb1e-5ba565327950','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','bf355c46-f8d8-515d-29fc-5ba5601a8537',0,'2018-11-15 21:22:49',0),('a5a801d0-4c1e-b9f6-b1da-5ba565260294','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','cca2da23-3a0b-d77c-0823-5ba560a4a4a7',0,'2018-11-15 21:22:49',0),('a9900fa5-c3c5-8f0b-d144-5ba565f51fd4','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c83dddaa-1190-5ff6-a985-5ba560237d0c',0,'2018-11-15 21:22:49',0),('ad780caf-9552-2050-1c4f-5ba565dde79c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','bb0eda93-8c40-86e1-7ad4-5ba560624361',0,'2018-11-15 21:22:49',0),('b1600966-4a8a-ff60-8d61-5ba565cd0123','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','d107d507-a1c8-192c-5f8e-5ba56008abd4',0,'2018-11-15 21:22:49',0),('b16004de-6d84-9a66-d45b-5ba565845158','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','b6e8570a-fd1f-d4f5-4f89-5ba5601d76cb',0,'2018-11-15 21:22:49',0),('b5480d8f-16be-af6c-9579-5ba565e96660','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e73f5b1a-c845-ac26-db22-5ba5601d52f1',0,'2018-11-15 21:22:49',0),('b9310bf2-de73-aba1-2a17-5ba5659c9177','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5a95018e-f01d-8805-0c78-5ba5609e0717',0,'2018-11-15 21:22:49',0),('bd190d8a-b885-2e61-19a2-5ba56503d15f','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','105d04e6-fb91-7cb3-c925-5ba560bfe1c6',0,'2018-11-15 21:22:49',0),('c1010afd-7d87-2375-94dd-5ba565d67f24','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e7350a3b-2cf1-d0d0-8e5b-5ba560994d19',0,'2018-11-15 21:22:49',0),('c4e902a8-d444-9995-94fe-5ba565215529','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','a0e50eb5-c52e-4e85-c17c-5ba560c865c3',0,'2018-11-15 21:22:49',0),('c4e90200-88a0-631c-20b0-5ba5658bc565','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','f0865143-ad50-0577-8003-5ba560b9e5eb',0,'2018-11-15 21:22:49',0),('c8d108ad-eec4-1962-0e39-5ba565f91790','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','12d851ed-5bcb-4dd5-97d9-5ba560c93821',0,'2018-11-15 21:22:49',0),('ccb902ad-8d8c-8daf-e31c-5ba5651461f2','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','ebe2d47d-949a-347e-2a2a-5ba56026cd5b',0,'2018-11-15 21:22:49',0),('ccb907ea-58c2-2e78-8fcd-5ba565cdeb97','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','81325e2f-2af4-b186-88ff-5ba560735dfa',0,'2018-11-15 21:22:49',0),('d0a1019d-5c24-6f58-2dcf-5ba565390afc','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','9304d546-f1bc-bf7a-28f4-5ba560a4a5a0',0,'2018-11-15 21:22:49',0),('d0a10891-6d93-176c-7057-5ba5657ea403','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8e9fdea2-6680-9a7d-e75f-5ba560311de2',0,'2018-11-15 21:22:49',0),('d48908b7-5eca-406a-f4a2-5ba56539d6d6','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','9c0d5968-3c41-299e-ea41-5ba5606538ed',0,'2018-11-15 21:22:49',0),('d8710b65-e2ed-aca0-742d-5ba5654f9a51','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','9769de9d-e5a6-ce95-8d72-5ba56010f353',0,'2018-11-15 21:22:49',0),('d8710ae5-f410-98a9-aa0d-5ba5651ecae5','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8a3ada5a-ee2d-8f2b-5cd6-5ba560890b34',0,'2018-11-15 21:22:49',0),('dc59081e-7e2d-19e4-7770-5ba565187fe9','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','a0725bf5-079b-31ce-f51c-5ba560930f1e',0,'2018-11-15 21:22:49',0),('e04209e5-bbab-3351-0ea5-5ba565d9cec2','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','85d5d92d-7ad1-fa1b-de83-5ba560ae8c4b',0,'2018-11-15 21:22:49',0),('e42a0d06-5c17-06d7-2d0b-5ba5652ec513','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','ac9d0fc9-a593-33cd-146a-5ba560c76464',0,'2018-11-15 21:22:49',0),('e42a02ba-59ed-aeda-adf9-5ba565a6e59c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','1cdadabc-0049-de5f-9b11-5ba5602139c3',0,'2018-11-15 21:22:49',0),('e8120f61-215f-fc89-04d6-5ba5650c37ab','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','1875dafb-e316-d593-2cb1-5ba5608afd95',0,'2018-11-15 21:22:49',0),('ebfa0763-d90e-b23c-e02f-5ba565708a11','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','25e355aa-0d62-6a2e-b7a8-5ba56001d2bf',0,'2018-11-15 21:22:49',0),('efe2000b-3310-6ee7-c272-5ba5656c6173','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','217e505b-c06a-b96f-cb35-5ba5609ef9bb',0,'2018-11-15 21:22:49',0),('f3ca0435-103e-cbce-6e67-5ba5652a2cea','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','13d250ef-f83a-0056-a258-5ba5607f5dfe',0,'2018-11-15 21:22:49',0),('f7b10cc2-1d82-c70f-1413-5ba5652bab90','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','2a86d305-d671-d90e-770c-5ba560c78a7f',0,'2018-11-15 21:22:49',0),('fb9902ad-7b95-52ca-b59e-5ba565801337','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','f2ed014f-ddd6-4b0d-039a-5ba5608876e2',0,'2018-11-15 21:22:49',0),('fb99019d-5189-347b-17c0-5ba565e2845c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','45a05ea4-41dd-5866-09fb-5ba560c847dd',0,'2018-11-15 21:22:49',0),('ff810660-fb25-9fd7-7a9c-5ba565252600','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','573451e3-9e15-789a-6528-5ba560112f26',0,'2018-11-15 21:22:49',0),('1036ad08-7c6a-0448-7f2d-5ba5657c5c35','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','530dd676-b6df-f95f-8cf3-5ba560075d14',0,'2018-11-15 21:22:49',0),('1036a5da-031d-c148-cefc-5ba5650c9dee','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','60b9d22a-e9e1-5ec6-59b9-5ba56085f705',0,'2018-11-15 21:22:49',0),('10753d27-c493-d002-8cdc-5ba565be11a3','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','5c165099-c531-7f1f-ff41-5ba5606d29ca',0,'2018-11-15 21:22:49',0),('10b3b3dd-5437-90cb-4eae-5ba565709373','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4ea8d172-bbe5-7867-ce50-5ba5607c8d5b',0,'2018-11-15 21:22:49',0),('10b3b999-7f00-c1df-04da-5ba565629512','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','651ed954-9365-806d-0731-5ba560d3326b',0,'2018-11-15 21:22:49',0),('10f23728-481b-5d43-5321-5ba565e2419a','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4a825bdb-289d-46d4-87e8-5ba560dde2f5',0,'2018-11-15 21:22:49',0),('1130bd55-7a01-a4e8-ceac-5ba565e3d957','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','897f5e99-d705-8c8f-cea5-5ba560ac8425',0,'2018-11-15 21:22:49',0),('116f31ce-b5d8-e3eb-d5bf-5ba565c25bf7','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','9c0d5f11-9c04-b997-94dd-5ba560aae77e',0,'2018-11-15 21:22:49',0),('11adb00e-85a0-fade-2f1a-5ba565dd69c7','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','9769d0a8-0385-47d5-7deb-5ba560f77a47',0,'2018-11-15 21:22:49',0),('11adbc8f-d32b-0c06-973e-5ba565cc1a12','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','a45a5139-52f4-47d7-4ea7-5ba560f0e9ab',0,'2018-11-15 21:22:49',0),('11ec3728-fbd0-fbc8-2948-5ba56591bb15','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','a033d988-b413-6586-45bf-5ba5606751e4',0,'2018-11-15 21:22:49',0),('122ab130-199c-fb0f-c178-5ba565f3e3f0','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','92c65b90-9eb3-4e4c-3308-5ba560680ea2',0,'2018-11-15 21:22:49',0),('122ab492-1d29-cb7e-e6a1-5ba565964baa','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','a8bf5718-1255-ee45-5e2e-5ba560606ab1',0,'2018-11-15 21:22:49',0),('1269309d-5d17-3732-c47e-5ba565bb38b5','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8e615858-352d-02c7-b71f-5ba5609687f2',0,'2018-11-15 21:22:49',0),('12693696-03b9-9292-bfd1-5ba565bc7d8e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c3d8da9c-f763-3be4-3453-5ba5605fdffa',0,'2018-11-15 21:22:49',0),('12a7b683-f2c6-38d5-8562-5ba5656d04f8','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','d52e547d-0eaa-20c2-522e-5ba560af93e5',0,'2018-11-15 21:22:49',0),('12a7b03f-dbee-b36e-d4e4-5ba56528e7f8','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','d0c95ae2-7651-51f8-ad20-5ba56041acef',0,'2018-11-15 21:22:49',0),('12e646f8-7625-f28f-0e73-5ba565df0659','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','de755d1a-efc3-9e91-20b3-5ba560c1458c',0,'2018-11-15 21:22:49',0),('12e64cee-2030-6939-8789-5ba565a9aee1','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','d9d1d7bc-179d-1e11-a19c-5ba5604ef5e7',0,'2018-11-15 21:22:49',0),('1324c29a-66b8-b986-b354-5ba5656c33ad','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','cca2da37-6040-8fcc-1af8-5ba560c1ba30',0,'2018-11-15 21:22:49',0),('1324c769-963f-32fd-8d61-5ba5655526c0','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e2da5bb7-3371-b853-62bf-5ba5609cf98a',0,'2018-11-15 21:22:49',0),('13634409-9db2-242c-796d-5ba565235aeb','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c83dd3d6-f1f8-1acf-0e05-5ba5608e936c',0,'2018-11-15 21:22:49',0),('13a1c2a6-3d51-30a0-577f-5ba565d6d159','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','b571519e-5a1c-b5e2-87ef-5ba5609af23a',0,'2018-11-15 21:22:49',0),('13a1c8d9-3821-9593-2b34-5ba5658472e3','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c87c5f87-95ee-d54d-6fb8-5ba560c69a17',0,'2018-11-15 21:22:49',0),('13e04b82-ec4c-67ef-d58d-5ba56561fdd0','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c39a5018-cbe8-6f14-cd40-5ba560fe95eb',0,'2018-11-15 21:22:49',0),('13e04a56-3506-b50d-cc5e-5ba565041d4c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','d240570e-cc57-ea27-aaa7-5ba56036614c',0,'2018-11-15 21:22:49',0),('141ecaff-3369-df83-6dbc-5ba565d8b05a','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','cd5e5075-aabc-1446-b6f4-5ba5607e2be4',0,'2018-11-15 21:22:49',0),('141ecc96-2f36-f3f9-3b44-5ba565cbea9e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','be79daa8-1735-c5ed-a388-5ba560c79f2b',0,'2018-11-15 21:22:49',0),('145d402a-95f0-e654-fb14-5ba565d15263','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','d760d352-1afe-43c4-a2b9-5ba560c30911',0,'2018-11-15 21:22:49',0),('149bc160-fe75-1ed0-51a6-5ba565c9063e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','b9d65938-6822-7ce3-df87-5ba560918d7a',0,'2018-11-15 21:22:49',0),('149bc5de-e9b8-8c4e-cb3a-5ba56508c1b3','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','7a9ad655-9559-1d7a-4de5-5ba560f46f8b',0,'2018-11-15 21:22:49',0),('14da4ae9-319b-95a5-37e9-5ba56580195b','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8d6755f0-8f67-3cd6-1547-5ba560e702fb',0,'2018-11-15 21:22:49',0),('14da40bc-1791-bc04-96eb-5ba5651df16f','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','888551a9-f89d-421f-8713-5ba560301950',0,'2018-11-15 21:22:49',0),('1518c443-60cd-133c-d08a-5ba565ba26d5','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','972b5b1b-4512-977d-228b-5ba560dc9e56',0,'2018-11-15 21:22:49',0),('1518c3fc-bd8d-bfaf-f867-5ba565d21ee7','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','92495633-8c3c-ac11-3682-5ba5603f0c05',0,'2018-11-15 21:22:49',0),('15575f40-b1d4-d19f-2e14-5ba565d10bdd','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','84205924-7f97-42fe-4d62-5ba5606d9b35',0,'2018-11-15 21:22:49',0),('1557524d-7e59-bab1-e27c-5ba565a8a517','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','9c4bda06-c474-29c3-18c0-5ba56085c972',0,'2018-11-15 21:22:49',0),('1595da0c-47fa-7b99-a863-5ba565bbfd4f','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','7f7cde83-a345-1594-534c-5ba56053afaf',0,'2018-11-15 21:22:49',0),('15d45e98-cc6f-9391-a3c6-5ba5653c0b31','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','7effd9aa-7f2e-3afd-f031-5ba560d74735',0,'2018-11-15 21:22:49',0),('15d4576f-891c-7974-8cd7-5ba565eda5b3','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','9093d6fa-c126-4193-7d66-5ba5601aa07a',0,'2018-11-15 21:22:49',0),('1612d4d1-9ae9-a611-6959-5ba565d35706','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8c2eda0f-626a-c5fa-3c9f-5ba5601ea948',0,'2018-11-15 21:22:49',0),('1612ddbb-7b29-e1ed-c93c-5ba5654b12b9','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','99dad990-b01f-524b-bd5e-5ba5605e8b07',0,'2018-11-15 21:22:49',0),('16515fc0-2009-54cd-89af-5ba565a5d0e8','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','95375439-990a-ce8e-386f-5ba5605a60da',0,'2018-11-15 21:22:49',0),('16515708-ea28-1758-120c-5ba5652ad01d','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','87c9d69c-71b2-3044-2729-5ba5602645d3',0,'2018-11-15 21:22:49',0),('168fd2d8-84d1-92f9-4246-5ba56574ac23','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','9e3fd76e-dd2d-156f-b40f-5ba56079eace',0,'2018-11-15 21:22:49',0),('168fd135-76b1-c474-b609-5ba565200967','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','8364dbda-92d3-21a1-bfac-5ba560e4c9e9',0,'2018-11-15 21:22:49',0),('16ce5db7-a981-5dd1-1f94-5ba56588cac7','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','2d365fa4-0f3c-83bd-4760-5ba560d0e979',0,'2018-11-15 21:22:49',0),('170cd943-e44e-0583-06b5-5ba5659010ea','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','3e8bd0c5-1433-c1d8-ea9a-5ba560a6aeaa',0,'2018-11-15 21:22:49',0),('170cd70f-3ad8-d0b7-a5e4-5ba565630a45','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','3a6553a4-bf90-c7c2-d546-5ba5604da26d',0,'2018-11-15 21:22:49',0),('174b5036-4653-2f34-7292-5ba565f5e42c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','47945725-f9ef-4a05-de15-5ba560bf67ff',0,'2018-11-15 21:22:49',0),('174b5158-79bd-4a6b-0cb7-5ba5651a92cc','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','42b25a40-e69a-773d-e79c-5ba560b78640',0,'2018-11-15 21:22:49',0),('1789d751-ba1b-42c1-3b34-5ba5658d867b','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','360057fc-d1d1-8531-47bd-5ba56047d942',0,'2018-11-15 21:22:49',0),('1789dad4-a1a6-0e2d-4751-5ba5659aa9c7','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4bf95c11-df7b-a178-825a-5ba560c7b22e',0,'2018-11-15 21:22:49',0),('17c86be7-73fc-2246-8a54-5ba565c7b08c','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','319b5255-4dc0-c6c9-4a95-5ba5609589dd',0,'2018-11-15 21:22:49',0),('1806ee21-b005-c56a-33f6-5ba56530ca79','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','edd6d0d3-672d-908b-51c1-5ba560aeb17b',0,'2018-11-15 21:22:49',0),('1806eb8f-39af-853a-7564-5ba5654c679f','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','b8550284-d20d-d469-0acd-5ba5605d2a5f',0,'2018-11-15 21:22:49',0),('18456010-fdbc-667c-a8a8-5ba565fb6c4b','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','72050d04-8083-beaf-b05e-5ba56019bd06',0,'2018-11-15 21:22:49',0),('18456697-8454-fe3f-f981-5ba565d986e0','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','148dd6ec-ad97-88af-f4c4-5ba560972eab',0,'2018-11-15 21:22:49',0),('1883ea12-f5fe-465f-cead-5ba565236005','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','fea50746-29ce-0216-e5a6-5ba5605e154e',0,'2018-11-15 21:22:49',0),('18c2655a-90a9-507d-a9be-5ba5654339d9','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','2bb506ed-c189-6f40-54fb-5ba560c25fdb',0,'2018-11-15 21:22:49',0),('18c26ce3-6f03-7b76-2191-5ba565274175','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','193154b6-a400-8e23-427e-5ba560d283cf',0,'2018-11-15 21:22:49',0),('1900e5aa-fb74-b3f7-6f41-5ba56543c0c0','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','f23bdfdc-c338-2df1-6ae7-5ba5600bfd84',0,'2018-11-15 21:22:49',0),('c493c7c3-483a-8ec6-c21b-5ba56944e098','9d130d73-a70f-3968-3f2d-5ba5646c12e9','access',89,'2018-11-15 21:25:27',0),('c4d2413f-c010-7c6b-fc99-5ba569063f91','9d130d73-a70f-3968-3f2d-5ba5646c12e9','delete',80,'2018-11-15 21:25:27',0),('c510c2ed-1d19-a5bd-bb50-5ba569ff2d43','9d130d73-a70f-3968-3f2d-5ba5646c12e9','edit',80,'2018-11-15 21:25:27',0),('c510ce9c-97fb-ea32-3cc3-5ba5691904c6','9d130d73-a70f-3968-3f2d-5ba5646c12e9','export',0,'2018-11-15 21:25:27',0),('c54f4ac3-5613-4824-51d9-5ba569af0058','9d130d73-a70f-3968-3f2d-5ba5646c12e9','import',0,'2018-11-15 21:25:27',0),('c58dc6f8-a5db-1e5c-e5a2-5ba569fac5d7','9d130d73-a70f-3968-3f2d-5ba5646c12e9','list',80,'2018-11-15 21:25:27',0),('c58dc27d-0f4b-1aff-160a-5ba5698788ac','9d130d73-a70f-3968-3f2d-5ba5646c12e9','massupdate',-99,'2018-11-15 21:25:27',0),('c5cc423f-9028-973b-b225-5ba56903b415','9d130d73-a70f-3968-3f2d-5ba5646c12e9','view',80,'2018-11-15 21:25:27',0),('c60ac97a-5f53-1f92-cd6a-5ba569e2d739','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c4d2d810-93b0-e878-00b1-5ba5607941b3',89,'2018-11-15 21:25:27',0),('c60ac0cd-d723-9c74-efc4-5ba569db392c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','d954d935-73cb-b076-f595-5ba5601771f0',80,'2018-11-15 21:25:27',0),('c6494a0c-c870-de96-59e1-5ba569537788','9d130d73-a70f-3968-3f2d-5ba5646c12e9','d3f5d509-3690-8ead-025e-5ba56071bd32',80,'2018-11-15 21:25:27',0),('c687c08c-eaf1-f5a6-1619-5ba569c5f0bd','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e3d45e6d-2acc-5af3-5a38-5ba560fcc70d',0,'2018-11-15 21:25:27',0),('c6c64e9c-844c-cec6-f885-5ba569abe300','9d130d73-a70f-3968-3f2d-5ba5646c12e9','deb3daae-5c0e-b80f-a0f6-5ba5602ce776',0,'2018-11-15 21:25:27',0),('c6c64e71-c4ba-6899-c556-5ba569b67d1c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','cf13d1ca-dabd-c61c-ab5c-5ba56068104d',80,'2018-11-15 21:25:27',0),('c704cbad-ea2e-107b-ff3e-5ba569986f63','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e8f4dc20-e5e7-f0f2-f62f-5ba5606293e9',-99,'2018-11-15 21:25:27',0),('c7434179-f60c-ac07-ee55-5ba5696314bb','9d130d73-a70f-3968-3f2d-5ba5646c12e9','ca31d48e-0c35-4043-dad9-5ba5600d6ca9',80,'2018-11-15 21:25:27',0),('c7434348-3cb0-506d-bd49-5ba5693c6c0f','9d130d73-a70f-3968-3f2d-5ba5646c12e9','10a5dacf-39b3-bf7e-077d-5ba56075fcce',0,'2018-11-15 21:25:27',0),('c781ca67-c407-4684-cc6e-5ba5698fcf75','9d130d73-a70f-3968-3f2d-5ba5646c12e9','21bcd215-595a-15f1-2e62-5ba560b50708',0,'2018-11-15 21:25:27',0),('c781c0af-90ea-6ad6-e3ba-5ba5695264fd','9d130d73-a70f-3968-3f2d-5ba5646c12e9','1dd4d50d-0664-19e4-6052-5ba560efbe20',0,'2018-11-15 21:25:27',0),('c7c04902-942b-dad8-c27c-5ba5695aadd5','9d130d73-a70f-3968-3f2d-5ba5646c12e9','2a48522d-40cb-831b-e71a-5ba560ed246c',0,'2018-11-15 21:25:27',0),('c7fec16b-1a0b-268d-ffa0-5ba569518f92','9d130d73-a70f-3968-3f2d-5ba5646c12e9','25e35b61-2ae4-f429-7cf1-5ba56076089c',0,'2018-11-15 21:25:27',0),('c7fecf66-9d36-e6d5-a8b5-5ba569f4a3ca','9d130d73-a70f-3968-3f2d-5ba5646c12e9','196fdb17-666f-a607-1241-5ba560658b45',0,'2018-11-15 21:25:27',0),('c83d4731-38d3-d1a9-81c0-5ba5699f331d','9d130d73-a70f-3968-3f2d-5ba5646c12e9','2f2a57ca-355b-b18e-4a88-5ba560e06e2f',0,'2018-11-15 21:25:27',0),('c83d4252-c70d-e2e7-3848-5ba5692e84eb','9d130d73-a70f-3968-3f2d-5ba5646c12e9','154954c6-204c-e897-6703-5ba560fd00f3',0,'2018-11-15 21:25:27',0),('c87bc8f8-d17e-c4a2-8441-5ba5696f508c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','3832df52-8433-1f53-2728-5ba56021ff62',0,'2018-11-15 21:25:27',0),('c8ba4b89-5d3f-a1f0-86d7-5ba569e61f61','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4b3dd334-e0a5-8d1f-b158-5ba560ff3754',0,'2018-11-15 21:25:27',0),('c8ba4124-2248-f240-3a95-5ba5695dd7bf','9d130d73-a70f-3968-3f2d-5ba5646c12e9','465bdaa8-6459-d15d-e13e-5ba560d89c95',0,'2018-11-15 21:25:27',0),('c8f8cd6f-257d-529e-d382-5ba56944eb51','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5484d53f-95f8-6089-b98d-5ba560779292',0,'2018-11-15 21:25:27',0),('c93740c4-21b7-fd53-dce7-5ba5699190a4','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4fe15085-139d-34c6-4c4b-5ba560b3bf93',0,'2018-11-15 21:25:27',0),('c9374364-b4d9-2dc7-8a60-5ba569344215','9d130d73-a70f-3968-3f2d-5ba5646c12e9','41f6d356-906a-c32b-e829-5ba5609bd049',0,'2018-11-15 21:25:27',0),('c975c343-8cb9-ca76-693d-5ba569536d2b','9d130d73-a70f-3968-3f2d-5ba5646c12e9','59285b82-1eb0-6956-4d86-5ba560fc328d',0,'2018-11-15 21:25:27',0),('c975c148-7b2a-1140-78c4-5ba569d697c2','9d130d73-a70f-3968-3f2d-5ba5646c12e9','3d14d3df-1b8b-87f3-db65-5ba56030d0f4',0,'2018-11-15 21:25:27',0),('c9b444d7-088b-6e08-ff8a-5ba569f1b152','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c54fdca3-86d7-fb35-85e5-5ba560537abd',0,'2018-11-15 21:25:27',0),('c9f2cf61-742c-7b4c-8c87-5ba5698b740f','9d130d73-a70f-3968-3f2d-5ba5646c12e9','d7ddd0cf-9f9f-dd6f-2777-5ba5600b2e95',0,'2018-11-15 21:25:27',0),('c9f2c9db-9bd6-a326-aa22-5ba5692cb3f0','9d130d73-a70f-3968-3f2d-5ba5646c12e9','d33a5a9e-63c9-835a-8c34-5ba560407ca9',0,'2018-11-15 21:25:27',0),('ca31480a-8382-f5b0-1485-5ba56937d976','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e1635d10-8a22-76aa-1b21-5ba5607b8ca4',0,'2018-11-15 21:25:27',0),('ca6fca65-bf4b-c378-9dd6-5ba569550169','9d130d73-a70f-3968-3f2d-5ba5646c12e9','dc815db8-7e3b-d373-a417-5ba560aa2542',0,'2018-11-15 21:25:27',0),('ca6fce24-97d9-82be-6eda-5ba56998259e','9d130d73-a70f-3968-3f2d-5ba5646c12e9','ced55f4d-15a8-6fc7-c9a3-5ba560df10d4',0,'2018-11-15 21:25:27',0),('caae44f4-0d97-16e3-5639-5ba569e28173','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e5c8539a-4c6b-1120-520a-5ba560f3eb64',0,'2018-11-15 21:25:27',0),('caecc712-f5f1-eed9-278f-5ba569bce97a','9d130d73-a70f-3968-3f2d-5ba5646c12e9','ca31de80-0cce-5f3a-04c4-5ba56047985b',0,'2018-11-15 21:25:27',0),('caecc684-9260-5cdf-5334-5ba5695c3e69','9d130d73-a70f-3968-3f2d-5ba5646c12e9','83a353fc-26d1-bfe9-5aff-5ba560b4050e',0,'2018-11-15 21:25:27',0),('cb2b49d4-bd8d-d549-95f6-5ba5697309ab','9d130d73-a70f-3968-3f2d-5ba5646c12e9','94f8d9ed-9789-e283-c57b-5ba56019ad47',0,'2018-11-15 21:25:27',0),('cb69cc53-e32e-fd09-901b-5ba5695ff264','9d130d73-a70f-3968-3f2d-5ba5646c12e9','905554b2-5518-068a-37b4-5ba56059535f',0,'2018-11-15 21:25:27',0),('cb69c296-19ea-86db-ec89-5ba569e72139','9d130d73-a70f-3968-3f2d-5ba5646c12e9','9dc2da8d-13bb-ce95-4a23-5ba5609880f5',0,'2018-11-15 21:25:27',0),('cba842c8-36ac-d1d3-1bac-5ba5698919c4','9d130d73-a70f-3968-3f2d-5ba5646c12e9','995dd21e-5047-b68a-c182-5ba5603ca281',0,'2018-11-15 21:25:27',0),('cbe6c4d9-183f-6bf6-6830-5ba569cacd50','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8c2ed712-f4d7-79a1-87b3-5ba5602f92ed',0,'2018-11-15 21:25:27',0),('cbe6cf3b-9907-60d6-f9ee-5ba56910d5f5','9d130d73-a70f-3968-3f2d-5ba5646c12e9','a2665079-c558-4993-1738-5ba56014e604',0,'2018-11-15 21:25:27',0),('cc2540a2-9a9d-738a-31f4-5ba5697baf99','9d130d73-a70f-3968-3f2d-5ba5646c12e9','87c9db39-2d74-8e67-8f04-5ba560da5e44',0,'2018-11-15 21:25:27',0),('cc63c8fe-fdcd-6e74-df40-5ba56905e395','9d130d73-a70f-3968-3f2d-5ba5646c12e9','40be56f5-46d0-fb57-369f-5ba560733469',0,'2018-11-15 21:25:27',0),('cc63cee0-04ed-bf3b-a8c2-5ba5698f35cb','9d130d73-a70f-3968-3f2d-5ba5646c12e9','530ddf23-521c-433a-5331-5ba5605f7dcc',0,'2018-11-15 21:25:27',0),('cca24772-496d-e27d-e7e9-5ba56903074a','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4ea8dcd2-43fe-59e9-ca03-5ba5602a5da6',0,'2018-11-15 21:25:27',0),('cce0c3d1-8ab7-bc54-dd00-5ba56913c54a','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5bd7d975-2998-4d11-9961-5ba560e79658',0,'2018-11-15 21:25:27',0),('cce0cf13-fd61-ce9a-c4ef-5ba56973f744','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5772d282-4254-00d6-a59f-5ba560cfcdcb',0,'2018-11-15 21:25:27',0),('cd1f4bd2-6417-d9f8-fbf0-5ba569013a19','9d130d73-a70f-3968-3f2d-5ba5646c12e9','49c6d979-82b0-dcd2-da7a-5ba5608f6840',0,'2018-11-15 21:25:27',0),('cd5dcfaf-dce0-b4ea-6910-5ba569df95f2','9d130d73-a70f-3968-3f2d-5ba5646c12e9','603cd62f-c6b1-256a-4410-5ba560e45964',0,'2018-11-15 21:25:27',0),('cd9c4935-4d57-3791-1ba9-5ba569d85327','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4561d625-d886-f7b5-6bf0-5ba560cf941e',0,'2018-11-15 21:25:27',0),('cd9c40d2-aa68-d5ea-aa13-5ba569430d1e','9d130d73-a70f-3968-3f2d-5ba5646c12e9','da4edb64-4057-79ec-4451-5ba560b2ee0f',0,'2018-11-15 21:25:27',0),('cddac825-9032-692c-e14c-5ba569b97037','9d130d73-a70f-3968-3f2d-5ba5646c12e9','ee1556f2-e599-47d8-488b-5ba560f5d88c',0,'2018-11-15 21:25:27',0),('ce194ce9-0d56-0f16-1357-5ba569a14f23','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e933511d-1c04-b633-1473-5ba5608a2c73',0,'2018-11-15 21:25:27',0),('ce57c212-c197-bcf3-97db-5ba5694dc8e1','9d130d73-a70f-3968-3f2d-5ba5646c12e9','3f3c02dd-7ffb-9cfe-cddc-5ba560ec2f95',0,'2018-11-15 21:25:27',0),('ce57c7f6-9a6a-0609-0396-5ba569594814','9d130d73-a70f-3968-3f2d-5ba5646c12e9','f335daf0-3354-6b77-ae7f-5ba5605811ee',0,'2018-11-15 21:25:27',0),('ce96467e-70b5-e612-5b71-5ba569df83dc','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e4ce5d85-f09e-513c-6c28-5ba560a2f5ec',0,'2018-11-15 21:25:27',0),('ced4ce1c-1953-d1d4-81cb-5ba5694eb8ef','9d130d73-a70f-3968-3f2d-5ba5646c12e9','858d0450-2d94-1676-d91f-5ba5607186e0',0,'2018-11-15 21:25:27',0),('ced4c393-4e08-0151-2e0b-5ba569135c8f','9d130d73-a70f-3968-3f2d-5ba5646c12e9','dfadd537-b0bc-caa8-0f98-5ba560543f37',0,'2018-11-15 21:25:27',0),('cf134b62-6681-ce76-2ebe-5ba5697fe698','9d130d73-a70f-3968-3f2d-5ba5646c12e9','2527d12f-e982-87c8-daf1-5ba56062f4f7',0,'2018-11-15 21:25:27',0),('cf51c26f-c7ca-be6e-6503-5ba5690f4f64','9d130d73-a70f-3968-3f2d-5ba5646c12e9','37f454e5-c8fc-239b-766d-5ba560f41373',0,'2018-11-15 21:25:27',0),('cf51c46a-20b0-c9fd-d269-5ba5694fe14b','9d130d73-a70f-3968-3f2d-5ba5646c12e9','3350debf-6c70-a12d-cbc0-5ba56022d530',0,'2018-11-15 21:25:27',0),('cf904f7a-ad38-3564-9fcf-5ba56947c084','9d130d73-a70f-3968-3f2d-5ba5646c12e9','407fdef6-a485-8de6-68ef-5ba560d14ffa',0,'2018-11-15 21:25:27',0),('cfcec237-82b7-868a-82c6-5ba569c13af4','9d130d73-a70f-3968-3f2d-5ba5646c12e9','3bdc564e-fce2-3445-f7d5-5ba560d089e4',0,'2018-11-15 21:25:27',0),('cfcec3f6-af10-e458-ac04-5ba5690c544e','9d130d73-a70f-3968-3f2d-5ba5646c12e9','2eebd065-ab24-f461-3879-5ba560f70173',0,'2018-11-15 21:25:27',0),('d00d44f6-0f0b-cc03-1675-5ba569b3b27a','9d130d73-a70f-3968-3f2d-5ba5646c12e9','45a0509b-07a2-2c91-e725-5ba5604ebf42',0,'2018-11-15 21:25:27',0),('d00d454b-7cd8-0b3e-f8de-5ba569474ecd','9d130d73-a70f-3968-3f2d-5ba5646c12e9','2a09df0b-8501-890b-403e-5ba56092e025',0,'2018-11-15 21:25:27',0),('d04bc5b6-8c1b-d985-49e9-5ba569fbcb18','9d130d73-a70f-3968-3f2d-5ba5646c12e9','efcad147-2243-4fde-bc59-5ba560715dfc',0,'2018-11-15 21:25:27',0),('d08a41d7-b63b-113a-8401-5ba569809f9c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','d3ad08a0-3613-e5b7-0efb-5ba560ac910e',0,'2018-11-15 21:25:27',0),('d08a4f2f-b355-7fe9-1fa7-5ba5697f1571','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8d5d09c3-3ea3-9771-6fd7-5ba560b1289d',0,'2018-11-15 21:25:27',0),('d0c8c562-d7bf-598a-889c-5ba5695aa510','9d130d73-a70f-3968-3f2d-5ba5646c12e9','164351b6-2c99-6385-04af-5ba560b8cb0b',0,'2018-11-15 21:25:27',0),('d0c8c2c8-9b0b-ca1e-0f99-5ba569b25ffb','9d130d73-a70f-3968-3f2d-5ba5646c12e9','11de554d-febf-ac8a-858f-5ba560ec20f3',0,'2018-11-15 21:25:27',0),('d10745aa-3265-9001-fb65-5ba569d4826b','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4af50f1f-8bfd-013c-4794-5ba5608c97a1',0,'2018-11-15 21:25:27',0),('d145caaf-1e84-3cb6-df94-5ba569899669','9d130d73-a70f-3968-3f2d-5ba5646c12e9','1ae6deea-e02f-3285-6faa-5ba560417bd5',0,'2018-11-15 21:25:27',0),('d145c8bd-bd02-d389-6d4a-5ba5695a7856','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4a500438-87f0-e7ea-f832-5ba560a5b33d',0,'2018-11-15 21:25:27',0),('d18446b1-6af7-a53d-cb2f-5ba569cee04d','9d130d73-a70f-3968-3f2d-5ba5646c12e9','7ec15446-c190-9701-fa7e-5ba560d7f30a',0,'2018-11-15 21:25:27',0),('d18443f4-075d-b043-28b2-5ba569436e42','9d130d73-a70f-3968-3f2d-5ba5646c12e9','9287d457-1431-c1da-8e39-5ba56001e68e',0,'2018-11-15 21:25:27',0),('d1c2ca56-6fb0-c7f7-0332-5ba5690efe27','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8d675264-51de-fb27-cd7d-5ba560fabd83',0,'2018-11-15 21:25:27',0),('d1c2c792-a193-ed82-bf8e-5ba569045ee5','9d130d73-a70f-3968-3f2d-5ba5646c12e9','9c4bda7d-4792-db7a-bbbe-5ba5604186ad',0,'2018-11-15 21:25:27',0),('d2014244-bed5-0146-e404-5ba5694896ce','9d130d73-a70f-3968-3f2d-5ba5646c12e9','9769db31-1d18-d34d-4a49-5ba560efca0a',0,'2018-11-15 21:25:27',0),('d23fc56c-511f-61cb-c143-5ba5697b63c9','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8846d1dd-5094-111e-552c-5ba56026644f',0,'2018-11-15 21:25:27',0),('d23fc44c-39d9-3303-c307-5ba569f27e45','9d130d73-a70f-3968-3f2d-5ba5646c12e9','a0b0d215-ccf7-78a8-b354-5ba5608fae90',0,'2018-11-15 21:25:27',0),('d27e4ed5-c785-57ec-2ded-5ba5692c8ce0','9d130d73-a70f-3968-3f2d-5ba5646c12e9','83a35f6a-08c5-0ef9-2c13-5ba560e50f82',0,'2018-11-15 21:25:27',0),('d2bcc661-119d-1e40-a17f-5ba569fb47b7','9d130d73-a70f-3968-3f2d-5ba5646c12e9','2db35cda-029a-594d-2932-5ba560b8ecd5',0,'2018-11-15 21:25:27',0),('d2fb40ce-daed-3f76-b10f-5ba5698276a9','9d130d73-a70f-3968-3f2d-5ba5646c12e9','42b25ecd-61bf-b879-331b-5ba560294da9',0,'2018-11-15 21:25:27',0),('d339c88a-fb47-9d46-9041-5ba5695dfdc2','9d130d73-a70f-3968-3f2d-5ba5646c12e9','3e0edff6-014e-caf0-6294-5ba560321b97',0,'2018-11-15 21:25:27',0),('d339c150-5cf8-aff2-94f7-5ba5696fe130','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4b3dd428-4acd-d597-4148-5ba5602844e4',0,'2018-11-15 21:25:27',0),('d3784b68-1523-2ebd-7f58-5ba569dc28c7','9d130d73-a70f-3968-3f2d-5ba5646c12e9','47175cac-55bb-4390-9ce7-5ba560633a24',0,'2018-11-15 21:25:27',0),('d3b6cd16-644d-bf47-eee4-5ba569211b75','9d130d73-a70f-3968-3f2d-5ba5646c12e9','3832d7b8-8162-a997-809c-5ba560b263f9',0,'2018-11-15 21:25:27',0),('d3b6ca97-772c-7717-473d-5ba5696fb99c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4fa2dbc4-b740-b690-234a-5ba560cdf7dc',0,'2018-11-15 21:25:27',0),('d3f54f40-6d29-22ad-1240-5ba569944ff6','9d130d73-a70f-3968-3f2d-5ba5646c12e9','33125005-f4d3-548e-9a24-5ba56051d967',0,'2018-11-15 21:25:27',0),('d433c02f-d327-5deb-2004-5ba56972d9f0','9d130d73-a70f-3968-3f2d-5ba5646c12e9','52cf513b-e5f8-d690-162f-5ba560ee953f',0,'2018-11-15 21:25:27',0),('d433cf33-985b-787a-d9fc-5ba569b2b669','9d130d73-a70f-3968-3f2d-5ba5646c12e9','64a1d70a-8c58-7a83-c2aa-5ba560e8d085',0,'2018-11-15 21:25:27',0),('d4724392-cfab-2faa-1ce7-5ba5694ceb75','9d130d73-a70f-3968-3f2d-5ba5646c12e9','607b50fb-298a-c1e2-b5cd-5ba56030f97b',0,'2018-11-15 21:25:27',0),('d4b0ca6c-8619-3c60-8f08-5ba56968b817','9d130d73-a70f-3968-3f2d-5ba5646c12e9','6d2d54be-b8dc-87c1-bbcb-5ba5600c1b6a',0,'2018-11-15 21:25:27',0),('d4ef4ea9-7e7f-12df-7061-5ba569c80c7b','9d130d73-a70f-3968-3f2d-5ba5646c12e9','6906d662-2dcf-8c5f-0f48-5ba560d48873',0,'2018-11-15 21:25:27',0),('d52dc4b2-8f66-6711-59f6-5ba5696bdb08','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5c16595e-e4da-f2ec-469b-5ba5608923d5',0,'2018-11-15 21:25:27',0),('d52dcbf4-fdee-a291-753a-5ba569d34e48','9d130d73-a70f-3968-3f2d-5ba5646c12e9','7153dd16-c411-8075-995c-5ba56039072d',0,'2018-11-15 21:25:27',0),('d56c4828-93dc-bf79-38d3-5ba569213e2e','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5772d38c-9823-68db-4b16-5ba5602755a4',0,'2018-11-15 21:25:27',0),('d5aacc5f-06e6-d786-5313-5ba569553097','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4d31db16-dd0f-434e-016b-5ba560c32350',0,'2018-11-15 21:25:27',0),('d5e94d15-ae40-6417-0da5-5ba56905e06c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5f8158b2-dfae-4cfc-c034-5ba56073eb3c',0,'2018-11-15 21:25:27',0),('d5e943d1-d926-21ae-de92-5ba5697ff8a2','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5b1c535e-b214-de34-7c05-5ba5602c79ea',0,'2018-11-15 21:25:27',0),('d627c827-3383-4a2c-4a11-5ba56945b8c0','9d130d73-a70f-3968-3f2d-5ba5646c12e9','6889d250-5767-796d-9cfa-5ba560197ca6',0,'2018-11-15 21:25:27',0),('d6664d6f-8256-7bef-f269-5ba569692c8e','9d130d73-a70f-3968-3f2d-5ba5646c12e9','63e65f5e-7c4e-0aba-f645-5ba560e74ed7',0,'2018-11-15 21:25:27',0),('d6a4cb1b-3260-9874-af7a-5ba569852c80','9d130d73-a70f-3968-3f2d-5ba5646c12e9','563a5d8a-d2d0-8835-fc53-5ba5608c2492',0,'2018-11-15 21:25:27',0),('d6a4cabc-03b5-0d1d-5536-5ba569f0a847','9d130d73-a70f-3968-3f2d-5ba5646c12e9','6cb05205-352e-0f80-7fbb-5ba5608e9d25',0,'2018-11-15 21:25:27',0),('d6e34473-c110-7927-a85e-5ba5697b796c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5196daa5-403e-c1a0-1332-5ba560be266d',0,'2018-11-15 21:25:27',0),('d721c29a-8702-adc6-ba3d-5ba569b3e25b','9d130d73-a70f-3968-3f2d-5ba5646c12e9','51d551cb-9d05-889b-088f-5ba560d5966f',0,'2018-11-15 21:25:27',0),('d7604da5-38b2-6a63-2983-5ba569d66614','9d130d73-a70f-3968-3f2d-5ba5646c12e9','64e05ce0-2c11-b0c2-9f8f-5ba56056ea19',0,'2018-11-15 21:25:27',0),('d7604068-827a-04c3-029a-5ba569497a59','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5ffe5a96-6e44-dcec-f8cd-5ba560ea1dc0',0,'2018-11-15 21:25:27',0),('d79ec76b-5a9e-bb70-e690-5ba5691603da','9d130d73-a70f-3968-3f2d-5ba5646c12e9','6de8d16d-fc40-3ca6-569b-5ba560d45311',0,'2018-11-15 21:25:27',0),('d7dd49ee-2de7-a7b1-e5bc-5ba5692fec41','9d130d73-a70f-3968-3f2d-5ba5646c12e9','69455a68-a8bc-1c21-9a70-5ba56035a5e2',0,'2018-11-15 21:25:27',0),('d81bc0c5-753b-f675-304a-5ba5695df932','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5b5ad081-1d77-9467-98fd-5ba560f12461',0,'2018-11-15 21:25:27',0),('d81bcd58-2cb8-816d-6f01-5ba569d221c4','9d130d73-a70f-3968-3f2d-5ba5646c12e9','720f5ef5-b2d7-b108-9013-5ba560195c3a',0,'2018-11-15 21:25:27',0),('d85a4ddd-a791-f5f3-880e-5ba569e82dcd','9d130d73-a70f-3968-3f2d-5ba5646c12e9','56b75388-7eff-2bc8-fe41-5ba56043eab9',0,'2018-11-15 21:25:27',0),('d898c372-cec1-72a4-87c1-5ba56989cd54','9d130d73-a70f-3968-3f2d-5ba5646c12e9','ed59d83e-acbb-08a6-00e1-5ba560034463',0,'2018-11-15 21:25:27',0),('d8d743a9-7263-f16c-b54e-5ba569f36a90','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e34d0f4c-993a-ee97-b58f-5ba560896a9f',0,'2018-11-15 21:25:27',0),('d915c2df-8616-7c04-1c1f-5ba5690e7f89','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8d5d05df-2b15-9a9e-35b3-5ba56014c123',0,'2018-11-15 21:25:27',0),('d915c844-9922-dd87-85b5-5ba5692f2e1b','9d130d73-a70f-3968-3f2d-5ba5646c12e9','18b45e01-51f7-4c10-934a-5ba560eac563',0,'2018-11-15 21:25:27',0),('d9544ce4-d1ff-dff7-31b8-5ba5694bd156','9d130d73-a70f-3968-3f2d-5ba5646c12e9','13d25090-53fd-5fb3-51ee-5ba560980d4e',0,'2018-11-15 21:25:27',0),('d992c0db-5dbb-f966-a59b-5ba56905c6b6','9d130d73-a70f-3968-3f2d-5ba5646c12e9','3f3c0cb6-624a-549a-b916-5ba560f365f6',0,'2018-11-15 21:25:27',0),('d9d14a66-bc8b-1e37-1e31-5ba569b0faaa','9d130d73-a70f-3968-3f2d-5ba5646c12e9','1d965140-4c62-6f71-9722-5ba5600ee65e',0,'2018-11-15 21:25:27',0),('d9d14bd8-807e-c566-0af2-5ba5693be66c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','f2b8d981-45e8-5384-ac88-5ba56072e5e3',0,'2018-11-15 21:25:27',0),('da0fc779-dc1d-e192-0fb2-5ba569998d14','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e7350a0f-27a7-8222-957b-5ba56039fb2f',0,'2018-11-15 21:25:27',0),('da4e47ab-1b7d-0e34-78f0-5ba569326bbd','9d130d73-a70f-3968-3f2d-5ba5646c12e9','21015821-2eb1-910d-24af-5ba560ac37ab',0,'2018-11-15 21:25:27',0),('da4e4d69-4624-5d29-753f-5ba56909572f','9d130d73-a70f-3968-3f2d-5ba5646c12e9','1c9c58c4-c6f8-9d3a-6e5d-5ba56044cf58',0,'2018-11-15 21:25:27',0),('da8cc8a5-cf04-0ec2-7c67-5ba569f483fe','9d130d73-a70f-3968-3f2d-5ba5646c12e9','2a86d999-a2ff-84fd-17d0-5ba56078868c',0,'2018-11-15 21:25:27',0),('dacb4725-527d-059e-cd2b-5ba5695933a9','9d130d73-a70f-3968-3f2d-5ba5646c12e9','25a4d645-28f2-fefd-2bde-5ba5600c5910',0,'2018-11-15 21:25:27',0),('db09cbb3-f6ab-a0d9-ebdf-5ba569248bf3','9d130d73-a70f-3968-3f2d-5ba5646c12e9','17ba5c3e-abbe-5ee7-6828-5ba560a8d6d7',0,'2018-11-15 21:25:27',0),('db09cd1f-e938-4c73-2b9e-5ba569a18fd8','9d130d73-a70f-3968-3f2d-5ba5646c12e9','2f2a5bcd-97e7-a5bf-9bd2-5ba560dcbdbb',0,'2018-11-15 21:25:27',0),('db4847e6-4543-17da-e6f6-5ba5690e53ba','9d130d73-a70f-3968-3f2d-5ba5646c12e9','1355517e-1ce3-9bea-0f6f-5ba560bd2526',0,'2018-11-15 21:25:27',0),('db86c45e-f4c1-f5ea-e11c-5ba5690f022c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','db0a5cb3-1431-ac92-854a-5ba56090f4ff',0,'2018-11-15 21:25:27',0),('db86ca28-e4fb-ca0c-ee26-5ba5694234bf','9d130d73-a70f-3968-3f2d-5ba5646c12e9','ed59d0c1-e588-2071-322c-5ba560a582b1',0,'2018-11-15 21:25:27',0),('dbc54a3c-4894-b2b7-3d0d-5ba569021ed5','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e8b65223-fbc7-3e49-7724-5ba560364f53',0,'2018-11-15 21:25:27',0),('dc03c173-dcbe-4d8b-2e99-5ba569f1ba09','9d130d73-a70f-3968-3f2d-5ba5646c12e9','1c150fd7-6447-7ee8-7ed8-5ba560d629da',0,'2018-11-15 21:25:27',0),('dc03cef2-9a95-a462-939b-5ba5692edc6d','9d130d73-a70f-3968-3f2d-5ba5646c12e9','f1bed219-5727-1531-4bf6-5ba56031fb7a',0,'2018-11-15 21:25:27',0),('dc424da6-ee05-c1be-3e4a-5ba569b74a6a','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e4515bbd-c36c-d521-26fb-5ba5603db520',0,'2018-11-15 21:25:27',0),('dc80c447-70a0-7467-2040-5ba569351c37','9d130d73-a70f-3968-3f2d-5ba5646c12e9','6a35011b-0744-81d1-e230-5ba56001b39d',0,'2018-11-15 21:25:27',0),('dc80c57d-3ade-33aa-8548-5ba569ba55e3','9d130d73-a70f-3968-3f2d-5ba5646c12e9','dfec5072-c0f3-9b2e-9306-5ba560fe8450',0,'2018-11-15 21:25:27',0),('dcbf4a2c-2a19-8676-b82c-5ba56968629d','9d130d73-a70f-3968-3f2d-5ba5646c12e9','9c4bdc12-06a9-c597-9922-5ba5603ed1c6',0,'2018-11-15 21:25:27',0),('dcfdce37-b4f4-78c3-862f-5ba569952a3a','9d130d73-a70f-3968-3f2d-5ba5646c12e9','af56dd8b-a664-724e-6982-5ba5601b879e',0,'2018-11-15 21:25:27',0),('dd3c467c-0f2a-6b2e-c7cc-5ba569e27089','9d130d73-a70f-3968-3f2d-5ba5646c12e9','aa74da46-88eb-6d6c-f48a-5ba560530c0f',0,'2018-11-15 21:25:27',0),('dd7ac589-cd1b-16a2-4cde-5ba569337f37','9d130d73-a70f-3968-3f2d-5ba5646c12e9','b91ad5d4-c281-730c-50de-5ba560212a1f',0,'2018-11-15 21:25:27',0),('ddb94ab6-2c3b-a784-563d-5ba569a3e2ba','9d130d73-a70f-3968-3f2d-5ba5646c12e9','b438d646-3e92-f7a4-879e-5ba560c702da',0,'2018-11-15 21:25:27',0),('ddb94466-3b06-c6bf-893b-5ba569358b94','9d130d73-a70f-3968-3f2d-5ba5646c12e9','a5d15774-9597-53ff-8330-5ba5602e5698',0,'2018-11-15 21:25:27',0),('ddf7cd43-73ac-d391-0aa2-5ba569d5b2c7','9d130d73-a70f-3968-3f2d-5ba5646c12e9','be3b5d36-959d-65ad-8278-5ba560b6c023',0,'2018-11-15 21:25:27',0),('de364843-d5d3-9d05-f959-5ba5698f8871','9d130d73-a70f-3968-3f2d-5ba5646c12e9','a0ef58fb-b4b0-6849-aaa6-5ba560f31c82',0,'2018-11-15 21:25:27',0),('de74c220-fcf0-449a-ce46-5ba5691a1d2d','9d130d73-a70f-3968-3f2d-5ba5646c12e9','60f85c24-9ab7-5420-c1ff-5ba5604e8166',0,'2018-11-15 21:25:27',0),('deb343e3-6c0e-5276-3f75-5ba5697ce79c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','72cada86-2b30-aa74-5de3-5ba5602125ee',0,'2018-11-15 21:25:27',0),('def1caf6-d020-cd50-b8bb-5ba5696a9386','9d130d73-a70f-3968-3f2d-5ba5646c12e9','6e65dc28-8380-22ec-a930-5ba56016febc',0,'2018-11-15 21:25:27',0),('df30491e-f505-75f0-c08b-5ba5691bbf57','9d130d73-a70f-3968-3f2d-5ba5646c12e9','7c11d2d0-8a2c-b7a4-9185-5ba560a0759c',0,'2018-11-15 21:25:27',0),('df6eccdb-3dfc-a2f0-b26b-5ba56932672b','9d130d73-a70f-3968-3f2d-5ba5646c12e9','776e5ba9-c397-e3a9-70bc-5ba5608a32fd',0,'2018-11-15 21:25:27',0),('df6ec824-9966-418a-6dc7-5ba569383593','9d130d73-a70f-3968-3f2d-5ba5646c12e9','69c255e5-3452-450a-9d60-5ba560ba98d4',0,'2018-11-15 21:25:27',0),('dfad475e-6c0c-203d-e592-5ba569a57f9f','9d130d73-a70f-3968-3f2d-5ba5646c12e9','80f3d7d3-7204-a817-73ae-5ba56068c87f',0,'2018-11-15 21:25:27',0),('dfebc41a-0e3c-efaf-90b7-5ba569104cc3','9d130d73-a70f-3968-3f2d-5ba5646c12e9','655d5b76-ae8b-631a-9f8c-5ba560a22faf',0,'2018-11-15 21:25:27',0),('e02a47ab-a27e-a905-bd3a-5ba569367995','9d130d73-a70f-3968-3f2d-5ba5646c12e9','70985ff2-9c11-6099-af08-5ba560c164f6',0,'2018-11-15 21:25:27',0),('e068cfee-a8eb-16f9-34bf-5ba569ed8f6f','9d130d73-a70f-3968-3f2d-5ba5646c12e9','81edd490-f40e-18ec-f6f4-5ba56092646b',0,'2018-11-15 21:25:27',0),('e0a74393-6926-4c56-0ea0-5ba569f2d862','9d130d73-a70f-3968-3f2d-5ba5646c12e9','7d88d87e-8d76-dc39-701f-5ba5600ef5f2',0,'2018-11-15 21:25:27',0),('e0a740c0-504a-316d-110a-5ba56978a8b2','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8af65d73-6c50-9f83-cf7a-5ba560581de1',0,'2018-11-15 21:25:27',0),('e0e5cc52-1071-2284-5610-5ba569834ff0','9d130d73-a70f-3968-3f2d-5ba5646c12e9','86915950-632d-a35f-d9af-5ba560d098a8',0,'2018-11-15 21:25:27',0),('e12444b9-d248-fc1b-cfe9-5ba569058883','9d130d73-a70f-3968-3f2d-5ba5646c12e9','79625e7e-103f-a927-f44b-5ba560abba1a',0,'2018-11-15 21:25:27',0),('e162cb0f-6049-8bed-5892-5ba569ab4f01','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8f5b5f73-ec71-055b-d6c7-5ba560563ccc',0,'2018-11-15 21:25:27',0),('e1a14780-a1f8-db64-edf3-5ba569e6c740','9d130d73-a70f-3968-3f2d-5ba5646c12e9','753bd5d5-685e-7ae8-2a41-5ba560f5077e',0,'2018-11-15 21:25:27',0),('e1dfc030-f9fc-5177-42f6-5ba5698be5bd','9d130d73-a70f-3968-3f2d-5ba5646c12e9','3d535f39-4f9c-08af-f5d4-5ba56090154d',0,'2018-11-15 21:25:27',0),('e21e47d6-69b3-4df6-851d-5ba5697a5f11','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4f25db19-f95b-6b60-f264-5ba560458c3f',0,'2018-11-15 21:25:27',0),('e25cc612-54f0-c65e-0688-5ba569942706','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4a825989-137c-184d-7fad-5ba560e333da',0,'2018-11-15 21:25:27',0),('e25cc08b-e924-4481-8a2b-5ba569aa9fdd','9d130d73-a70f-3968-3f2d-5ba5646c12e9','57efd3c0-de90-c209-a8b2-5ba560912632',0,'2018-11-15 21:25:27',0),('e29b41ed-b9df-8ade-cb7c-5ba569ca926c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','538ad202-729c-4408-1255-5ba5600f9b8b',0,'2018-11-15 21:25:27',0),('e2d9cfd9-c5e8-03dc-3db8-5ba569579577','9d130d73-a70f-3968-3f2d-5ba5646c12e9','461d5205-6fcf-5ae0-7bc9-5ba560c4d5cf',0,'2018-11-15 21:25:27',0),('e3184cc1-2250-a6e3-b24d-5ba5698cedb8','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5c935081-b152-6711-46af-5ba560231a2a',0,'2018-11-15 21:25:27',0),('e356c898-5744-b293-b748-5ba569bbc837','9d130d73-a70f-3968-3f2d-5ba5646c12e9','41b85946-0cdd-8900-c180-5ba5603fcc4e',0,'2018-11-15 21:25:27',0),('e3954b9c-e5ef-b457-67bd-5ba569772962','9d130d73-a70f-3968-3f2d-5ba5646c12e9','78685a5d-8b98-ce28-07f9-5ba5606f4ba6',0,'2018-11-15 21:25:27',0),('e3d3c13e-6559-360e-5dec-5ba569dbce41','9d130d73-a70f-3968-3f2d-5ba5646c12e9','89fc5ef3-bcde-add7-12d9-5ba560a7eb44',0,'2018-11-15 21:25:27',0),('e3d3c25c-2193-b95c-f984-5ba5696e7f51','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8558d4ce-1524-a98c-a987-5ba56063acfc',0,'2018-11-15 21:25:27',0),('e4124829-8d7d-f0d3-c9c3-5ba569581bcb','9d130d73-a70f-3968-3f2d-5ba5646c12e9','92c6547c-ff34-2ea8-da27-5ba560c1be14',0,'2018-11-15 21:25:27',0),('e450c594-bf72-bcd7-7ab9-5ba569ffcc61','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8e6159c6-5bc9-26be-9136-5ba5603aa83f',0,'2018-11-15 21:25:27',0),('e48f40b1-a269-80bc-d292-5ba569dcc5b9','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8132544a-f253-b804-0e79-5ba560494bbb',0,'2018-11-15 21:25:27',0),('e4cdc3f1-5601-ecbd-9844-5ba569e87cec','9d130d73-a70f-3968-3f2d-5ba5646c12e9','9769d630-b5e4-9d02-6a4b-5ba560657044',0,'2018-11-15 21:25:27',0),('e50c4547-736e-6d83-34e6-5ba569982655','9d130d73-a70f-3968-3f2d-5ba5646c12e9','7c8ed5fd-eb70-00be-2481-5ba5605663ee',0,'2018-11-15 21:25:27',0),('e54aca68-ea50-3c9c-1ed6-5ba569db7cd7','9d130d73-a70f-3968-3f2d-5ba5646c12e9','9381d6cd-6635-68a6-6540-5ba5608314b4',0,'2018-11-15 21:25:27',0),('e5894d44-1bc7-af9d-084d-5ba5696cedfb','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c3d8d5fe-8f18-0bc4-46ae-5ba5602d76ff',0,'2018-11-15 21:25:27',0),('e589460c-4329-05f2-8a02-5ba56990cb03','9d130d73-a70f-3968-3f2d-5ba5646c12e9','bef6dcac-0d18-9309-ccd1-5ba56066f4dd',0,'2018-11-15 21:25:27',0),('e5c7c237-de06-cbb3-f4c4-5ba569165e2e','9d130d73-a70f-3968-3f2d-5ba5646c12e9','cca2dfa6-4ea6-8e0b-2015-5ba56031f517',0,'2018-11-15 21:25:27',0),('e60646c1-8d90-66e8-06fb-5ba5694e2887','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c83dd518-3b4c-2a09-0887-5ba560c74124',0,'2018-11-15 21:25:27',0),('e644c414-1cfe-3bd2-3a7d-5ba569f57f0c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','b9d65a34-c04d-c7b7-33a2-5ba560f26a8a',0,'2018-11-15 21:25:27',0),('e68343e3-c05f-e9b3-ada0-5ba569e5e225','9d130d73-a70f-3968-3f2d-5ba5646c12e9','d1465e27-8aaa-3618-7a6f-5ba5609770b8',0,'2018-11-15 21:25:27',0),('e6c1ca94-df3b-0313-e2cb-5ba56908efc1','9d130d73-a70f-3968-3f2d-5ba5646c12e9','b4b5d127-08f3-6e65-8cf0-5ba560c253e2',0,'2018-11-15 21:25:27',0),('e70049f8-f078-eea3-e7b6-5ba569d11906','9d130d73-a70f-3968-3f2d-5ba5646c12e9','22f550c2-99b8-67a4-1d3b-5ba560c9cbbf',0,'2018-11-15 21:25:27',0),('e73ecc53-bc69-6337-55ff-5ba569079d59','9d130d73-a70f-3968-3f2d-5ba5646c12e9','35c1d93c-f4b8-8b4d-3600-5ba560fa62e6',0,'2018-11-15 21:25:27',0),('e77d4208-fd4b-c0d7-7bad-5ba569c89857','9d130d73-a70f-3968-3f2d-5ba5646c12e9','311e5af5-650b-c717-6676-5ba560d7f5a3',0,'2018-11-15 21:25:27',0),('e77d4061-8f89-98a6-89ca-5ba569d6a099','9d130d73-a70f-3968-3f2d-5ba5646c12e9','3e8bdb98-8dad-1ebc-8087-5ba5605b7857',0,'2018-11-15 21:25:27',0),('e7bbcc9b-1774-5fee-5d28-5ba569548201','9d130d73-a70f-3968-3f2d-5ba5646c12e9','3a26d62b-de3b-2b13-46cc-5ba5601e127a',0,'2018-11-15 21:25:27',0),('e7fa42ca-09c3-e4ea-f3d6-5ba569b2dcc1','9d130d73-a70f-3968-3f2d-5ba5646c12e9','2c3c5e31-199d-612a-85c8-5ba5603f8d86',0,'2018-11-15 21:25:27',0),('e838cd20-47c5-bc7d-c08a-5ba56948c223','9d130d73-a70f-3968-3f2d-5ba5646c12e9','436dd7af-b6ff-068c-297d-5ba560cb38a0',0,'2018-11-15 21:25:27',0),('e8774564-eca3-b187-887a-5ba569a0bb97','9d130d73-a70f-3968-3f2d-5ba5646c12e9','2798d20c-2b10-bbf4-3a8a-5ba56046e909',0,'2018-11-15 21:25:27',0),('e8b5ceb6-5096-ebb0-8c64-5ba56955592e','9d130d73-a70f-3968-3f2d-5ba5646c12e9','81325950-b34a-3d4e-986d-5ba560c6012d',0,'2018-11-15 21:25:27',0),('e8f44577-423b-fe15-f798-5ba5698ab4ce','9d130d73-a70f-3968-3f2d-5ba5646c12e9','9381d83c-0eef-f482-c276-5ba5608683d1',0,'2018-11-15 21:25:27',0),('e8f448b7-477d-a59c-f7f6-5ba5691791e4','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8ede5e63-23ea-c236-8c61-5ba56091ad72',0,'2018-11-15 21:25:27',0),('e932cd28-f033-f8d0-6044-5ba569de19f7','9d130d73-a70f-3968-3f2d-5ba5646c12e9','9c8a5c28-7d4e-0ced-5585-5ba56042d553',0,'2018-11-15 21:25:27',0),('e971419e-bb01-7108-d2dd-5ba569895f6b','9d130d73-a70f-3968-3f2d-5ba5646c12e9','98255d86-6597-168a-6eae-5ba560c80bc2',0,'2018-11-15 21:25:27',0),('e9714724-f68d-e981-b96e-5ba5699ef534','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8a79570b-2d5a-ab4f-1924-5ba560d475d6',0,'2018-11-15 21:25:27',0),('e9afc207-e41d-4f63-f50b-5ba5697fb655','9d130d73-a70f-3968-3f2d-5ba5646c12e9','a0b0d279-5d83-a77d-4c38-5ba560305154',0,'2018-11-15 21:25:27',0),('e9ee42f0-9164-424a-4ee0-5ba569888eeb','9d130d73-a70f-3968-3f2d-5ba5646c12e9','86145310-351a-4936-e8c3-5ba56070a34b',0,'2018-11-15 21:25:27',0),('ea2cc985-3023-4aa2-460c-5ba56913e5ea','9d130d73-a70f-3968-3f2d-5ba5646c12e9','47d2db9b-1bf8-7c2f-f92f-5ba56003b488',0,'2018-11-15 21:25:27',0),('ea2cca00-92b3-e341-5b61-5ba569299b2c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','59a55531-2d18-d6bb-f84b-5ba5603bdd8e',0,'2018-11-15 21:25:27',0),('ea6b4850-b710-c6e5-c044-5ba5696095b9','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5501d15d-81a7-6eb4-bf7a-5ba560e2000f',0,'2018-11-15 21:25:27',0),('eaa9c665-3c58-f324-83b8-5ba569b76879','9d130d73-a70f-3968-3f2d-5ba5646c12e9','62addd25-263a-5a17-799d-5ba56001114c',0,'2018-11-15 21:25:27',0),('eae846b3-1c5c-1fcc-eb90-5ba5697660f6','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5e48d006-875b-8fd1-7248-5ba5608cd59f',0,'2018-11-15 21:25:27',0),('eb26ce34-2bee-91f0-09da-5ba569d27083','9d130d73-a70f-3968-3f2d-5ba5646c12e9','50db5ac0-9d27-d582-16ce-5ba5603e7d3c',0,'2018-11-15 21:25:27',0),('eb654428-478f-37ce-d70b-5ba56991aa41','9d130d73-a70f-3968-3f2d-5ba5646c12e9','67515fbd-2afd-6c45-7b8c-5ba5602203f8',0,'2018-11-15 21:25:27',0),('eb6544a0-73c5-b251-324c-5ba569eb9e01','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4cb4dee6-149e-ba5c-0314-5ba560b1f9cc',0,'2018-11-15 21:25:27',0),('eba3cab5-d391-db63-7a4c-5ba569b663de','9d130d73-a70f-3968-3f2d-5ba5646c12e9','b08502cd-1114-356c-cbfe-5ba56020cf0c',0,'2018-11-15 21:25:27',0),('ebe24464-d56a-ef45-4bfb-5ba5690b9937','9d130d73-a70f-3968-3f2d-5ba5646c12e9','1d96595f-4dbe-4fe9-f030-5ba56056ef10',0,'2018-11-15 21:25:27',0),('ec20cfe7-8423-4586-ea2f-5ba569ffae48','9d130d73-a70f-3968-3f2d-5ba5646c12e9','18f2db45-6a70-419b-e20e-5ba560bdca5c',0,'2018-11-15 21:25:27',0),('ec5f4bff-0ac7-e1ef-d656-5ba569cb56f5','9d130d73-a70f-3968-3f2d-5ba5646c12e9','26dd5c74-b763-796d-4781-5ba5609c3ceb',0,'2018-11-15 21:25:27',0),('ec9dcc7a-d714-7baa-e19e-5ba5697121e2','9d130d73-a70f-3968-3f2d-5ba5646c12e9','2239d84e-fa1b-bd1b-ab76-5ba5608f9ec6',0,'2018-11-15 21:25:27',0),('ecdc44fa-95d8-5084-aa39-5ba5698cceae','9d130d73-a70f-3968-3f2d-5ba5646c12e9','1410d777-4045-538e-5001-5ba5607dedc9',0,'2018-11-15 21:25:27',0),('ed1ac029-c5ae-a7d1-302d-5ba569972714','9d130d73-a70f-3968-3f2d-5ba5646c12e9','2b42540c-b5db-7b05-1f56-5ba560f30b85',0,'2018-11-15 21:25:27',0),('ed59467b-3455-49b2-da7a-5ba5692a5029','9d130d73-a70f-3968-3f2d-5ba5646c12e9','fabc0102-e50a-a32b-1324-5ba56040e15a',0,'2018-11-15 21:25:27',0),('ed97c767-1b36-38f5-9952-5ba56922c9c9','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c2235ab3-0f10-0102-d025-5ba5600a3fb0',0,'2018-11-15 21:25:27',0),('ed97ce69-5a09-d221-49d8-5ba5699f7b08','9d130d73-a70f-3968-3f2d-5ba5646c12e9','d3b75b61-adfe-26c4-1e6c-5ba560736135',0,'2018-11-15 21:25:27',0),('edd642b3-9316-59c0-7cf7-5ba5697f59ca','9d130d73-a70f-3968-3f2d-5ba5646c12e9','cf90dd7d-a9d3-b7fa-daf5-5ba560946aae',0,'2018-11-15 21:25:27',0),('ee14c0e0-49e5-3af9-67c3-5ba569b8235d','9d130d73-a70f-3968-3f2d-5ba5646c12e9','dc42d0cf-5197-1a12-9d88-5ba560cc63bd',0,'2018-11-15 21:25:27',0),('ee53402b-e4c1-780a-d9c6-5ba5696512e5','9d130d73-a70f-3968-3f2d-5ba5646c12e9','d81c5c77-8850-ec43-b183-5ba560fac96b',0,'2018-11-15 21:25:27',0),('ee91ca94-ba29-5f67-3ef2-5ba56976e323','9d130d73-a70f-3968-3f2d-5ba5646c12e9','cb2bd12d-0645-f687-3cf9-5ba560a8076f',0,'2018-11-15 21:25:27',0),('eed04f6d-cc5a-0172-68e0-5ba569af8988','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e0a7df9a-8567-acb1-108e-5ba560e8a31b',0,'2018-11-15 21:25:27',0),('ef0ec38e-caf9-362e-cfba-5ba569d8f4f4','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c6885801-3f5b-4f74-9440-5ba5603b2c0b',0,'2018-11-15 21:25:27',0),('ef4d47a7-f569-1a68-ae47-5ba5691ef6cb','9d130d73-a70f-3968-3f2d-5ba5646c12e9','49c6dcff-ef8c-784e-b182-5ba56030ed3d',0,'2018-11-15 21:25:27',0),('ef8bc725-b0b3-0c64-92b9-5ba569ddfb61','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5b5ad3c7-4fa9-7d39-4fa9-5ba560224882',0,'2018-11-15 21:25:27',0),('efca4f55-1c2a-9832-a68f-5ba5697986ad','9d130d73-a70f-3968-3f2d-5ba5646c12e9','56f5d69d-1fdb-56d9-e816-5ba5600564af',0,'2018-11-15 21:25:27',0),('f008c654-4854-b7e2-a71d-5ba5699e16ef','9d130d73-a70f-3968-3f2d-5ba5646c12e9','63e65f8a-0770-a8b6-c084-5ba560c7e61d',0,'2018-11-15 21:25:27',0),('f008c40d-3095-a319-016e-5ba569977a69','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5f815dfc-42ee-38b6-131c-5ba560701742',0,'2018-11-15 21:25:27',0),('f0474d96-112d-f5d7-4487-5ba569cd57c4','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5290d332-a322-d121-555d-5ba560be8732',0,'2018-11-15 21:25:27',0),('f085cd7c-477b-2dea-140f-5ba56947bb3c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','684b586a-4090-20c8-2fd3-5ba560a6ed02',0,'2018-11-15 21:25:27',0),('f0c44450-8cd1-5bf3-ad83-5ba569fd030c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4e2bd2e8-7678-0a7e-24f3-5ba56083cfac',0,'2018-11-15 21:25:27',0),('f102cfb3-ea6b-7727-9a15-5ba5690e2ada','9d130d73-a70f-3968-3f2d-5ba5646c12e9','897f5a0d-7936-b6e5-2431-5ba5607511df',0,'2018-11-15 21:25:27',0),('f17fc0e4-4e32-959f-a374-5ba5691b5875','9d130d73-a70f-3968-3f2d-5ba5646c12e9','9c0d5b6c-424c-8dce-3707-5ba560626f36',0,'2018-11-15 21:25:27',0),('f1be4ad4-40fe-9507-ec2a-5ba569bced7a','9d130d73-a70f-3968-3f2d-5ba5646c12e9','97a85641-7f53-bf4d-7f21-5ba5600af628',0,'2018-11-15 21:25:27',0),('f1fccaa6-84d1-2425-a5d5-5ba56997b2e1','9d130d73-a70f-3968-3f2d-5ba5646c12e9','a5d1583d-2f82-7812-0fe7-5ba5605b5207',0,'2018-11-15 21:25:27',0),('f1fcced8-4072-3a86-9d2d-5ba569775b29','9d130d73-a70f-3968-3f2d-5ba5646c12e9','a12dd91e-3859-0405-4023-5ba56099e249',0,'2018-11-15 21:25:27',0),('f23b4619-9219-fec8-9073-5ba5698a0c75','9d130d73-a70f-3968-3f2d-5ba5646c12e9','934357bb-de26-2537-c98c-5ba560df3b1d',0,'2018-11-15 21:25:27',0),('f279cd20-83b2-5fc6-11b0-5ba569a79535','9d130d73-a70f-3968-3f2d-5ba5646c12e9','aa365402-b036-b222-f620-5ba560f80d13',0,'2018-11-15 21:25:27',0),('f2b84eff-0f7d-13b8-8b3c-5ba569f707cd','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8e9fd640-0417-e8b7-f589-5ba560f20f44',0,'2018-11-15 21:25:27',0),('f2b84914-700b-d362-360a-5ba569582b6c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','148dd6c5-4501-3ee2-c225-5ba5606c1eff',0,'2018-11-15 21:25:27',0),('f2f6c657-27b7-83cb-ce0a-5ba569199c97','9d130d73-a70f-3968-3f2d-5ba5646c12e9','26605f29-745b-4179-58b0-5ba560791d7d',0,'2018-11-15 21:25:27',0),('f3354d64-eb9b-8a98-e90a-5ba5697f602d','9d130d73-a70f-3968-3f2d-5ba5646c12e9','21fb57a3-0611-5dfb-1eda-5ba5605c9796',0,'2018-11-15 21:25:27',0),('f373cad7-6d6a-ad62-4c60-5ba569f1a7d3','9d130d73-a70f-3968-3f2d-5ba5646c12e9','30245824-5924-ad1f-d5be-5ba560b8277c',0,'2018-11-15 21:25:27',0),('f373c49a-1cee-fe4e-8adc-5ba56950724b','9d130d73-a70f-3968-3f2d-5ba5646c12e9','2b425eee-26c3-6843-4161-5ba560313599',0,'2018-11-15 21:25:27',0),('f3b24e2b-07bb-6bcb-8812-5ba56988d501','9d130d73-a70f-3968-3f2d-5ba5646c12e9','1e1350fb-e5c7-3947-bd1a-5ba560440b80',0,'2018-11-15 21:25:27',0),('f3f0c0ee-9d52-0600-998a-5ba5693c3b8d','9d130d73-a70f-3968-3f2d-5ba5646c12e9','34c7ddb5-424a-3113-92c6-5ba560518976',0,'2018-11-15 21:25:27',0),('f3f0cc78-6fd5-b41d-54b1-5ba569c3ff78','9d130d73-a70f-3968-3f2d-5ba5646c12e9','196fdb17-e4a2-ee29-2821-5ba560869412',0,'2018-11-15 21:25:27',0),('b4000f66-bfa0-c735-6605-5ba569b4a1ab','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e877db06-588a-c401-c25c-5ba5605eab40',0,'2018-11-15 21:25:27',0),('49c00907-d925-3bd0-b779-5ba569621873','9d130d73-a70f-3968-3f2d-5ba5646c12e9','6e1d0180-80bc-9a8b-7544-5ba560b46f90',0,'2018-11-15 21:25:27',0),('88400a09-4f52-0302-52d5-5ba569815978','9d130d73-a70f-3968-3f2d-5ba5646c12e9','1ffd0b2f-e43f-c159-22f8-5ba560c99042',0,'2018-11-15 21:25:27',0),('c6c006f2-a7cc-a8cf-e3a2-5ba5695a7a58','9d130d73-a70f-3968-3f2d-5ba5646c12e9','1028db5a-73ce-7dfe-b52a-5ba56089b2d5',0,'2018-11-15 21:25:27',0),('10540910-70c1-b243-eaeb-5ba569cac551','9d130d73-a70f-3968-3f2d-5ba5646c12e9','b8550aed-41ec-c1e8-a9fb-5ba56075da00',0,'2018-11-15 21:25:27',0),('143c07de-1488-3737-4c50-5ba56998f310','9d130d73-a70f-3968-3f2d-5ba5646c12e9','f1805955-2953-0368-16b8-5ba56024c0f5',0,'2018-11-15 21:25:27',0),('143c0d47-61d7-0723-2633-5ba5690c6b5a','9d130d73-a70f-3968-3f2d-5ba5646c12e9','148dddac-5a58-d4fd-e399-5ba5609bcc2a',0,'2018-11-15 21:25:27',0),('182401fe-e5d1-5f50-83e3-5ba569b47c58','9d130d73-a70f-3968-3f2d-5ba5646c12e9','ecdcdb97-0827-70d9-df57-5ba56026d6f5',0,'2018-11-15 21:25:27',0),('1c0c0e69-e5fb-bc0a-faf1-5ba569d90bc8','9d130d73-a70f-3968-3f2d-5ba5646c12e9','addfd4aa-0e39-6457-5dc0-5ba5604e442c',0,'2018-11-15 21:25:27',0),('1ff405ab-179e-06f4-4446-5ba5694e5691','9d130d73-a70f-3968-3f2d-5ba5646c12e9','bfb252ca-c809-9f22-1838-5ba560353860',0,'2018-11-15 21:25:27',0),('23dc0962-7cd7-ef92-87aa-5ba56904cd92','9d130d73-a70f-3968-3f2d-5ba5646c12e9','bb4d5137-ef31-d684-359a-5ba560efa439',0,'2018-11-15 21:25:27',0),('27c40590-ad9f-950d-4df6-5ba5695b31bf','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c8badc9c-c039-5adb-5ccc-5ba56095d1a9',0,'2018-11-15 21:25:27',0),('2bac0ba6-c4c7-35d2-8196-5ba569e68907','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c455d60f-723c-f4a0-1875-5ba560155a34',0,'2018-11-15 21:25:27',0),('2bac0642-3051-3de4-b738-5ba5691c4ca4','9d130d73-a70f-3968-3f2d-5ba5646c12e9','b6e857e5-05bc-d9ce-b23b-5ba560f7bee9',0,'2018-11-15 21:25:27',0),('2f940953-8d28-5fbf-976c-5ba569ed0516','9d130d73-a70f-3968-3f2d-5ba5646c12e9','cce15df4-04e9-6a64-12de-5ba560384f9e',0,'2018-11-15 21:25:27',0),('337c0d65-829a-a74e-bbcd-5ba5693ae081','9d130d73-a70f-3968-3f2d-5ba5646c12e9','b2835ca8-4159-77c0-362a-5ba56020abe2',0,'2018-11-15 21:25:27',0),('37640ac1-4957-c419-b7ff-5ba56901b4c7','9d130d73-a70f-3968-3f2d-5ba5646c12e9','3544d4d0-dde8-5b7c-1ce9-5ba5604af2d5',0,'2018-11-15 21:25:27',0),('376401c5-366c-1da5-467a-5ba569638dda','9d130d73-a70f-3968-3f2d-5ba5646c12e9','47175889-f919-6656-e49f-5ba560ca3750',0,'2018-11-15 21:25:27',0),('3b4c0538-5f76-58da-6ffe-5ba56955ac9f','9d130d73-a70f-3968-3f2d-5ba5646c12e9','42b25ad3-f6da-13cb-816f-5ba560f9c4ff',0,'2018-11-15 21:25:27',0),('3f34010d-360e-97a4-a145-5ba569ff5322','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4fa2d403-438b-438b-bd25-5ba5604f7b31',0,'2018-11-15 21:25:27',0),('3f34035e-4fc9-d197-0620-5ba569125f99','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4aff530b-182c-81eb-b4d6-5ba560876c3c',0,'2018-11-15 21:25:27',0),('431c0cad-d89b-6de2-7c39-5ba569901974','9d130d73-a70f-3968-3f2d-5ba5646c12e9','3e0edc46-5001-c43a-86b8-5ba560239f90',0,'2018-11-15 21:25:27',0),('47040ffd-044d-51ad-5d7c-5ba5695b17d5','9d130d73-a70f-3968-3f2d-5ba5646c12e9','544650bf-2d26-4991-57f6-5ba5608cdc27',0,'2018-11-15 21:25:27',0),('47040a57-a81b-84fc-13bd-5ba569834368','9d130d73-a70f-3968-3f2d-5ba5646c12e9','39e850a4-234e-71d8-45ea-5ba560338e8c',0,'2018-11-15 21:25:27',0),('4aec065d-96b7-071f-8222-5ba569ecdd4f','9d130d73-a70f-3968-3f2d-5ba5646c12e9','338f5a97-d633-0c5d-6fa7-5ba56047cdfb',0,'2018-11-15 21:25:27',0),('4ed40cd3-0e0d-6fee-d5d2-5ba569d182ad','9d130d73-a70f-3968-3f2d-5ba5646c12e9','45a059ab-2f52-ab82-5cb8-5ba560fbbb05',0,'2018-11-15 21:25:27',0),('4ed40293-a528-8f19-05a3-5ba56926626f','9d130d73-a70f-3968-3f2d-5ba5646c12e9','413b5536-b4c6-285c-0433-5ba560966bb3',0,'2018-11-15 21:25:27',0),('52bc0c2a-2071-d5f9-61f4-5ba569725523','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4e6a57ac-6ecb-7c07-bb73-5ba5607301a2',0,'2018-11-15 21:25:27',0),('56a4066a-55d4-6c69-21bf-5ba5695eec8e','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4a43d8cf-2ce9-39ac-e800-5ba560ec0ce0',0,'2018-11-15 21:25:27',0),('56a40a7c-e15c-9422-e83d-5ba56938e9a3','9d130d73-a70f-3968-3f2d-5ba5646c12e9','3c97d1d7-5dac-13e9-370e-5ba5605b414a',0,'2018-11-15 21:25:27',0),('5a8c0387-f729-e81b-7521-5ba569d14b0f','9d130d73-a70f-3968-3f2d-5ba5646c12e9','530dd0dc-2b75-71f4-74f3-5ba560e54fee',0,'2018-11-15 21:25:27',0),('5e740ad5-a4b9-e585-567e-5ba569b29734','9d130d73-a70f-3968-3f2d-5ba5646c12e9','3832d55c-5340-e569-4ea5-5ba56024c855',0,'2018-11-15 21:25:27',0),('625c007d-6e6f-4d31-6ae4-5ba56918c61c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','eaaa593e-b2e0-745b-50ba-5ba5602b7233',0,'2018-11-15 21:25:27',0),('625c0360-6ded-153c-672d-5ba569e51365','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8975094f-c2c7-3148-0ac7-5ba560b7aff3',0,'2018-11-15 21:25:27',0),('6644027f-7349-6244-56fb-5ba56931c456','9d130d73-a70f-3968-3f2d-5ba5646c12e9','43250dc5-1a96-8e18-8975-5ba5603473db',0,'2018-11-15 21:25:27',0),('6a2c0c8c-6c9d-6488-d994-5ba5693c0a4e','9d130d73-a70f-3968-3f2d-5ba5646c12e9','119fd8bb-cba4-266b-458f-5ba560661d3c',0,'2018-11-15 21:25:27',0),('6a2c092a-5f0a-711e-d93e-5ba569dde0c9','9d130d73-a70f-3968-3f2d-5ba5646c12e9','cfc50c3e-6bc2-03af-2f54-5ba560028cf3',0,'2018-11-15 21:25:27',0),('6e1409be-0713-2dfc-bde9-5ba569e0f994','9d130d73-a70f-3968-3f2d-5ba5646c12e9','bd000da8-3324-84f2-9b09-5ba560de62ca',0,'2018-11-15 21:25:27',0),('71fc0387-7974-5a72-494f-5ba569658b6e','9d130d73-a70f-3968-3f2d-5ba5646c12e9','16435f4b-8236-537d-36f6-5ba560aec1eb',0,'2018-11-15 21:25:27',0),('71fc060a-d273-e19f-81e5-5ba569920fe2','9d130d73-a70f-3968-3f2d-5ba5646c12e9','ef8c5eb7-121d-40ca-c561-5ba5608654ef',0,'2018-11-15 21:25:27',0),('75e40536-211d-ff4f-e9f7-5ba56936944b','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e0a7d212-cc6d-cdab-0f01-5ba5609788f7',0,'2018-11-15 21:25:27',0),('79cc0f5a-0943-350e-4740-5ba569986390','9d130d73-a70f-3968-3f2d-5ba5646c12e9','f1bed56e-c3f7-e3a5-ca99-5ba560318fb7',0,'2018-11-15 21:25:27',0),('79cc0ca3-37d6-6f3d-6dcc-5ba569909812','9d130d73-a70f-3968-3f2d-5ba5646c12e9','ed9855f4-6709-dd83-ea9a-5ba5605a70ae',0,'2018-11-15 21:25:27',0),('7db4085a-1682-9ff3-3889-5ba56954f9db','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5e7d0588-7e26-e535-5898-5ba560479de1',0,'2018-11-15 21:25:27',0),('819c070a-510d-6861-ec65-5ba569d8f7a2','9d130d73-a70f-3968-3f2d-5ba5646c12e9','1c150a1f-5375-bfb7-0b5c-5ba560034aed',0,'2018-11-15 21:25:27',0),('8584076e-cbe6-b774-b5b4-5ba569675d96','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e9335d25-906d-7ca8-1ca5-5ba560cc48db',0,'2018-11-15 21:25:27',0),('8584024e-5b6d-99ce-7bad-5ba569949b83','9d130d73-a70f-3968-3f2d-5ba5646c12e9','a4cd0720-d3e0-a2fc-9fc1-5ba56020642b',0,'2018-11-15 21:25:27',0),('896c0e36-a2da-8060-4dee-5ba569f8486f','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e50cdc5a-0643-ece7-92dd-5ba560331069',0,'2018-11-15 21:25:27',0),('8d54037e-64f5-5f51-6c56-5ba5693437b0','9d130d73-a70f-3968-3f2d-5ba5646c12e9','33850e7b-0543-0f4d-1f3e-5ba560e6be93',0,'2018-11-15 21:25:27',0),('8d540704-3070-f90c-0b02-5ba569c97f03','9d130d73-a70f-3968-3f2d-5ba5646c12e9','15c6545d-ac4c-d867-44d6-5ba56035cf40',0,'2018-11-15 21:25:27',0),('913c0592-57fe-dd56-f7e3-5ba569802668','9d130d73-a70f-3968-3f2d-5ba5646c12e9','10e4553d-56e8-73e7-fdc0-5ba560a9157d',0,'2018-11-15 21:25:27',0),('952408d7-c555-2172-68f4-5ba5697053d7','9d130d73-a70f-3968-3f2d-5ba5646c12e9','1f4bdd49-b84d-efed-69e7-5ba5609c188a',0,'2018-11-15 21:25:27',0),('952400c8-123e-a37e-f8f3-5ba569127793','9d130d73-a70f-3968-3f2d-5ba5646c12e9','1a69dad4-6f75-4817-2645-5ba5601e7a7d',0,'2018-11-15 21:25:27',0),('990c00be-0b78-d756-2761-5ba56909c0b5','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c40d0655-7d73-668b-0079-5ba560be55a7',0,'2018-11-15 21:25:27',0),('9cf4041d-d43d-8840-aa15-5ba569b3270c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','242dd503-7c45-86ad-8659-5ba560708c24',0,'2018-11-15 21:25:27',0),('9cf40103-9d0a-f569-9254-5ba56997e49f','9d130d73-a70f-3968-3f2d-5ba5646c12e9','7dbd030e-83e9-46c6-050b-5ba560942606',0,'2018-11-15 21:25:27',0),('a0dc07d4-a694-1d3d-450b-5ba569ed5694','9d130d73-a70f-3968-3f2d-5ba5646c12e9','bff0d409-2019-8c0f-bb40-5ba56084f010',0,'2018-11-15 21:25:27',0),('a4c406ed-f73c-dae6-9e26-5ba569900e6e','9d130d73-a70f-3968-3f2d-5ba5646c12e9','d1c35210-9779-cd70-f11a-5ba560f73bc6',0,'2018-11-15 21:25:27',0),('a4c401ed-1520-5f02-838e-5ba569f95ed4','9d130d73-a70f-3968-3f2d-5ba5646c12e9','cd5e5080-0626-7ed8-c7c3-5ba5602ab434',0,'2018-11-15 21:25:27',0),('a8ac0b2e-fcdf-504b-42d7-5ba5697cd38d','9d130d73-a70f-3968-3f2d-5ba5646c12e9','db0a5c2a-e9bb-ab5e-73af-5ba560848618',0,'2018-11-15 21:25:27',0),('ac940d3c-04dd-da97-6a46-5ba5698aebab','9d130d73-a70f-3968-3f2d-5ba5646c12e9','d666de34-8b75-8c51-d6aa-5ba560313577',0,'2018-11-15 21:25:27',0),('ac940adb-94e3-f6ae-569a-5ba569fd3cec','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c8f95fc4-3082-2cd2-ad7d-5ba560635b1e',0,'2018-11-15 21:25:27',0),('b07c0d93-f1b8-9033-323f-5ba569932ff9','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e02ad153-a77d-7761-1678-5ba560b57799',0,'2018-11-15 21:25:27',0),('b4640356-ec47-b1b2-a515-5ba56928ae36','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c455d6ce-f955-b0a4-b27c-5ba5607ee44f',0,'2018-11-15 21:25:27',0),('b84c0275-b53a-a692-f7dd-5ba569325aac','9d130d73-a70f-3968-3f2d-5ba5646c12e9','a60fd9ad-3343-8630-b87a-5ba560744cf5',0,'2018-11-15 21:25:27',0),('b84c0664-0e93-da0a-4b48-5ba569dd0532','9d130d73-a70f-3968-3f2d-5ba5646c12e9','b7a3d619-27f3-351a-8fde-5ba560783537',0,'2018-11-15 21:25:27',0),('bc3400e2-88d7-8be6-eed1-5ba56961a3d7','9d130d73-a70f-3968-3f2d-5ba5646c12e9','b33eda66-6ed9-9db4-00b0-5ba560b1f0f2',0,'2018-11-15 21:25:27',0),('c01c0d89-9218-cc1b-2276-5ba569c1bd0d','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c02f56f5-11af-993a-92f4-5ba560c51bb8',0,'2018-11-15 21:25:27',0),('c01c08c3-5146-3de4-4448-5ba5693865c8','9d130d73-a70f-3968-3f2d-5ba5646c12e9','bbca5963-fc43-bc26-e746-5ba5607e9e8f',0,'2018-11-15 21:25:27',0),('c4040a84-5174-307d-4cca-5ba5695c06a4','9d130d73-a70f-3968-3f2d-5ba5646c12e9','aed9de02-cbfa-0da0-382a-5ba560f1c331',0,'2018-11-15 21:25:27',0),('c7ec0648-e3d2-1d42-b204-5ba5693e6132','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c455db85-d903-ff16-2de3-5ba5604b3e04',0,'2018-11-15 21:25:27',0),('cbd403a1-50e2-5040-8418-5ba569055d4e','9d130d73-a70f-3968-3f2d-5ba5646c12e9','aa365358-29d3-72cb-f146-5ba56060fc07',0,'2018-11-15 21:25:27',0),('cbd4015b-8825-1da6-402f-5ba569945245','9d130d73-a70f-3968-3f2d-5ba5646c12e9','a786d264-a383-9754-b1a1-5ba560583863',0,'2018-11-15 21:25:27',0),('cfbc0c09-26b0-656b-664d-5ba5694a887d','9d130d73-a70f-3968-3f2d-5ba5646c12e9','bad059a7-0d4e-84a4-7592-5ba56097c9de',0,'2018-11-15 21:25:27',0),('cfbc0c1f-c764-930f-fc45-5ba569e1ecd6','9d130d73-a70f-3968-3f2d-5ba5646c12e9','b66b584a-aeca-2335-aef7-5ba5606aac11',0,'2018-11-15 21:25:27',0),('d3a4018a-3cda-32d9-de81-5ba569d26da1','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c39a5eb4-4e5f-4425-da15-5ba56029e497',0,'2018-11-15 21:25:27',0),('d78c076e-cf76-3459-dda6-5ba5697c6c67','9d130d73-a70f-3968-3f2d-5ba5646c12e9','bf35503c-d8cd-9b61-42da-5ba560c64610',0,'2018-11-15 21:25:27',0),('d78c0639-5fc6-e688-0541-5ba569e0fa06','9d130d73-a70f-3968-3f2d-5ba5646c12e9','b1c7d5c0-696b-d995-f714-5ba560a71063',0,'2018-11-15 21:25:27',0),('db74088f-2432-94ad-c62c-5ba5698e054f','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c87c5586-9e0c-e1bc-b4a3-5ba560ca7d88',0,'2018-11-15 21:25:27',0),('db7406b2-be70-0f19-4cce-5ba56968c3eb','9d130d73-a70f-3968-3f2d-5ba5646c12e9','ace5dee4-fd45-84f1-9332-5ba5602954c4',0,'2018-11-15 21:25:27',0),('df5c0d0b-5ab1-18d8-6c06-5ba569dac88a','9d130d73-a70f-3968-3f2d-5ba5646c12e9','680cdd46-ee05-411f-981b-5ba5607027ca',0,'2018-11-15 21:25:27',0),('df5c04fa-af3f-3a70-abb7-5ba5697b8bf4','9d130d73-a70f-3968-3f2d-5ba5646c12e9','7a1dd1cd-47c1-4f1c-7691-5ba560d635af',0,'2018-11-15 21:25:27',0),('e3440ce8-f5d1-738e-efba-5ba569364df3','9d130d73-a70f-3968-3f2d-5ba5646c12e9','75b8dc34-20c9-e5a8-5093-5ba5606a09ec',0,'2018-11-15 21:25:27',0),('e3440f5b-8423-b564-ae3b-5ba569e2c130','9d130d73-a70f-3968-3f2d-5ba5646c12e9','82e7da1b-c6af-8608-b7d0-5ba560f77f96',0,'2018-11-15 21:25:27',0),('e72c0ed6-8754-e19e-d186-5ba5692dc6c5','9d130d73-a70f-3968-3f2d-5ba5646c12e9','7e82df30-3af8-b4bb-ba33-5ba560fb35ac',0,'2018-11-15 21:25:27',0),('e72c051b-e0e8-138d-a815-5ba569f0d010','9d130d73-a70f-3968-3f2d-5ba5646c12e9','7153d287-163a-7c62-cd5c-5ba560039452',0,'2018-11-15 21:25:27',0),('eb140293-1bea-de39-ccdb-5ba56946ddff','9d130d73-a70f-3968-3f2d-5ba5646c12e9','874cd5d0-334f-a401-7ba1-5ba5602f3247',0,'2018-11-15 21:25:27',0),('eb140e94-c3ce-e6c3-7268-5ba569454641','9d130d73-a70f-3968-3f2d-5ba5646c12e9','6c71da37-c80b-b05e-ba52-5ba560841e9c',0,'2018-11-15 21:25:27',0),('eefc0007-fdc2-5381-1b90-5ba569ff1adc','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e3575796-8c4a-7b39-6f9a-5ba560ee2b3d',0,'2018-11-15 21:25:27',0),('eefc0e2c-5941-2f0f-fb6d-5ba569763351','9d130d73-a70f-3968-3f2d-5ba5646c12e9','182d0dd3-0ad2-60b0-a8fb-5ba5601de484',0,'2018-11-15 21:25:27',0),('f2e40dac-7490-6d35-53ce-5ba569f0f183','9d130d73-a70f-3968-3f2d-5ba5646c12e9','f141da32-71f6-528c-49c6-5ba560df60ad',0,'2018-11-15 21:25:27',0),('f6cc04c4-6d9a-e796-e253-5ba56925658e','9d130d73-a70f-3968-3f2d-5ba5646c12e9','a4cd0712-89e6-cbd0-4087-5ba5603ee1e1',0,'2018-11-15 21:25:27',0),('f6cc03c0-7113-30cb-d01b-5ba5690a5ca2','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5e7d0017-1614-8d28-510c-5ba560991219',0,'2018-11-15 21:25:27',0),('fab40c8f-8057-a6af-a689-5ba56936bfb7','9d130d73-a70f-3968-3f2d-5ba5646c12e9','ec9e52b9-a6cd-ed19-5982-5ba56048bdc2',0,'2018-11-15 21:25:27',0),('fab40580-46ab-1256-949f-5ba56945adc3','9d130d73-a70f-3968-3f2d-5ba5646c12e9','ef05092f-b4a4-b9af-ced0-5ba560630f74',0,'2018-11-15 21:25:27',0),('fe9c0a2d-c82e-b53d-d7e7-5ba569c903c1','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e7fadd8b-dd62-c328-6258-5ba560e97ea1',0,'2018-11-15 21:25:27',0),('fe9c094d-29ff-8335-7c56-5ba569aec6cd','9d130d73-a70f-3968-3f2d-5ba5646c12e9','b2835a6b-69b7-6755-dabb-5ba56089bfdf',-98,'2018-11-15 21:25:27',0),('10284827-5b3b-d483-2ff4-5ba569954065','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c3d8d2a6-fcd7-0756-4edc-5ba560adf509',0,'2018-11-15 21:25:27',0),('10284ce5-0949-c131-6aca-5ba56901d9f5','9d130d73-a70f-3968-3f2d-5ba5646c12e9','bf355c46-f8d8-515d-29fc-5ba5601a8537',0,'2018-11-15 21:25:27',0),('1066ced1-0454-8684-9a2e-5ba56979e934','9d130d73-a70f-3968-3f2d-5ba5646c12e9','cca2da23-3a0b-d77c-0823-5ba560a4a4a7',0,'2018-11-15 21:25:27',0),('1066c211-f127-ec20-f300-5ba569abf670','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c83dddaa-1190-5ff6-a985-5ba560237d0c',0,'2018-11-15 21:25:27',0),('10a5402d-a086-bdfb-5d74-5ba5695ed166','9d130d73-a70f-3968-3f2d-5ba5646c12e9','bb0eda93-8c40-86e1-7ad4-5ba560624361',0,'2018-11-15 21:25:27',0),('10a547ed-38f6-3149-bbd8-5ba569949940','9d130d73-a70f-3968-3f2d-5ba5646c12e9','d107d507-a1c8-192c-5f8e-5ba56008abd4',0,'2018-11-15 21:25:27',0),('10a5443d-263a-eb4d-4fee-5ba569d05be7','9d130d73-a70f-3968-3f2d-5ba5646c12e9','b6e8570a-fd1f-d4f5-4f89-5ba5601d76cb',0,'2018-11-15 21:25:27',0),('10e3c075-cf3b-6e9f-fb40-5ba5699396bd','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e73f5b1a-c845-ac26-db22-5ba5601d52f1',0,'2018-11-15 21:25:27',0),('10e3c869-8b76-88d5-f189-5ba5693759ba','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5a95018e-f01d-8805-0c78-5ba5609e0717',0,'2018-11-15 21:25:27',0),('11224b7f-c83b-568b-a4dd-5ba569fa21be','9d130d73-a70f-3968-3f2d-5ba5646c12e9','105d04e6-fb91-7cb3-c925-5ba560bfe1c6',0,'2018-11-15 21:25:27',0),('11224384-ddff-0905-779e-5ba569abe6af','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e7350a3b-2cf1-d0d0-8e5b-5ba560994d19',0,'2018-11-15 21:25:27',0),('1160c8bd-4c48-709b-f51f-5ba569a6239f','9d130d73-a70f-3968-3f2d-5ba5646c12e9','a0e50eb5-c52e-4e85-c17c-5ba560c865c3',0,'2018-11-15 21:25:27',0),('1160c782-6987-2d4a-56e5-5ba569bcc4b9','9d130d73-a70f-3968-3f2d-5ba5646c12e9','f0865143-ad50-0577-8003-5ba560b9e5eb',0,'2018-11-15 21:25:27',0),('119f4f24-b589-3395-b447-5ba569671ece','9d130d73-a70f-3968-3f2d-5ba5646c12e9','12d851ed-5bcb-4dd5-97d9-5ba560c93821',0,'2018-11-15 21:25:27',0),('119f43ce-23f2-c647-17fc-5ba56920cc2c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','ebe2d47d-949a-347e-2a2a-5ba56026cd5b',0,'2018-11-15 21:25:27',0),('11ddc945-d50e-8fa0-8ef6-5ba56933567a','9d130d73-a70f-3968-3f2d-5ba5646c12e9','81325e2f-2af4-b186-88ff-5ba560735dfa',0,'2018-11-15 21:25:27',0),('11ddc2d0-9470-fe27-c235-5ba5697828b4','9d130d73-a70f-3968-3f2d-5ba5646c12e9','9304d546-f1bc-bf7a-28f4-5ba560a4a5a0',0,'2018-11-15 21:25:27',0),('121c4596-37ed-fde9-25ed-5ba56964dc6b','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8e9fdea2-6680-9a7d-e75f-5ba560311de2',0,'2018-11-15 21:25:27',0),('121c413e-a794-92ac-8653-5ba569393d05','9d130d73-a70f-3968-3f2d-5ba5646c12e9','9c0d5968-3c41-299e-ea41-5ba5606538ed',0,'2018-11-15 21:25:27',0),('125acd6e-7863-16af-b0aa-5ba5698db709','9d130d73-a70f-3968-3f2d-5ba5646c12e9','9769de9d-e5a6-ce95-8d72-5ba56010f353',0,'2018-11-15 21:25:27',0),('125acd8f-df7a-8194-261c-5ba5692019e5','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8a3ada5a-ee2d-8f2b-5cd6-5ba560890b34',0,'2018-11-15 21:25:27',0),('12994c20-b96f-dd6a-1103-5ba569949985','9d130d73-a70f-3968-3f2d-5ba5646c12e9','a0725bf5-079b-31ce-f51c-5ba560930f1e',0,'2018-11-15 21:25:27',0),('12994c1a-2d9c-29e0-b8a9-5ba569fedaa7','9d130d73-a70f-3968-3f2d-5ba5646c12e9','85d5d92d-7ad1-fa1b-de83-5ba560ae8c4b',0,'2018-11-15 21:25:27',0),('12994398-ba75-b753-aedb-5ba5696f6979','9d130d73-a70f-3968-3f2d-5ba5646c12e9','ac9d0fc9-a593-33cd-146a-5ba560c76464',0,'2018-11-15 21:25:27',0),('12d7c082-d1d1-4461-e3e6-5ba56945189d','9d130d73-a70f-3968-3f2d-5ba5646c12e9','1cdadabc-0049-de5f-9b11-5ba5602139c3',0,'2018-11-15 21:25:27',0),('12d7ce5b-8031-b3ac-94b3-5ba56990b94b','9d130d73-a70f-3968-3f2d-5ba5646c12e9','1875dafb-e316-d593-2cb1-5ba5608afd95',0,'2018-11-15 21:25:27',0),('131647b5-d286-353a-a124-5ba569716ee4','9d130d73-a70f-3968-3f2d-5ba5646c12e9','25e355aa-0d62-6a2e-b7a8-5ba56001d2bf',0,'2018-11-15 21:25:27',0),('13164fca-0f5d-82ed-42ba-5ba5690f943e','9d130d73-a70f-3968-3f2d-5ba5646c12e9','217e505b-c06a-b96f-cb35-5ba5609ef9bb',0,'2018-11-15 21:25:27',0),('1354cc4f-1d39-5541-310b-5ba5698f8f90','9d130d73-a70f-3968-3f2d-5ba5646c12e9','13d250ef-f83a-0056-a258-5ba5607f5dfe',0,'2018-11-15 21:25:27',0),('1354c874-bebd-9055-0798-5ba569749688','9d130d73-a70f-3968-3f2d-5ba5646c12e9','2a86d305-d671-d90e-770c-5ba560c78a7f',0,'2018-11-15 21:25:27',0),('13934eca-168f-7826-6511-5ba569b99687','9d130d73-a70f-3968-3f2d-5ba5646c12e9','f2ed014f-ddd6-4b0d-039a-5ba5608876e2',0,'2018-11-15 21:25:27',0),('13934ed3-3cb5-bb1d-b94a-5ba569381e56','9d130d73-a70f-3968-3f2d-5ba5646c12e9','45a05ea4-41dd-5866-09fb-5ba560c847dd',0,'2018-11-15 21:25:27',0),('13d1c509-9eea-b776-4474-5ba569551a1e','9d130d73-a70f-3968-3f2d-5ba5646c12e9','573451e3-9e15-789a-6528-5ba560112f26',0,'2018-11-15 21:25:27',0),('13d1c3a8-d2f5-3846-d3bf-5ba569ce14e4','9d130d73-a70f-3968-3f2d-5ba5646c12e9','530dd676-b6df-f95f-8cf3-5ba560075d14',0,'2018-11-15 21:25:27',0),('14104c12-fe4a-1225-9584-5ba5698be40d','9d130d73-a70f-3968-3f2d-5ba5646c12e9','60b9d22a-e9e1-5ec6-59b9-5ba56085f705',0,'2018-11-15 21:25:27',0),('144ec170-a21d-a6cf-e6a0-5ba569c3c953','9d130d73-a70f-3968-3f2d-5ba5646c12e9','5c165099-c531-7f1f-ff41-5ba5606d29ca',0,'2018-11-15 21:25:27',0),('144eca34-b285-e4e5-b8c0-5ba5691d56ec','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4ea8d172-bbe5-7867-ce50-5ba5607c8d5b',0,'2018-11-15 21:25:27',0),('148d4042-e882-b441-7952-5ba569dca302','9d130d73-a70f-3968-3f2d-5ba5646c12e9','651ed954-9365-806d-0731-5ba560d3326b',0,'2018-11-15 21:25:27',0),('148d4c59-65d2-73c8-cea7-5ba56925feb1','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4a825bdb-289d-46d4-87e8-5ba560dde2f5',0,'2018-11-15 21:25:27',0),('14cbc9e8-0bbd-6369-bb38-5ba569da1486','9d130d73-a70f-3968-3f2d-5ba5646c12e9','897f5e99-d705-8c8f-cea5-5ba560ac8425',0,'2018-11-15 21:25:27',0),('14cbcd5f-9905-6a9f-0a27-5ba569e3c7c6','9d130d73-a70f-3968-3f2d-5ba5646c12e9','9c0d5f11-9c04-b997-94dd-5ba560aae77e',0,'2018-11-15 21:25:27',0),('150a4a9d-01ae-dec9-e536-5ba5692d78b9','9d130d73-a70f-3968-3f2d-5ba5646c12e9','9769d0a8-0385-47d5-7deb-5ba560f77a47',0,'2018-11-15 21:25:27',0),('150a4151-2a0c-ccf8-d0ea-5ba569f8cbd0','9d130d73-a70f-3968-3f2d-5ba5646c12e9','a45a5139-52f4-47d7-4ea7-5ba560f0e9ab',0,'2018-11-15 21:25:27',0),('1548c129-74b2-785c-2a78-5ba569d05133','9d130d73-a70f-3968-3f2d-5ba5646c12e9','a033d988-b413-6586-45bf-5ba5606751e4',0,'2018-11-15 21:25:27',0),('1548cd38-8f51-7768-b47f-5ba5692329c5','9d130d73-a70f-3968-3f2d-5ba5646c12e9','92c65b90-9eb3-4e4c-3308-5ba560680ea2',0,'2018-11-15 21:25:27',0),('158743e2-e405-10f4-dd97-5ba56919e68d','9d130d73-a70f-3968-3f2d-5ba5646c12e9','a8bf5718-1255-ee45-5e2e-5ba560606ab1',0,'2018-11-15 21:25:27',0),('158745bd-ec8c-d25a-858f-5ba56945e842','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8e615858-352d-02c7-b71f-5ba5609687f2',0,'2018-11-15 21:25:27',0),('15c5c5bc-353e-a624-d9b0-5ba569277bb8','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c3d8da9c-f763-3be4-3453-5ba5605fdffa',0,'2018-11-15 21:25:27',0),('15c5c03a-73d7-5909-3b53-5ba5695760a7','9d130d73-a70f-3968-3f2d-5ba5646c12e9','d52e547d-0eaa-20c2-522e-5ba560af93e5',0,'2018-11-15 21:25:27',0),('1604470c-0f25-fce1-f511-5ba569b73877','9d130d73-a70f-3968-3f2d-5ba5646c12e9','d0c95ae2-7651-51f8-ad20-5ba56041acef',0,'2018-11-15 21:25:27',0),('1604408b-85de-9e0b-889c-5ba569d6ada9','9d130d73-a70f-3968-3f2d-5ba5646c12e9','de755d1a-efc3-9e91-20b3-5ba560c1458c',0,'2018-11-15 21:25:27',0),('1642c550-377b-03d3-ffc2-5ba569f6db1f','9d130d73-a70f-3968-3f2d-5ba5646c12e9','d9d1d7bc-179d-1e11-a19c-5ba5604ef5e7',0,'2018-11-15 21:25:27',0),('1642c341-a48b-fd0f-ca6d-5ba56950501d','9d130d73-a70f-3968-3f2d-5ba5646c12e9','cca2da37-6040-8fcc-1af8-5ba560c1ba30',0,'2018-11-15 21:25:27',0),('16814347-2c68-6ca9-db51-5ba5693c6fdf','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e2da5bb7-3371-b853-62bf-5ba5609cf98a',0,'2018-11-15 21:25:27',0),('16bfcbd2-a18d-e7e5-05f2-5ba56938db63','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c83dd3d6-f1f8-1acf-0e05-5ba5608e936c',0,'2018-11-15 21:25:27',0),('16bfce01-898a-f2ea-81a7-5ba5698dd606','9d130d73-a70f-3968-3f2d-5ba5646c12e9','b571519e-5a1c-b5e2-87ef-5ba5609af23a',0,'2018-11-15 21:25:27',0),('16fe475b-9b24-b893-6e59-5ba569100551','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c87c5f87-95ee-d54d-6fb8-5ba560c69a17',0,'2018-11-15 21:25:27',0),('16fe42e7-b025-5547-de0e-5ba56980fbe4','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c39a5018-cbe8-6f14-cd40-5ba560fe95eb',0,'2018-11-15 21:25:27',0),('173cc664-85d0-847e-79fe-5ba569425e34','9d130d73-a70f-3968-3f2d-5ba5646c12e9','d240570e-cc57-ea27-aaa7-5ba56036614c',0,'2018-11-15 21:25:27',0),('177b4d05-f272-5af8-f9d4-5ba569724657','9d130d73-a70f-3968-3f2d-5ba5646c12e9','cd5e5075-aabc-1446-b6f4-5ba5607e2be4',0,'2018-11-15 21:25:27',0),('177b4944-7e42-7e4c-ffbd-5ba569bfcf0b','9d130d73-a70f-3968-3f2d-5ba5646c12e9','be79daa8-1735-c5ed-a388-5ba560c79f2b',0,'2018-11-15 21:25:27',0),('17b9c861-6d4e-b440-ec16-5ba56975ca0b','9d130d73-a70f-3968-3f2d-5ba5646c12e9','d760d352-1afe-43c4-a2b9-5ba560c30911',0,'2018-11-15 21:25:27',0),('17b9c110-aee4-e24d-a80c-5ba56932ef91','9d130d73-a70f-3968-3f2d-5ba5646c12e9','b9d65938-6822-7ce3-df87-5ba560918d7a',0,'2018-11-15 21:25:27',0),('17f84503-5862-da5d-4c89-5ba569fbc0cf','9d130d73-a70f-3968-3f2d-5ba5646c12e9','7a9ad655-9559-1d7a-4de5-5ba560f46f8b',0,'2018-11-15 21:25:27',0),('1836c5ee-731b-cb75-fe4e-5ba5694f8e08','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8d6755f0-8f67-3cd6-1547-5ba560e702fb',0,'2018-11-15 21:25:27',0),('1836cece-ebc7-5fd6-47dc-5ba5695aa100','9d130d73-a70f-3968-3f2d-5ba5646c12e9','888551a9-f89d-421f-8713-5ba560301950',0,'2018-11-15 21:25:27',0),('18754f8b-bc9b-231d-168e-5ba569dccef6','9d130d73-a70f-3968-3f2d-5ba5646c12e9','972b5b1b-4512-977d-228b-5ba560dc9e56',0,'2018-11-15 21:25:27',0),('1875415d-fdea-3ff3-1b78-5ba569ab34ec','9d130d73-a70f-3968-3f2d-5ba5646c12e9','92495633-8c3c-ac11-3682-5ba5603f0c05',0,'2018-11-15 21:25:27',0),('18b3c130-09e9-8051-1a39-5ba569c179d8','9d130d73-a70f-3968-3f2d-5ba5646c12e9','84205924-7f97-42fe-4d62-5ba5606d9b35',0,'2018-11-15 21:25:27',0),('18f247d9-e369-91dd-fac1-5ba5692b4644','9d130d73-a70f-3968-3f2d-5ba5646c12e9','9c4bda06-c474-29c3-18c0-5ba56085c972',0,'2018-11-15 21:25:27',0),('18f2453f-74c2-1019-e93f-5ba5697a0c8d','9d130d73-a70f-3968-3f2d-5ba5646c12e9','7f7cde83-a345-1594-534c-5ba56053afaf',0,'2018-11-15 21:25:27',0),('1930cf1c-e28b-ac92-ffa5-5ba569ccf3ee','9d130d73-a70f-3968-3f2d-5ba5646c12e9','7effd9aa-7f2e-3afd-f031-5ba560d74735',0,'2018-11-15 21:25:27',0),('1930c8bb-ced4-972c-995e-5ba5698d71b9','9d130d73-a70f-3968-3f2d-5ba5646c12e9','9093d6fa-c126-4193-7d66-5ba5601aa07a',0,'2018-11-15 21:25:27',0),('196f4d6e-58f8-a9db-b0f2-5ba56935f41e','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8c2eda0f-626a-c5fa-3c9f-5ba5601ea948',0,'2018-11-15 21:25:27',0),('196f4f3f-7475-938d-4dc4-5ba569fedc5a','9d130d73-a70f-3968-3f2d-5ba5646c12e9','99dad990-b01f-524b-bd5e-5ba5605e8b07',0,'2018-11-15 21:25:27',0),('19adc35b-0d3b-e7e0-f291-5ba5691c5640','9d130d73-a70f-3968-3f2d-5ba5646c12e9','95375439-990a-ce8e-386f-5ba5605a60da',0,'2018-11-15 21:25:27',0),('19ec41c2-1c23-f367-4a7b-5ba569c5ac49','9d130d73-a70f-3968-3f2d-5ba5646c12e9','87c9d69c-71b2-3044-2729-5ba5602645d3',0,'2018-11-15 21:25:27',0),('19ec449a-b1e3-6cdf-9bbc-5ba56966c317','9d130d73-a70f-3968-3f2d-5ba5646c12e9','9e3fd76e-dd2d-156f-b40f-5ba56079eace',0,'2018-11-15 21:25:27',0),('1a2aca7c-e690-a193-2b1a-5ba5696af57b','9d130d73-a70f-3968-3f2d-5ba5646c12e9','8364dbda-92d3-21a1-bfac-5ba560e4c9e9',0,'2018-11-15 21:25:27',0),('1a69441e-8144-fb20-6dd3-5ba569ecd44c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','2d365fa4-0f3c-83bd-4760-5ba560d0e979',0,'2018-11-15 21:25:27',0),('1a69467b-a0b8-73c1-1c23-5ba5694aced6','9d130d73-a70f-3968-3f2d-5ba5646c12e9','3e8bd0c5-1433-c1d8-ea9a-5ba560a6aeaa',0,'2018-11-15 21:25:27',0),('1aa7cef4-68e2-916c-6dc8-5ba569a91e47','9d130d73-a70f-3968-3f2d-5ba5646c12e9','3a6553a4-bf90-c7c2-d546-5ba5604da26d',0,'2018-11-15 21:25:27',0),('1ae64bfd-dc9e-9909-10a7-5ba569577b1c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','47945725-f9ef-4a05-de15-5ba560bf67ff',0,'2018-11-15 21:25:27',0),('1ae64e00-a8c5-7c30-50ec-5ba569309b4c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','42b25a40-e69a-773d-e79c-5ba560b78640',0,'2018-11-15 21:25:27',0),('1b24cfb4-8a86-cb4b-a240-5ba5691dd8e9','9d130d73-a70f-3968-3f2d-5ba5646c12e9','360057fc-d1d1-8531-47bd-5ba56047d942',0,'2018-11-15 21:25:27',0),('1b63483b-8224-810c-769c-5ba56905fdcb','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4bf95c11-df7b-a178-825a-5ba560c7b22e',0,'2018-11-15 21:25:27',0),('1b634adb-84aa-acdc-b10b-5ba569737298','9d130d73-a70f-3968-3f2d-5ba5646c12e9','319b5255-4dc0-c6c9-4a95-5ba5609589dd',0,'2018-11-15 21:25:27',0),('1ba1c7ef-8332-cb33-7438-5ba569ad200b','9d130d73-a70f-3968-3f2d-5ba5646c12e9','edd6d0d3-672d-908b-51c1-5ba560aeb17b',0,'2018-11-15 21:25:27',0),('1ba1c23d-366a-8d50-b5f4-5ba5692e25a2','9d130d73-a70f-3968-3f2d-5ba5646c12e9','b8550284-d20d-d469-0acd-5ba5605d2a5f',0,'2018-11-15 21:25:27',0),('1be04ab5-58b2-f66d-4abf-5ba569f4d465','9d130d73-a70f-3968-3f2d-5ba5646c12e9','72050d04-8083-beaf-b05e-5ba56019bd06',0,'2018-11-15 21:25:27',0),('1c1ec634-648d-0e2b-525e-5ba569c1dcb9','9d130d73-a70f-3968-3f2d-5ba5646c12e9','148dd6ec-ad97-88af-f4c4-5ba560972eab',0,'2018-11-15 21:25:27',0),('1c1ec4f7-110b-8393-3d3b-5ba569e9e1b0','9d130d73-a70f-3968-3f2d-5ba5646c12e9','fea50746-29ce-0216-e5a6-5ba5605e154e',0,'2018-11-15 21:25:27',0),('1c5d4e09-cc1c-730f-b036-5ba569f65997','9d130d73-a70f-3968-3f2d-5ba5646c12e9','2bb506ed-c189-6f40-54fb-5ba560c25fdb',0,'2018-11-15 21:25:27',0),('1c5d42f0-a2ed-9305-55ac-5ba569ba78d2','9d130d73-a70f-3968-3f2d-5ba5646c12e9','193154b6-a400-8e23-427e-5ba560d283cf',0,'2018-11-15 21:25:27',0),('1c9bc6a7-0b98-b9b4-3b4a-5ba569111164','9d130d73-a70f-3968-3f2d-5ba5646c12e9','f23bdfdc-c338-2df1-6ae7-5ba5600bfd84',0,'2018-11-15 21:25:27',0),('f26db67a-0493-4836-5c4d-5ba5775be7a9','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c4111253-e351-7e4f-67fa-5ba573eb9b54',0,'2018-11-15 21:25:27',0),('f2ac4b8d-92d6-eca8-e35d-5ba577a4d2e8','9d130d73-a70f-3968-3f2d-5ba5646c12e9','f371b535-11ea-e329-09c2-5ba57367211c',0,'2018-11-15 21:25:27',0),('f2eacf4b-b13f-aaa3-867e-5ba577864b76','9d130d73-a70f-3968-3f2d-5ba5646c12e9','ed95423b-728d-73bc-0356-5ba573d143ff',0,'2018-11-15 21:25:27',0),('f3294481-cd70-c2b2-1e2f-5ba577fa232c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c3f30685-558a-3aec-8942-5ba5736661b4',0,'2018-11-15 21:25:27',0),('f3294c2d-9338-dcc6-9a7d-5ba577aa343b','9d130d73-a70f-3968-3f2d-5ba5646c12e9','568b0f52-b474-fd7a-3461-5ba573db525e',0,'2018-11-15 21:25:27',0),('f367cdd4-6221-d1c9-ca17-5ba5770fb40f','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e7b8d5b8-cfd0-d9fd-fefd-5ba5731f619d',0,'2018-11-15 21:25:27',0),('f3a64168-01fc-ba87-1e52-5ba5773f3f81','9d130d73-a70f-3968-3f2d-5ba5646c12e9','11dd2ec5-ab3f-9ca6-42f6-5ba57382c97c',0,'2018-11-15 21:25:27',0),('f3e4c55b-dca3-da14-7d36-5ba577d31fea','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e15f5b22-e07f-0da9-1aff-5ba573734fcf',0,'2018-11-15 21:25:27',0),('f3e4cfc9-748c-8801-685e-5ba577307314','9d130d73-a70f-3968-3f2d-5ba5646c12e9','28d1e629-0403-247a-0db1-5ba573e04488',89,'2018-11-15 21:25:27',0),('f42346f2-f2f0-0893-588b-5ba577bf4ecf','9d130d73-a70f-3968-3f2d-5ba5646c12e9','3cd871e7-3548-8ded-f69c-5ba573105e23',75,'2018-11-15 21:25:27',0),('3dc00557-e105-cef7-08a3-5ba5770017d2','9d130d73-a70f-3968-3f2d-5ba5646c12e9','37f61d3b-fcd7-0c01-4985-5ba57351ec58',75,'2018-11-15 21:25:27',0),('7c40084d-b042-7f4a-8dc2-5ba577dc7781','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4758ccd3-5a5a-4412-7dfc-5ba5731df4ee',0,'2018-11-15 21:25:27',0),('bac00cc7-d64a-2cc3-5334-5ba5776b05b1','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4237d0b2-0a20-a3e2-3269-5ba573372086',0,'2018-11-15 21:25:27',0),('f9500e0d-1efc-b183-21c9-5ba577a96334','9d130d73-a70f-3968-3f2d-5ba5646c12e9','32d52ecf-171c-8ab3-2a33-5ba5734e50df',90,'2018-11-15 21:25:27',0),('f95007ee-36f1-c2d5-710f-5ba577a0a16d','9d130d73-a70f-3968-3f2d-5ba5646c12e9','4c79a726-6388-bc98-d4a6-5ba5734aa1ff',0,'2018-11-15 21:25:27',0),('137d02fc-a7f4-04ee-4328-5ba577cc9bf1','9d130d73-a70f-3968-3f2d-5ba5646c12e9','2df2ce60-9e7e-c2de-00a3-5ba573be7cd3',90,'2018-11-15 21:25:27',0),('43d9bf49-aeb0-f3f7-e7b1-5ba5777ffc92','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c4111253-e351-7e4f-67fa-5ba573eb9b54',0,'2018-11-15 21:22:49',0),('44184346-c2af-8cdc-c860-5ba5774423c1','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','f371b535-11ea-e329-09c2-5ba57367211c',0,'2018-11-15 21:22:49',0),('44184305-88d8-62b1-5c10-5ba577b27abb','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','ed95423b-728d-73bc-0356-5ba573d143ff',0,'2018-11-15 21:22:49',0),('4456c9ed-3be7-b835-c753-5ba57759afaa','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c3f30685-558a-3aec-8942-5ba5736661b4',0,'2018-11-15 21:22:49',0),('4456c2b3-9b33-153f-138c-5ba577cae4f4','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','568b0f52-b474-fd7a-3461-5ba573db525e',0,'2018-11-15 21:22:49',0),('44954788-3fb8-2fcf-d68c-5ba5774758f7','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e7b8d5b8-cfd0-d9fd-fefd-5ba5731f619d',0,'2018-11-15 21:22:49',0),('44d3c157-be05-1368-0749-5ba57784cc60','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','11dd2ec5-ab3f-9ca6-42f6-5ba57382c97c',0,'2018-11-15 21:22:49',0),('44d3cb19-51fc-328d-991a-5ba577fc564f','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e15f5b22-e07f-0da9-1aff-5ba573734fcf',0,'2018-11-15 21:22:49',0),('45124fdd-f60a-755a-78a8-5ba577d0e77e','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','28d1e629-0403-247a-0db1-5ba573e04488',89,'2018-11-15 21:22:49',0),('45124822-5add-e6cc-1d95-5ba57796e1ef','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','3cd871e7-3548-8ded-f69c-5ba573105e23',-99,'2018-11-15 21:22:49',0),('4550c05a-63be-f7ad-2dc4-5ba577e4c617','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','37f61d3b-fcd7-0c01-4985-5ba57351ec58',-99,'2018-11-15 21:22:49',0),('4550ce10-4165-f50d-fb63-5ba577c5b0aa','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4758ccd3-5a5a-4412-7dfc-5ba5731df4ee',0,'2018-11-15 21:22:49',0),('458f4b48-e8bd-4a95-8abd-5ba577d017b5','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4237d0b2-0a20-a3e2-3269-5ba573372086',0,'2018-11-15 21:22:49',0),('458f4308-cce1-0775-6997-5ba5773265cb','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','32d52ecf-171c-8ab3-2a33-5ba5734e50df',90,'2018-11-15 21:22:49',0),('45cdcaf4-f464-afe1-3d4c-5ba5771a40ef','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','4c79a726-6388-bc98-d4a6-5ba5734aa1ff',0,'2018-11-15 21:22:49',0),('45cdc321-0b85-0e85-ef0c-5ba577baecab','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','2df2ce60-9e7e-c2de-00a3-5ba573be7cd3',90,'2018-11-15 21:22:49',0),('65e4d84c-c765-435a-6b98-5bc0e008c104','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','538ee9ae-54ba-d6c5-5eb3-5bc0d4c24921',89,'2018-11-15 21:22:49',0),('6855da9d-c0c0-2cc3-ebc4-5bc0e03f5ce8','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','c64de1c2-8e73-451e-5014-5bc0d4e8be9a',75,'2018-11-15 21:22:49',0),('6855dc9c-b70c-5b58-d52f-5bc0e04f0136','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','bc89ec68-592e-9e4a-517c-5bc0d45c4f54',75,'2018-11-15 21:22:49',0),('6855de42-9502-254b-91b6-5bc0e070a1f0','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','dc086dcc-685c-3128-532b-5bc0d44ed82b',0,'2018-11-15 21:22:49',0),('6855dcd2-cce3-8aae-374d-5bc0e02284b9','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','d050669a-c5ae-d0cd-4a23-5bc0d45f856e',0,'2018-11-15 21:22:49',0),('6855dc4e-0e1a-7313-5fb8-5bc0e0fdb0fc','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','b248eaa5-1408-a494-e934-5bc0d4277a4b',80,'2018-11-15 21:22:49',0),('6855d26f-3a41-ffbd-f50e-5bc0e0636d7f','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','e6c6641e-a6ea-96e8-ccc8-5bc0d40fc838',0,'2018-11-15 21:22:49',0),('6855d658-6ee5-17bb-c74e-5bc0e09e5665','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','a74c608b-cd37-d22c-2050-5bc0d4ccfecd',80,'2018-11-15 21:22:49',0),('9a5c060c-57f7-c960-17e8-5bedd7916ae5','9d130d73-a70f-3968-3f2d-5ba5646c12e9','538ee9ae-54ba-d6c5-5eb3-5bc0d4c24921',0,'2018-11-15 21:25:27',0),('9ad9000a-e925-adc2-21d0-5bedd77ecd83','9d130d73-a70f-3968-3f2d-5ba5646c12e9','c64de1c2-8e73-451e-5014-5bc0d4e8be9a',0,'2018-11-15 21:25:27',0),('9b560f8f-9136-30b3-94b6-5bedd70204a9','9d130d73-a70f-3968-3f2d-5ba5646c12e9','bc89ec68-592e-9e4a-517c-5bc0d45c4f54',0,'2018-11-15 21:25:27',0),('9b9480b3-7e45-b276-c060-5bedd742cf56','9d130d73-a70f-3968-3f2d-5ba5646c12e9','dc086dcc-685c-3128-532b-5bc0d44ed82b',0,'2018-11-15 21:25:27',0),('9bd30563-4e45-9a22-b5a6-5bedd7dd325c','9d130d73-a70f-3968-3f2d-5ba5646c12e9','d050669a-c5ae-d0cd-4a23-5bc0d45f856e',0,'2018-11-15 21:25:27',0),('9c5003fe-b5fb-4e49-66d3-5bedd73fdd69','9d130d73-a70f-3968-3f2d-5ba5646c12e9','b248eaa5-1408-a494-e934-5bc0d4277a4b',0,'2018-11-15 21:25:27',0),('9c8e821d-a17a-17c3-0517-5bedd7722b8f','9d130d73-a70f-3968-3f2d-5ba5646c12e9','e6c6641e-a6ea-96e8-ccc8-5bc0d40fc838',0,'2018-11-15 21:25:27',0),('9ccd09d5-b970-9a30-834f-5bedd7c0910f','9d130d73-a70f-3968-3f2d-5ba5646c12e9','a74c608b-cd37-d22c-2050-5bc0d4ccfecd',0,'2018-11-15 21:25:27',0);
/*!40000 ALTER TABLE `acl_roles_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `acl_roles_users`
--

DROP TABLE IF EXISTS `acl_roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aclrole_id` (`role_id`),
  KEY `idx_acluser_id` (`user_id`),
  KEY `idx_aclrole_user` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acl_roles_users`
--

LOCK TABLES `acl_roles_users` WRITE;
/*!40000 ALTER TABLE `acl_roles_users` DISABLE KEYS */;
INSERT INTO `acl_roles_users` VALUES ('d83b8188-0c33-231a-e1fa-5ba56752e12f','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','79537bf1-951c-9483-13e1-5ba567c42893','2018-09-21 21:50:39',0),('d93584ac-a5a3-cead-d42e-5ba5671045dc','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','79fc5856-a7ba-a277-8f30-5ba5661ee5d2','2018-09-21 21:50:39',0),('21faced6-3188-769d-e551-5ba56a86e5a2','9d130d73-a70f-3968-3f2d-5ba5646c12e9','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','2018-09-21 22:01:54',0),('e8f90d13-fbe1-0c81-72c0-5bedd582f849','9d130d73-a70f-3968-3f2d-5ba5646c12e9','928c090d-96a8-79b3-0df4-5bedd5fd29d9','2018-11-15 20:21:40',0),('6f2586fa-204c-1a60-1b03-5bedda3ddd54','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','928c090d-96a8-79b3-0df4-5bedd5fd29d9','2018-11-15 21:09:55',1),('7c548ed6-a3c9-1f7d-e30f-5bedda00ad33','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','2018-11-15 21:17:11',1);
/*!40000 ALTER TABLE `acl_roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL,
  KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alerts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `target_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url_redirect` varchar(255) DEFAULT NULL,
  `reminder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates`
--

DROP TABLE IF EXISTS `am_projecttemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `priority` varchar(100) DEFAULT 'High',
  `override_business_hours` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates`
--

LOCK TABLES `am_projecttemplates` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_audit`
--

DROP TABLE IF EXISTS `am_projecttemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_am_projecttemplates_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_audit`
--

LOCK TABLES `am_projecttemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_contacts_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_contacts_1_alt` (`am_projecttemplates_ida`,`contacts_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_contacts_1_c`
--

LOCK TABLES `am_projecttemplates_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_project_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_project_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_project_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_project_1am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_projecttemplates_project_1project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_project_1_ida1` (`am_projecttemplates_project_1am_projecttemplates_ida`),
  KEY `am_projecttemplates_project_1_alt` (`am_projecttemplates_project_1project_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_project_1_c`
--

LOCK TABLES `am_projecttemplates_project_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_project_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_projecttemplates_users_1_c`
--

DROP TABLE IF EXISTS `am_projecttemplates_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_projecttemplates_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_projecttemplates_users_1_alt` (`am_projecttemplates_ida`,`users_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_projecttemplates_users_1_c`
--

LOCK TABLES `am_projecttemplates_users_1_c` WRITE;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_projecttemplates_users_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates`
--

DROP TABLE IF EXISTS `am_tasktemplates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `priority` varchar(100) DEFAULT 'High',
  `percent_complete` int(255) DEFAULT '0',
  `predecessors` int(255) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT '0',
  `relationship_type` varchar(100) DEFAULT 'FS',
  `task_number` int(255) DEFAULT NULL,
  `order_number` int(255) DEFAULT NULL,
  `estimated_effort` int(255) DEFAULT NULL,
  `utilization` varchar(100) DEFAULT '0',
  `duration` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates`
--

LOCK TABLES `am_tasktemplates` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_am_projecttemplates_c`
--

DROP TABLE IF EXISTS `am_tasktemplates_am_projecttemplates_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates_am_projecttemplates_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `am_tasktemplates_am_projecttemplatesam_projecttemplates_ida` varchar(36) DEFAULT NULL,
  `am_tasktemplates_am_projecttemplatesam_tasktemplates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `am_tasktemplates_am_projecttemplates_ida1` (`am_tasktemplates_am_projecttemplatesam_projecttemplates_ida`),
  KEY `am_tasktemplates_am_projecttemplates_alt` (`am_tasktemplates_am_projecttemplatesam_tasktemplates_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_am_projecttemplates_c`
--

LOCK TABLES `am_tasktemplates_am_projecttemplates_c` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_am_projecttemplates_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `am_tasktemplates_audit`
--

DROP TABLE IF EXISTS `am_tasktemplates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `am_tasktemplates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_am_tasktemplates_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `am_tasktemplates_audit`
--

LOCK TABLES `am_tasktemplates_audit` WRITE;
/*!40000 ALTER TABLE `am_tasktemplates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `am_tasktemplates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aobh_businesshours`
--

DROP TABLE IF EXISTS `aobh_businesshours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aobh_businesshours` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `opening_hours` varchar(100) DEFAULT '1',
  `closing_hours` varchar(100) DEFAULT '1',
  `open` tinyint(1) DEFAULT NULL,
  `day` varchar(100) DEFAULT 'monday',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aobh_businesshours`
--

LOCK TABLES `aobh_businesshours` WRITE;
/*!40000 ALTER TABLE `aobh_businesshours` DISABLE KEYS */;
/*!40000 ALTER TABLE `aobh_businesshours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index`
--

DROP TABLE IF EXISTS `aod_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_index` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `last_optimised` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index`
--

LOCK TABLES `aod_index` WRITE;
/*!40000 ALTER TABLE `aod_index` DISABLE KEYS */;
INSERT INTO `aod_index` VALUES ('1','Index','2018-09-21 21:21:27','2018-09-21 21:21:27','1','1',NULL,0,NULL,NULL,'modules/AOD_Index/Index/Index');
/*!40000 ALTER TABLE `aod_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_index_audit`
--

DROP TABLE IF EXISTS `aod_index_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_index_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aod_index_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_index_audit`
--

LOCK TABLES `aod_index_audit` WRITE;
/*!40000 ALTER TABLE `aod_index_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_index_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent`
--

DROP TABLE IF EXISTS `aod_indexevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_indexevent` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `success` tinyint(1) DEFAULT '0',
  `record_id` char(36) DEFAULT NULL,
  `record_module` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_record_module` (`record_module`),
  KEY `idx_record_id` (`record_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent`
--

LOCK TABLES `aod_indexevent` WRITE;
/*!40000 ALTER TABLE `aod_indexevent` DISABLE KEYS */;
INSERT INTO `aod_indexevent` VALUES ('3e8b4022-92ce-52f8-6a9c-5ba56acee754','Compte de recrutement [P0082]','2018-09-21 22:04:28','2018-10-12 21:40:19','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4',NULL,0,'',NULL,1,'e9ee4d41-7a49-544c-c2c7-5ba56a95b3fb','Accounts'),('49f44957-2d53-6105-b5c2-5ba578ebd83a','M. Jérémie Pillon','2018-09-21 23:02:48','2018-10-12 23:00:44','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4',NULL,0,'',NULL,1,'eebdb80f-916a-7997-04e7-5ba578db29e3','pat_Patients'),('ada97283-9928-a1ad-042d-5bc0f76d1c7d','','2018-10-12 19:36:08','2018-10-12 20:49:09','1','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4',NULL,0,'',NULL,1,'436d0e53-60b5-4fac-2d1f-5bc0f78a6e1d','ent_Entrevues'),('cae7a0fd-afd9-9763-30b3-5bc10e263bd7','','2018-10-12 21:12:58','2018-10-12 21:20:04','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4',NULL,0,'',NULL,1,'a772d68a-c045-c139-17ac-5bc10e3b5ebc','ent_Entrevues'),('a3e73ee4-e12e-2719-d1cd-5bc10f39e3cc','','2018-10-12 21:19:25','2018-10-12 21:19:25','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4',NULL,0,NULL,NULL,1,'5af20162-b7e5-fbfe-3544-5bc10f488bf6','ent_Entrevues'),('d726833f-5999-f0eb-763a-5bedd7e36361','Compte de recrutement [P0085]','2018-11-15 20:29:22','2018-11-15 21:12:06','928c090d-96a8-79b3-0df4-5bedd5fd29d9','928c090d-96a8-79b3-0df4-5bedd5fd29d9',NULL,0,'',NULL,1,'44e90b16-1216-86eb-6d32-5bedd720e0a9','Accounts');
/*!40000 ALTER TABLE `aod_indexevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aod_indexevent_audit`
--

DROP TABLE IF EXISTS `aod_indexevent_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aod_indexevent_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aod_indexevent_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aod_indexevent_audit`
--

LOCK TABLES `aod_indexevent_audit` WRITE;
/*!40000 ALTER TABLE `aod_indexevent_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aod_indexevent_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledge_base_categories`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledge_base_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories`
--

LOCK TABLES `aok_knowledge_base_categories` WRITE;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledge_base_categories_audit`
--

DROP TABLE IF EXISTS `aok_knowledge_base_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledge_base_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aok_knowledge_base_categories_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledge_base_categories_audit`
--

LOCK TABLES `aok_knowledge_base_categories_audit` WRITE;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledge_base_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase`
--

DROP TABLE IF EXISTS `aok_knowledgebase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledgebase` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `revision` varchar(255) DEFAULT NULL,
  `additional_info` text,
  `user_id_c` char(36) DEFAULT NULL,
  `user_id1_c` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase`
--

LOCK TABLES `aok_knowledgebase` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase_audit`
--

DROP TABLE IF EXISTS `aok_knowledgebase_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledgebase_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aok_knowledgebase_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_audit`
--

LOCK TABLES `aok_knowledgebase_audit` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aok_knowledgebase_categories`
--

DROP TABLE IF EXISTS `aok_knowledgebase_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aok_knowledgebase_categories` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aok_knowledgebase_id` varchar(36) DEFAULT NULL,
  `aok_knowledge_base_categories_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aok_knowledgebase_categories_alt` (`aok_knowledgebase_id`,`aok_knowledge_base_categories_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aok_knowledgebase_categories`
--

LOCK TABLES `aok_knowledgebase_categories` WRITE;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aok_knowledgebase_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events`
--

DROP TABLE IF EXISTS `aop_case_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events`
--

LOCK TABLES `aop_case_events` WRITE;
/*!40000 ALTER TABLE `aop_case_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_events_audit`
--

DROP TABLE IF EXISTS `aop_case_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_events_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_events_audit`
--

LOCK TABLES `aop_case_events_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates`
--

DROP TABLE IF EXISTS `aop_case_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_updates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `internal` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates`
--

LOCK TABLES `aop_case_updates` WRITE;
/*!40000 ALTER TABLE `aop_case_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aop_case_updates_audit`
--

DROP TABLE IF EXISTS `aop_case_updates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aop_case_updates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aop_case_updates_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aop_case_updates_audit`
--

LOCK TABLES `aop_case_updates_audit` WRITE;
/*!40000 ALTER TABLE `aop_case_updates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aop_case_updates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_charts`
--

DROP TABLE IF EXISTS `aor_charts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_charts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `x_field` int(11) DEFAULT NULL,
  `y_field` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_charts`
--

LOCK TABLES `aor_charts` WRITE;
/*!40000 ALTER TABLE `aor_charts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_charts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_conditions`
--

DROP TABLE IF EXISTS `aor_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `logic_op` varchar(255) DEFAULT NULL,
  `parenthesis` varchar(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(100) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `parameter` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_conditions_index_report_id` (`aor_report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_conditions`
--

LOCK TABLES `aor_conditions` WRITE;
/*!40000 ALTER TABLE `aor_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_fields`
--

DROP TABLE IF EXISTS `aor_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_fields` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aor_report_id` char(36) DEFAULT NULL,
  `field_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `display` tinyint(1) DEFAULT NULL,
  `link` tinyint(1) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  `field_function` varchar(100) DEFAULT NULL,
  `sort_by` varchar(100) DEFAULT NULL,
  `format` varchar(100) DEFAULT NULL,
  `total` varchar(100) DEFAULT NULL,
  `sort_order` varchar(100) DEFAULT NULL,
  `group_by` tinyint(1) DEFAULT NULL,
  `group_order` varchar(100) DEFAULT NULL,
  `group_display` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aor_fields_index_report_id` (`aor_report_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_fields`
--

LOCK TABLES `aor_fields` WRITE;
/*!40000 ALTER TABLE `aor_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports`
--

DROP TABLE IF EXISTS `aor_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `report_module` varchar(100) DEFAULT NULL,
  `graphs_per_row` int(11) DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports`
--

LOCK TABLES `aor_reports` WRITE;
/*!40000 ALTER TABLE `aor_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_reports_audit`
--

DROP TABLE IF EXISTS `aor_reports_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_reports_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aor_reports_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_reports_audit`
--

LOCK TABLES `aor_reports_audit` WRITE;
/*!40000 ALTER TABLE `aor_reports_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_reports_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aor_scheduled_reports`
--

DROP TABLE IF EXISTS `aor_scheduled_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aor_scheduled_reports` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `schedule` varchar(100) DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `email_recipients` longtext,
  `aor_report_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aor_scheduled_reports`
--

LOCK TABLES `aor_scheduled_reports` WRITE;
/*!40000 ALTER TABLE `aor_scheduled_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `aor_scheduled_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts`
--

DROP TABLE IF EXISTS `aos_contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reference_code` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `total_contract_value` decimal(26,6) DEFAULT NULL,
  `total_contract_value_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `customer_signed_date` date DEFAULT NULL,
  `company_signed_date` date DEFAULT NULL,
  `renewal_reminder_date` datetime DEFAULT NULL,
  `contract_type` varchar(100) DEFAULT 'Type',
  `contract_account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts`
--

LOCK TABLES `aos_contracts` WRITE;
/*!40000 ALTER TABLE `aos_contracts` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_audit`
--

DROP TABLE IF EXISTS `aos_contracts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_contracts_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_audit`
--

LOCK TABLES `aos_contracts_audit` WRITE;
/*!40000 ALTER TABLE `aos_contracts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_contracts_documents`
--

DROP TABLE IF EXISTS `aos_contracts_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_contracts_documents` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_contracts_id` varchar(36) DEFAULT NULL,
  `documents_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_contracts_documents_alt` (`aos_contracts_id`,`documents_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_contracts_documents`
--

LOCK TABLES `aos_contracts_documents` WRITE;
/*!40000 ALTER TABLE `aos_contracts_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_contracts_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices`
--

DROP TABLE IF EXISTS `aos_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_invoices` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `number` int(11) NOT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `quote_number` int(11) DEFAULT NULL,
  `quote_date` date DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `template_ddown_c` text,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices`
--

LOCK TABLES `aos_invoices` WRITE;
/*!40000 ALTER TABLE `aos_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_invoices_audit`
--

DROP TABLE IF EXISTS `aos_invoices_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_invoices_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_invoices_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_invoices_audit`
--

LOCK TABLES `aos_invoices_audit` WRITE;
/*!40000 ALTER TABLE `aos_invoices_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_invoices_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups`
--

DROP TABLE IF EXISTS `aos_line_item_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_line_item_groups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups`
--

LOCK TABLES `aos_line_item_groups` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_line_item_groups_audit`
--

DROP TABLE IF EXISTS `aos_line_item_groups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_line_item_groups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_line_item_groups_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_line_item_groups_audit`
--

LOCK TABLES `aos_line_item_groups_audit` WRITE;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_line_item_groups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates`
--

DROP TABLE IF EXISTS `aos_pdf_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_pdf_templates` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `type` varchar(100) DEFAULT NULL,
  `pdfheader` text,
  `pdffooter` text,
  `margin_left` int(255) DEFAULT '15',
  `margin_right` int(255) DEFAULT '15',
  `margin_top` int(255) DEFAULT '16',
  `margin_bottom` int(255) DEFAULT '16',
  `margin_header` int(255) DEFAULT '9',
  `margin_footer` int(255) DEFAULT '9',
  `page_size` varchar(100) DEFAULT NULL,
  `orientation` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates`
--

LOCK TABLES `aos_pdf_templates` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_pdf_templates_audit`
--

DROP TABLE IF EXISTS `aos_pdf_templates_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_pdf_templates_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_pdf_templates_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_pdf_templates_audit`
--

LOCK TABLES `aos_pdf_templates_audit` WRITE;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_pdf_templates_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories`
--

DROP TABLE IF EXISTS `aos_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_product_categories` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_parent` tinyint(1) DEFAULT '0',
  `parent_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories`
--

LOCK TABLES `aos_product_categories` WRITE;
/*!40000 ALTER TABLE `aos_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_product_categories_audit`
--

DROP TABLE IF EXISTS `aos_product_categories_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_product_categories_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_product_categories_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_product_categories_audit`
--

LOCK TABLES `aos_product_categories_audit` WRITE;
/*!40000 ALTER TABLE `aos_product_categories_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_product_categories_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products`
--

DROP TABLE IF EXISTS `aos_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `maincode` varchar(100) DEFAULT 'XXXX',
  `part_number` varchar(25) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT 'Good',
  `cost` decimal(26,6) DEFAULT NULL,
  `cost_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `price` decimal(26,6) DEFAULT NULL,
  `price_usdollar` decimal(26,6) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `aos_product_category_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products`
--

LOCK TABLES `aos_products` WRITE;
/*!40000 ALTER TABLE `aos_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_audit`
--

DROP TABLE IF EXISTS `aos_products_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_audit`
--

LOCK TABLES `aos_products_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes`
--

DROP TABLE IF EXISTS `aos_products_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_quotes` (
  `id` char(36) NOT NULL,
  `name` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `part_number` varchar(255) DEFAULT NULL,
  `item_description` text,
  `number` int(11) DEFAULT NULL,
  `product_qty` decimal(18,4) DEFAULT NULL,
  `product_cost_price` decimal(26,6) DEFAULT NULL,
  `product_cost_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_list_price` decimal(26,6) DEFAULT NULL,
  `product_list_price_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount` decimal(26,6) DEFAULT NULL,
  `product_discount_usdollar` decimal(26,6) DEFAULT NULL,
  `product_discount_amount` decimal(26,6) DEFAULT NULL,
  `product_discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount` varchar(255) DEFAULT 'Percentage',
  `product_unit_price` decimal(26,6) DEFAULT NULL,
  `product_unit_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat_amt` decimal(26,6) DEFAULT NULL,
  `vat_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `product_total_price` decimal(26,6) DEFAULT NULL,
  `product_total_price_usdollar` decimal(26,6) DEFAULT NULL,
  `vat` varchar(100) DEFAULT '5.0',
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `product_id` char(36) DEFAULT NULL,
  `group_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aospq_par_del` (`parent_id`,`parent_type`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes`
--

LOCK TABLES `aos_products_quotes` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_products_quotes_audit`
--

DROP TABLE IF EXISTS `aos_products_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_products_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_products_quotes_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_products_quotes_audit`
--

LOCK TABLES `aos_products_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_products_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_products_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes`
--

DROP TABLE IF EXISTS `aos_quotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `approval_issue` text,
  `billing_account_id` char(36) DEFAULT NULL,
  `billing_contact_id` char(36) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `number` int(11) NOT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `template_ddown_c` text,
  `total_amt` decimal(26,6) DEFAULT NULL,
  `total_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `subtotal_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `discount_amount` decimal(26,6) DEFAULT NULL,
  `discount_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `tax_amount` decimal(26,6) DEFAULT NULL,
  `tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_amount` decimal(26,6) DEFAULT NULL,
  `shipping_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `shipping_tax` varchar(100) DEFAULT NULL,
  `shipping_tax_amt` decimal(26,6) DEFAULT NULL,
  `shipping_tax_amt_usdollar` decimal(26,6) DEFAULT NULL,
  `total_amount` decimal(26,6) DEFAULT NULL,
  `total_amount_usdollar` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `stage` varchar(100) DEFAULT 'Draft',
  `term` varchar(100) DEFAULT NULL,
  `terms_c` text,
  `approval_status` varchar(100) DEFAULT NULL,
  `invoice_status` varchar(100) DEFAULT 'Not Invoiced',
  `subtotal_tax_amount` decimal(26,6) DEFAULT NULL,
  `subtotal_tax_amount_usdollar` decimal(26,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes`
--

LOCK TABLES `aos_quotes` WRITE;
/*!40000 ALTER TABLE `aos_quotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_aos_invoices_c`
--

DROP TABLE IF EXISTS `aos_quotes_aos_invoices_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_aos_invoices_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes77d9_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes6b83nvoices_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_invoices_alt` (`aos_quotes77d9_quotes_ida`,`aos_quotes6b83nvoices_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_aos_invoices_c`
--

LOCK TABLES `aos_quotes_aos_invoices_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_aos_invoices_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_audit`
--

DROP TABLE IF EXISTS `aos_quotes_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aos_quotes_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_audit`
--

LOCK TABLES `aos_quotes_audit` WRITE;
/*!40000 ALTER TABLE `aos_quotes_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_os_contracts_c`
--

DROP TABLE IF EXISTS `aos_quotes_os_contracts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_os_contracts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotese81e_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes4dc0ntracts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_aos_contracts_alt` (`aos_quotese81e_quotes_ida`,`aos_quotes4dc0ntracts_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_os_contracts_c`
--

LOCK TABLES `aos_quotes_os_contracts_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_os_contracts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aos_quotes_project_c`
--

DROP TABLE IF EXISTS `aos_quotes_project_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aos_quotes_project_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `aos_quotes1112_quotes_ida` varchar(36) DEFAULT NULL,
  `aos_quotes7207project_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aos_quotes_project_alt` (`aos_quotes1112_quotes_ida`,`aos_quotes7207project_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aos_quotes_project_c`
--

LOCK TABLES `aos_quotes_project_c` WRITE;
/*!40000 ALTER TABLE `aos_quotes_project_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `aos_quotes_project_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_actions`
--

DROP TABLE IF EXISTS `aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_actions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `action_order` int(255) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `parameters` longtext,
  PRIMARY KEY (`id`),
  KEY `aow_action_index_workflow_id` (`aow_workflow_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_actions`
--

LOCK TABLES `aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_conditions`
--

DROP TABLE IF EXISTS `aow_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_conditions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `condition_order` int(255) DEFAULT NULL,
  `module_path` longtext,
  `field` varchar(100) DEFAULT NULL,
  `operator` varchar(100) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aow_conditions_index_workflow_id` (`aow_workflow_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_conditions`
--

LOCK TABLES `aow_conditions` WRITE;
/*!40000 ALTER TABLE `aow_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed`
--

DROP TABLE IF EXISTS `aow_processed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `aow_workflow_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Pending',
  PRIMARY KEY (`id`),
  KEY `aow_processed_index_workflow` (`aow_workflow_id`,`status`,`parent_id`,`deleted`),
  KEY `aow_processed_index_status` (`status`),
  KEY `aow_processed_index_workflow_id` (`aow_workflow_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed`
--

LOCK TABLES `aow_processed` WRITE;
/*!40000 ALTER TABLE `aow_processed` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_processed_aow_actions`
--

DROP TABLE IF EXISTS `aow_processed_aow_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_processed_aow_actions` (
  `id` varchar(36) NOT NULL,
  `aow_processed_id` varchar(36) DEFAULT NULL,
  `aow_action_id` varchar(36) DEFAULT NULL,
  `status` varchar(36) DEFAULT 'Pending',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aow_processed_aow_actions` (`aow_processed_id`,`aow_action_id`),
  KEY `idx_actid_del_freid` (`aow_action_id`,`deleted`,`aow_processed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_processed_aow_actions`
--

LOCK TABLES `aow_processed_aow_actions` WRITE;
/*!40000 ALTER TABLE `aow_processed_aow_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_processed_aow_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow`
--

DROP TABLE IF EXISTS `aow_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_workflow` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `flow_module` varchar(100) DEFAULT NULL,
  `flow_run_on` varchar(100) DEFAULT '0',
  `status` varchar(100) DEFAULT 'Active',
  `run_when` varchar(100) DEFAULT 'Always',
  `multiple_runs` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `aow_workflow_index_status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow`
--

LOCK TABLES `aow_workflow` WRITE;
/*!40000 ALTER TABLE `aow_workflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aow_workflow_audit`
--

DROP TABLE IF EXISTS `aow_workflow_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aow_workflow_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_aow_workflow_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aow_workflow_audit`
--

LOCK TABLES `aow_workflow_audit` WRITE;
/*!40000 ALTER TABLE `aow_workflow_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `aow_workflow_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs`
--

DROP TABLE IF EXISTS `bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bugsnumk` (`bug_number`),
  KEY `bug_number` (`bug_number`),
  KEY `idx_bug_name` (`name`),
  KEY `idx_bugs_assigned_user` (`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs`
--

LOCK TABLES `bugs` WRITE;
/*!40000 ALTER TABLE `bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bugs_audit`
--

DROP TABLE IF EXISTS `bugs_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_bugs_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bugs_audit`
--

LOCK TABLES `bugs_audit` WRITE;
/*!40000 ALTER TABLE `bugs_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `bugs_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls`
--

DROP TABLE IF EXISTS `calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_call_name` (`name`),
  KEY `idx_status` (`status`),
  KEY `idx_calls_date_start` (`date_start`),
  KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls`
--

LOCK TABLES `calls` WRITE;
/*!40000 ALTER TABLE `calls` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_contacts`
--

DROP TABLE IF EXISTS `calls_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_call_call` (`call_id`),
  KEY `idx_con_call_con` (`contact_id`),
  KEY `idx_call_contact` (`call_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_contacts`
--

LOCK TABLES `calls_contacts` WRITE;
/*!40000 ALTER TABLE `calls_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_leads`
--

DROP TABLE IF EXISTS `calls_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_call_call` (`call_id`),
  KEY `idx_lead_call_lead` (`lead_id`),
  KEY `idx_call_lead` (`call_id`,`lead_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_leads`
--

LOCK TABLES `calls_leads` WRITE;
/*!40000 ALTER TABLE `calls_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule`
--

DROP TABLE IF EXISTS `calls_reschedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_reschedule` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `call_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule`
--

LOCK TABLES `calls_reschedule` WRITE;
/*!40000 ALTER TABLE `calls_reschedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_reschedule_audit`
--

DROP TABLE IF EXISTS `calls_reschedule_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_reschedule_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_calls_reschedule_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_reschedule_audit`
--

LOCK TABLES `calls_reschedule_audit` WRITE;
/*!40000 ALTER TABLE `calls_reschedule_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_reschedule_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calls_users`
--

DROP TABLE IF EXISTS `calls_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_call_call` (`call_id`),
  KEY `idx_usr_call_usr` (`user_id`),
  KEY `idx_call_users` (`call_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calls_users`
--

LOCK TABLES `calls_users` WRITE;
/*!40000 ALTER TABLE `calls_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `calls_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_log`
--

DROP TABLE IF EXISTS `campaign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_camp_tracker` (`target_tracker_key`),
  KEY `idx_camp_campaign_id` (`campaign_id`),
  KEY `idx_camp_more_info` (`more_information`),
  KEY `idx_target_id` (`target_id`),
  KEY `idx_target_id_deleted` (`target_id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_log`
--

LOCK TABLES `campaign_log` WRITE;
/*!40000 ALTER TABLE `campaign_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_trkrs`
--

DROP TABLE IF EXISTS `campaign_trkrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(255) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `campaign_tracker_key_idx` (`tracker_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_trkrs`
--

LOCK TABLES `campaign_trkrs` WRITE;
/*!40000 ALTER TABLE `campaign_trkrs` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_trkrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns`
--

DROP TABLE IF EXISTS `campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `camp_auto_tracker_key` (`tracker_key`),
  KEY `idx_campaign_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns`
--

LOCK TABLES `campaigns` WRITE;
/*!40000 ALTER TABLE `campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaigns_audit`
--

DROP TABLE IF EXISTS `campaigns_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_campaigns_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaigns_audit`
--

LOCK TABLES `campaigns_audit` WRITE;
/*!40000 ALTER TABLE `campaigns_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaigns_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL,
  `state` varchar(100) DEFAULT 'Open',
  `contact_created_by_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `casesnumk` (`case_number`),
  KEY `case_number` (`case_number`),
  KEY `idx_case_name` (`name`),
  KEY `idx_account_id` (`account_id`),
  KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_audit`
--

DROP TABLE IF EXISTS `cases_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_cases_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_audit`
--

LOCK TABLES `cases_audit` WRITE;
/*!40000 ALTER TABLE `cases_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_bugs`
--

DROP TABLE IF EXISTS `cases_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_cas_bug_cas` (`case_id`),
  KEY `idx_cas_bug_bug` (`bug_id`),
  KEY `idx_case_bug` (`case_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_bugs`
--

LOCK TABLES `cases_bugs` WRITE;
/*!40000 ALTER TABLE `cases_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases_cstm`
--

DROP TABLE IF EXISTS `cases_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases_cstm`
--

LOCK TABLES `cases_cstm` WRITE;
/*!40000 ALTER TABLE `cases_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cim9`
--

DROP TABLE IF EXISTS `cim9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cim9` (
  `code` varchar(5) NOT NULL,
  `desc_en` varchar(24) DEFAULT NULL,
  `desc_fr` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cim9`
--

LOCK TABLES `cim9` WRITE;
/*!40000 ALTER TABLE `cim9` DISABLE KEYS */;
INSERT INTO `cim9` VALUES ('1000','Leptospiros icterohem','Leptospirose ictéro-hémorragique'),('1009','Leptospirosis NOS','Leptospirose - sans précision'),('101','Vincent\'s angina','Angine de vincent'),('1020','Initial lesions yaws','Pian, lésions initiales'),('1021','Multiple papillomata','Pian - papillomes multiples et pian plantaire'),('1022','Early skin yaws NEC','Pian, autres lésions cutanées primaires'),('1023','Hyperkeratosis of yaws','Pian - hyperkératose pianique'),('1024','Gummata and ulcers, yaws','Pian, gommes et ulcères'),('1025','Gangosa','Pian, gangosa'),('1026','Yaws of bone & joint','Pian, lésions osseuses et articulaires'),('1027','Yaws manifestations NEC','Pian, autres manifestations'),('1028','Latent yaws','Pian latent'),('1029','Yaws NOS','Pian - sans précision'),('1030','Pinta primary lesions','Pinta, lésions initiales'),('1031','Pinta intermed lesions','Pinta, lésions intermédiaires'),('1032','Pinta late lesions','Pinta, lésions tardives'),('1033','Pinta mixed lesions','Pinta, lésions mixtes'),('1039','Pinta NOS','Pinta - sans précision'),('1040','Nonvenereal endemic syph','Tréponématose endémique, non vénérienne'),('1048','Spirochetal infect NEC','Autres infections à spirochètes - autres'),('1049','Spirochetal infect NOS','Autres infections à spirochètes - sans précision'),('1100','Dermatophyt scalp/beard','Dermatophytoses du cuir chevelu et de la barbe'),('1101','Dermatophytosis of nail','Dermatophytoses de l\'ongle'),('1102','Dermatophytosis of hand','Dermatophytoses de la main'),('1103','Dermatophytosis of groin','Dermatophytoses de l\'aîne et de la région périanale'),('1104','Dermatophytosis of foot','Dermatophytoses du pied'),('1105','Dermatophytosis of body','Dermatophytoses de la peau glabre'),('1106','Deep dermatophytosis','Dermatophytoses profondes'),('1108','Dermatophytosis site NEC','Dermatophytoses - d\'autres sièges'),('1109','Dermatophytosis site NOS','Dermatophytoses de siège non précisé'),('1110','Pityriasis versicolor','Dermatomycoses, pityriasis versicolor'),('1111','Tinea nigra','Dermatomycoses, tinea nigra'),('1112','Tinea blanca','Dermatomycoses, piedra blanche'),('1113','Black piedra','Dermatomycoses, piedra noire'),('1118','Dermatomycoses NEC','Dermatomycoses - autres'),('1119','Dermatomycosis NOS','Dermatomycoses - sans précision'),('1120','Thrush','Candidoses, buccale'),('1121','Candidal vulvovaginitis','Candidoses, vulvo-vaginale'),('1122','Candidias urogenital NEC','Candidoses, d\'autres localisations uro-génitales'),('1123','Cutaneous candidiasis','Candidoses, de la peau et des ongles'),('1124','Candidiasis of lung','Candidoses, du poumon'),('1125','Disseminated candidiasis','Candidoses, disséminée'),('1129','Candidiasis site NOS','Candidoses, siège non précisé'),('1149','Coccidioidomycosis NOS','Coccidioïdomycose - sans précision'),('1160','Blastomycosis','Blastomycose'),('1161','Paracoccidioidomycosis','Paracoccidioïdomycose'),('1162','Lobomycosis','Lobomycose'),('1170','Rhinosporidiosis','Rhinosporidioses .'),('1171','Sporotrichosis','Sporotrichoses'),('1172','Chromoblastomycosis','Chromoblastomycoses'),('1173','Aspergillosis','Aspergilloses'),('1174','Mycotic mycetomas','Mycétomes vrais'),('1175','Cryptococcosis','Cryptococcoses'),('1176','Allescheriosis','Alleschérioses'),('1177','Zygomycosis','Zygomycétoses'),('1178','Dematiacious fungi inf','Dematiomycétoses'),('1179','Mycoses NEC & NOS','Autres mycoses - sans précision'),('118','Opportunistic mycoses','Autre tuberculose pulmunaire'),('1200','Schistosoma haematobium','Bilharzioses à schistosoma haematobium'),('1201','Schistosoma mansoni','Bilharzioses à schistosoma mansoni'),('1202','Schistosoma japonicum','Bilharzioses à schistosoma japonicum'),('1203','Cutaneous schistosoma','Bilharzioses (schistosomiases), cutanée'),('1208','Schistosomiasis NEC','Bilharzioses (schistosomiases) - autres'),('1209','Schistosomiasis NOS','Bilharzioses (schistosomiases) - sans précision'),('1210','Opisthorchiasis','Opistorchiase'),('1211','Clonorchiasis','Clonorchiase'),('1212','Paragonimiasis','Paragonimiase'),('1213','Fascioliasis','Distomatose à grande douve'),('1214','Fasciolopsiasis','Fasciolopsiase'),('1215','Metagonimiasis','Métagonimiase'),('1216','Heterophyiasis','Hétérophydiase'),('1218','Trematode infection NEC','Autres infections à trématodes - autres'),('1219','Trematode infection NOS','Autres infections à trématodes - sans précision'),('1220','Echinococc granul liver','Infection du foie à echinococcus granulosus'),('1221','Echinococc granul lung','Infection du poumon à echinococcus granulosus'),('1222','Echinococc gran thyroid','Infection de la thyroïde à echinocossus granulosus'),('1223','Echinococc granul NEC','Autres infections à echinococcus granulosus'),('1224','Echinococc granul NOS','Infection à echinocossus granulosus - sans précision'),('1225','Echinococ multiloc liver','Infection du foie à echinococcus multilocularis'),('1226','Echinococc multiloc NEC','Autres infections à echinococcus multilocularis'),('1227','Echinococc multiloc NOS','Infection à echinococcus multilocularis - sans précision'),('1228','Echinococcosis NOS liver','Echinococcose du foie - sans précision'),('1229','Echinococcosis NEC/NOS','Echinococcose - autre et sans précision'),('1230','Taenia solium intestine','Infection intestinale à taenia solium'),('1231','Cysticercosis','Cysticercose'),('1232','Taenia saginata infect','Infection à taenia saginata'),('1233','Taeniasis NOS','Infection à taenia - sans précision'),('1234','Diphyllobothrias intest','Infection intestinale à bothriocéphale'),('1235','Sparganosis','Sparganose'),('1236','Hymenolepiasis','Infection à hymenolepis'),('1238','Cestode infection NEC','Autres infections à cestodes - autres'),('1239','Cestode infection NOS','Autres infections à cestodes - sans précision'),('124','Trichinosis','Trichinose'),('1250','Bancroftian filariasis','Filariose et dracunculose, a wuchereria bancrofti'),('1251','Malayan filariasis','Filariose et dracunculose, a brugia'),('1252','Loiasis','Filariose et dracunculose, loaïase (loasis)'),('1253','Onchocerciasis','Filariose et dracunculose, onchocercose'),('1254','Dipetalonemiasis','Filariose et dracunculose, a dipetalonema perstans'),('1255','Mansonella ozzardi infec','Filariose et dracunculose, a mansonella ozzardi'),('1256','Filariasis NEC','Autres filaires précisées'),('1257','Dracontiasis','Dracunculose'),('1259','Filariasis NOS','Filariose - sans précision'),('1260','Ancylostoma duodenale','Ankylostomiase et nécatoriose a ancylostoma duodenale'),('1261','Necator Americanus','Ankylostomiase et nécatoriose a necator americanus'),('1262','Ancylostoma braziliense','Ankylostomiase et nécatoriose a ancylostoma brasiliense'),('1263','Ancylostoma ceylanicum','Ankylostomiase et nécatoriose a ancylostoma ceylanicum'),('1268','Ancylostoma NEC','Ankylostomiase et nécatoriose - autre ankilostome précisé'),('1269','Ancylostomiasis NOS','Ankylostomiase et nécatoriose - sans précision'),('1270','Ascariasis','Ascaridiose'),('1271','Anisakiasis','Anisakiase'),('1272','Strongyloidiasis','Strongyloïdose'),('1273','Trichuriasis','Trichocéphalose'),('1274','Enterobiasis','Oxyurose'),('1275','Capillariasis','Capillariose'),('1276','Trichostrongyliasis','Trichostrongylose'),('1277','Intest helminthiasis NEC','Autres helminthiases intestinales'),('1278','Mixed intestine helminth','Helminthiase intestinale mixte'),('1279','Intest helminthiasis NOS','Helminthiase intestinale - sans précision'),('1280','Toxocariasis','Toxocarose'),('1281','Gnathostomiasis','Gnathostomose'),('1288','Helminthiasis NEC','Helminthiases - autres'),('1289','Helminthiasis NOS','Helminthiases - sans précision'),('129','Intestin parasitism NOS','Autres tuberculoses de l\'appareil respiratoire - sans précision'),('1309','Toxoplasmosis NOS','Toxoplasmose - sans précision'),('1318','Trichomoniasis NEC','Trichomonase d\'autres localisations'),('1319','Trichomoniasis NOS','Trichomonase - sans précision'),('1320','Pediculus capitis','Pediculus capitis'),('1321','Pediculus corporis','Pediculus corporis'),('1322','Phthirus pubis','Phthirus pubis'),('1323','Mixed pedicul & phthirus','Pédiculose mixte'),('1329','Pediculosis NOS','Pédiculose - sans précision'),('1330','Scabies','Gale'),('1338','Acariasis NEC','Acariase - autres'),('1339','Acariasis NOS','Acariase - sans précision'),('1340','Myiasis','Myiase'),('1341','Arthropod infest NEC','Autres infestations par arthropodes'),('1342','Hirudiniasis','Hirudiniase'),('1348','Infestation NEC','Autres infestations - autres'),('1349','Infestation NOS','Autres infestations - sans précision'),('135','Sarcoidosis','Sarcoïdose'),('1360','Ainhum','Aïnhum'),('1361','Behcet\'s syndrome','Syndrome de behçet'),('1363','Pneumocystosis','Pneumocystose'),('1364','Psorospermiasis','Psorospermose'),('1365','Sarcosporidiosis','Sarcosporidiose'),('1368','Infect/parasite dis NEC','Maladies infectieuses et parasitaires - autres'),('1369','Infect/parasite dis NOS','Maladies infectieuses et parasitaires - sans précision'),('1370','Late effect tb, resp/NOS','Séquelles de la tuberculose de l\'appareil respiratoire, ou sans '),('1371','Late effect cns TB','Séquelles de la tuberculose du système nerveux central'),('1372','Late effect gu TB','Séquelles de la tuberculose de l\'appareil génito-urinaire'),('1373','Late eff bone & joint TB','Séquelles de la tuberculose des os et des articulations'),('1374','Late effect TB NEC','Séquelles de la tuberculose - d\'autres organes précisés'),('138','Late effect acute polio','Séquelles de la poliomyélite aigu'),('1390','Late eff viral encephal','Séquelles d\'encéphalites virales'),('1391','Late effect of trachoma','Séquelles du trachome'),('1398','Late eff infect dis NEC','Séquelles de maladies infectieuses et parasitaires, autres ou no'),('1400','Mal neo upper vermilion','Tumeur maligne de la lèvre supérieure, bord libre'),('1401','Mal neo lower vermilion','Tumeur maligne de la lèvre inférieure, bord libre'),('1403','Mal neo upper lip, inner','Tumeur maligne de la lèvre supérieure, face postérieure'),('1404','Mal neo lower lip, inner','Tumeur maligne de la lèvre inférieure, face postérieure'),('1405','Mal neo lip, inner NOS','Tumeur maligne de la lèvre, sans précision, face postérieure'),('1406','Mal neo lip, commissure','Tumeur maligne de la commissure des lèvres'),('1408','Mal neo lip NEC','Tumeur maligne des lèvres - autres'),('1409','Mal neo lip/vermil NOS','Tumeur maligne des lèvres, sans précision, bord libre'),('1410','Mal neo tongue base','Tumeur maligne de la base de la langue'),('1411','Mal neo dorsal tongue','Tumeur maligne de la face supérieure de la langue'),('1412','Mal neo tip/lat tongue','Tumeur maligne de la pointe et bords latéraux de la langue'),('1413','Mal neo ventral tongue','Tumeur maligne de la face inférieure de la langue'),('1414','Mal neo ant 2/3 tongue','Tumeur maligne des deux tiers antérieurs de la langue - sans pré'),('1415','Mal neo tongue junction','Tumeur maligne de la langue, zone de jonction'),('1416','Mal neo lingual tonsil','Tumeur maligne de la langue, amygdale linguale'),('1418','Malig neo tongue NEC','Tumeur maligne de la langue - autres'),('1419','Malig neo tongue NOS','Tumeur maligne de la langue - sans précision'),('1420','Malig neo parotid','Tumeur maligne, glande parotide'),('1421','Malig neo submandibular','Tumeur maligne, glande sous-maxillaire'),('1422','Malig neo sublingual','Tumeur maligne, glande sublinguale'),('1428','Mal neo maj salivary NEC','Tumeur maligne des glandes salivaires principales - autres'),('1429','Mal neo salivary NOS','Tumeur maligne des glandes salivaires principales, siège non pré'),('1430','Malig neo upper gum','Tumeur maligne, gencive supérieure'),('1431','Malig neo lower gum','Tumeur maligne, gencive inférieure'),('1438','Malig neo gum NEC','Tumeur maligne des gencives - autres'),('1439','Malig neo gum NOS','Tumeur des gencives - sans précision'),('1440','Mal neo ant floor mouth','Tumeur maligne, plancher antérieur'),('1441','Mal neo lat floor mouth','Tumeur maligne, plancher latéral'),('1448','Mal neo mouth floor NEC','Tumeur maligne du plancher de la bouche - autres'),('1449','Mal neo mouth floor NOS','Tumeur maligne du plancher de la bouche - sans précision'),('1450','Mal neo cheek mucosa','Tumeur maligne, face muqueuse des joues'),('1451','Mal neo mouth vestibule','Tumeur maligne, vestibule de la bouche'),('1452','Malig neo hard palate','Tumeur maligne, palais osseux'),('1453','Malig neo soft palate','Tumeur maligne, palais mou'),('1454','Malignant neoplasm uvula','Tumeur maligne, luette'),('1455','Malignant neo palate NOS','Tumeur maligne palais - sans précision'),('1456','Malig neo retromolar','Tumeur maligne, région rétromolaire'),('1458','Malig neoplasm mouth NEC','Tumeur maligne de parties autres ou non précisées de la bouche -'),('1459','Malig neoplasm mouth NOS','Tumeur maligne, bouche - sans précision'),('1460','Malignant neopl tonsil','Tumeur maligne de l\'oropharynx, amygdale'),('1461','Mal neo tonsillar fossa','Tumeur maligne de l\'oropharynx, fosse amygdalienne'),('1462','Mal neo tonsil pillars','Tumeur maligne de l\'oropharynx, pilier (antérieur/postérieur)'),('1463','Malign neopl vallecula','Tumeur maligne de l\'oropharynx, sillon glosso-épiglottique'),('1464','Mal neo ant epiglottis','Tumeur maligne de l\'oropharynx, face linguale de l\'épiglotte, sa'),('1465','Mal neo epiglottis junct','Tumeur maligne de l\'oropharynx, carrefour pharyngo-laryngé'),('1466','Mal neo lat oropharynx','Tumeur maligne de l\'oropharynx, paroi latérale de l\'oropharynx'),('1467','Mal neo post oropharynx','Tumeur maligne de l\'oropharynx, paroi postérieure de l\'oropharyn'),('1468','Mal neo oropharynx NEC','Tumeur maligne de l\'oropharynx - autres'),('1469','Malig neo oropharynx NOS','Tumeur maligne, oropharynx - sans précision'),('1470','Mal neo super nasopharyn','Tumeur maligne du rhinopharynx, paroi supérieure'),('1471','Mal neo post nasopharynx','Tumeur maligne du rhinopharynx, paroi postérieure'),('1472','Mal neo lat nasopharynx','Tumeur maligne du rhinopharynx, paroi latérale'),('1473','Mal neo ant nasopharynx','Tumeur maligne du rhinopharynx, paroi antérieure'),('1478','Mal neo nasopharynx NEC','Tumeur maligne du rhinopharynx - autres'),('1479','Mal neo nasopharynx NOS','Tumeur maligne du rhinopharynx - sans précision'),('1480','Mal neo postcricoid','Tumeur maligne de l\'hypopharynx, région rétro-crico-aryténoïdien'),('1481','Mal neo pyriform sinus','Tumeur maligne de l\'hypopharynx, sinus pyriforme'),('1482','Mal neo aryepiglott fold','Tumeur mal.hypopharynx, repli ary-épiglottique, versant hypophar'),('1483','Mal neo post hypopharynx','Tumeur maligne de l\'hypopharynx, paroi postérieure du pharynx'),('1488','Mal neo hypopharynx NEC','Tumeur maligne de l\'hypopharynx - autres'),('1489','Mal neo hypopharynx NOS','Tumeur maligne de l\'hypopharynx - sans précision'),('1490','Mal neo pharynx NOS','Tumeurs malignes de sièges autres et mal définis - pharynx - san'),('1491','Mal neo waldeyer\'s ring','Tumeurs malig.sièges aut., mal défin.lèvre,cavité bucc.,phar.-an'),('1498','Mal neo oral/pharynx NEC','Tumeurs malig. de sièges aut.et mal définis de lèvre,cavité bucc'),('1499','Mal neo orophryn ill-def','Tumeurs malig.sièges aut.et mal définis lèvre,cavité bucc.,phary'),('1500','Mal neo cervical esophag','Tumeur maligne de l\'oesophage, oesophage cervical'),('1501','Mal neo thoracic esophag','Tumeur maligne de l\'oesophage, oesophage thoracique'),('1502','Mal neo abdomin esophag','Tumeur maligne de l\'oesophage, oesophage abdominal'),('1503','Mal neo upper 3rd esoph','Tumeur maligne de l\'oesophage, tiers supérieur'),('1504','Mal neo middle 3rd esoph','Tumeur maligne de l\'oesophage, tiers moyen'),('1505','Mal neo lower 3rd esoph','Tumeur maligne de l\'oesophage, tiers inférieur'),('1508','Mal neo esophagus NEC','Tumeurs malignes de l\'oesophage - autres'),('1509','Mal neo esophagus NOS','Tumeur maligne de l\'oesophage - sans précision'),('1510','Mal neo stomach cardia','Tumeur maligne de l\'estomac, cardia'),('1511','Malignant neo pylorus','Tumeur maligne de l\'estomac, pylore'),('1512','Mal neo pyloric antrum','Tumeur maligne de l\'estomac, antre pylorique'),('1513','Mal neo stomach fundus','Tumeur maligne de l\'estomac, grosse tubérosité'),('1514','Mal neo stomach body','Tumeur maligne de l\'estomac, corps de l\'estomac'),('1515','Mal neo stom lesser curv','Tumeur maligne de l\'estomac, petite courbure'),('1516','Mal neo stom great curv','Tumeur maligne de l\'estomac, grande courbure'),('1518','Malig neopl stomach NEC','Tumeur maligne de l\'estomac - autres'),('1519','Malig neopl stomach NOS','Tumeur maligne de l\'estomac - sans précision'),('1520','Malignant neopl duodenum','Tumeur maligne de l\'intestin grêle, duodénum'),('1521','Malignant neopl jejunum','Tumeur maligne de l\'intestin grêle, jéjunum'),('1522','Malignant neoplasm ileum','Tumeur maligne de l\'intestin grêle, iléon'),('1523','Mal neo meckel\'s divert','Tumeur maligne de l\'intestin grêle, diverticule de meckel'),('1528','Mal neo small bowel NEC','Tumeur maligne de l\'intestin grêle - autres'),('1529','Mal neo small bowel NOS','Tumeur maligne de l\'intestin grêle, partie non précisée'),('1530','Mal neo hepatic flexure','Tumeur maligne du côlon, angle droit'),('1531','Mal neo transverse colon','Tumeur maligne du côlon transverse'),('1532','Mal neo descend colon','Tumeur maligne du côlon descendant'),('1533','Mal neo sigmoid colon','Tumeur maligne du côlon sigmoïde'),('1534','Malignant neoplasm cecum','Tumeur maligne du côlon, caecum'),('1535','Malignant neo appendix','Tumeur maligne du côlon, appendice'),('1536','Malig neo ascend colon','Tumeur maligne du côlon ascendant'),('1537','Mal neo splenic flexure','Tumeur maligne du côlon, angle gauche'),('1538','Malignant neo colon NEC','Tumeur maligne du côlon - autres'),('1539','Malignant neo colon NOS','Tumeur maligne du côlon - sans précision'),('1540','Mal neo rectosigmoid jct','Tumeur maligne de la jonction recto-sigmoïdienne'),('1541','Malignant neopl rectum','Tumeur maligne du rectum'),('1542','Malig neopl anal canal','Tumeur maligne du canal anal'),('1543','Malignant neo anus NOS','Tumeur maligne de l\'anus - sans précision'),('1548','Mal neo rectum/anus NEC','Tumeur maligne rectum, jonction recto-sigmoïdienne, anus - autre'),('1550','Mal neo liver, primary','Tumeur maligne du foie, primitive'),('1551','Mal neo intrahepat ducts','Tumeur maligne des canaux biliaires intrahépatiques'),('1552','Malignant neo liver NOS','Tumeur maligne du foie, non précisée primitive ni secondaire'),('1560','Malig neo gallbladder','Tumeur maligne, vésicule biliaire'),('1561','Mal neo extrahepat ducts','Tumeur maligne, canaux biliaires extrahépatiques'),('1562','Mal neo ampulla of vater','Tumeur maligne, ampoule de vater'),('1568','Malig neo biliary NEC','Tumeur maligne vésicule biliaire et voies biliaires extrahépatiq'),('1569','Malig neo biliary NOS','Tumeur maligne des voies biliares - sans précision'),('1570','Mal neo pancreas head','Tumeur maligne de la tête du pancréas'),('1571','Mal neo pancreas body','Tumeur maligne du corps du pancréas'),('1572','Mal neo pancreas tail','Tumeur maligne de la queue du pancréas'),('1573','Mal neo pancreatic duct','Tumeur maligne du canal pancréatique'),('1574','Mal neo islet langerhans','Tumeur maligne des îlots de langerhans'),('1578','Malig neo pancreas NEC','Tumeur maligne du pancréas - autres'),('1579','Malig neo pancreas NOS','Tumeur maligne du pancréas, partie non précisée'),('1580','Mal neo retroperitoneum','Tumeur maligne du tissu rétropéritonéal'),('1588','Mal neo peritoneum NEC','Tumeur maligne, parties précisées du péritoine'),('1589','Mal neo peritoneum NOS','Tumeur maligne du péritoine - sans précision'),('1590','Malig neo intestine NOS','Tumeurs malignes - tractus intestinal, partie non précisée'),('1591','Malignant neo spleen NEC','Tumeurs malignes - rate, non classée ailleurs'),('1598','Mal neo gi/intra-abd NEC','Tum.mal.de sièges aut.non précis.app.digestif et péritoine-aut.s'),('1599','Mal neo GI tract ill-def','Tumeurs malignes de sièges aut. ou non précis. app. digestif et '),('1600','Mal neo nasal cavities','Tumeur maligne des fosses nasales'),('1601','Malig neo middle ear','Tum.mal.trompe d\'eustache, ore.moy.et cell.mastoïdiennes, sf 171'),('1602','Mal neo maxillary sinus','Tumeur maligne du sinus maxillaire'),('1603','Mal neo ethmoidal sinus','Tumeur maligne du sinus éthmoïdal'),('1604','Malig neo frontal sinus','Tumeur maligne du sinus frontal'),('1605','Mal neo sphenoid sinus','Tumeur maligne du sinus sphénoïdal'),('1608','Mal neo access sinus NEC','Tumeur maligne des fosses nasales, oreille moyenne, sinus annexe'),('1609','Mal neo access sinus NOS','Tumeur maligne du sinus accessoire - sans précision'),('1610','Malignant neo glottis','Tumeur maligne du larynx, glotte'),('1611','Malig neo supraglottis','Tumeur maligne du larynx, étage sus-glottique'),('1612','Malig neo subglottis','Tumeur maligne du larynx, étage sous-glottique'),('1613','Mal neo cartilage larynx','Tumeur maligne du larynx, cartilages laryngés'),('1618','Malignant neo larynx NEC','Tumeur maligne du larynx - autres'),('1619','Malignant neo larynx NOS','Tumeur maligne du larynx - sans précision'),('1620','Malignant neo trachea','Tumeur maligne de la trachée'),('1622','Malig neo main bronchus','Tumeur maligne de bronche souche'),('1623','Mal neo upper lobe lung','Tumeur maligne du lobe supérieur, bronche ou poumon'),('1624','Mal neo middle lobe lung','Tumeur maligne du lobe moyen, bronche ou poumon'),('1625','Mal neo lower lobe lung','Tumeur maligne du lobe inférieur, bronche ou poumon'),('1628','Mal neo bronch/lung NEC','Tumeur maligne de la trachée, bronche et poumon - autres'),('1629','Mal neo bronch/lung NOS','Tumeur maligne, bronche et poumon - sans précision'),('1630','Mal neo parietal pleura','Tumeur maligne de la plèvre, feuillet pariétal'),('1631','Mal neo visceral pleura','Tumeur maligne de la plèvre, feuillet viscéral'),('1638','Malig neopl pleura NEC','Tumeur maligne de la plèvre - autres'),('1639','Malig neopl pleura NOS','Tumeur maligne de la plèvre - sans précision'),('1640','Malignant neopl thymus','Tumeur maligne du thymus'),('1641','Malignant neopl heart','Tumeur maligne du coeur'),('1642','Mal neo ant mediastinum','Tumeur maligne du médiastin antérieur'),('1643','Mal neo post mediastinum','Tumeur maligne du médiastin postérieur'),('1648','Mal neo mediastinum NEC','Tumeur maligne du thymus, du coeur et du médiastin - autres'),('1649','Mal neo mediastinum NOS','Tumeur maligne du médiastin, partie non précisée'),('1650','Mal neo upper resp NOS','Tumeurs malignes des voies respiratoires supérieures, partie non'),('1658','Mal neo thorax/resp NEC','Tumeurs mal. sièges aut. ou non précis. app. respir. et organes '),('1659','Mal neo resp system NOS','Tum.mal.de l\'app.respir.et organes thorac., siège mal défini sf '),('1700','Mal neo skull/face bone','Tumeur maligne des os du crâne et de la face'),('1701','Malignant neo mandible','Tum.mal.os et cartil.auricul., maxillaire inf.'),('1702','Malig neo vertebrae','Tumeur maligne du rachis'),('1703','Mal neo ribs/stern/clav','Tumeur maligne des côtes, sternum et clavicule'),('1704','Mal neo long bones arm','Tumeur maligne des os et cartilage articulaire, membre sup., os '),('1705','Mal neo bones wrist/hand','Tumeur maligne des os et cartilage articulaire, membre sup., os '),('1706','Mal neo pelvic girdle','Tumeur maligne du bassin, sacrum et coccyx'),('1707','Mal neo long bones leg','Tumeur maligne des os et cartilage articulaire, membre inf., os '),('1708','Mal neo bones ankle/foot','Tumeur maligne des os et cartilage articuliare, membre inf., os '),('1709','Malig neopl bone NOS','Tumeur maligne des os et cartilage articulaire, siège non précis'),('1710','Mal neo soft tissue head','Tumeur maligne tissu conjonctif et autres tissus mous - tête et '),('1712','Mal neo soft tissue arm','Tumeur malig.tissu conjonctif et autres tissus mous, membre sup.'),('1713','Mal neo soft tissue leg','Tumeur malig.tissu conjonctif et autres tissus mous, memb.infér.'),('1714','Mal neo soft tis thorax','Tumeur maligne tissu conjonctif et autres tissus mous, thorax, s'),('1715','Mal neo soft tis abdomen','Tumeur maligne tissu conjonctif et autres tissus mous, abdomen'),('1716','Mal neo soft tis pelvis','Tumeur maligne tissu conjonctif et autres tissus mous, pelvis, s'),('1717','Mal neopl trunk NOS','Tumeur maligne tissu conjonctif et autres tissus mous, tronc - s'),('1718','Mal neo soft tissue NEC','Tumeur maligne tissu conjonctif et autres tissus mous - autres'),('1719','Mal neo soft tissue NOS','Tumeur maligne tissu conjonctif et autres tissus mous, siège non'),('1720','Malig melanoma lip','Mélanome malin de la lèvre'),('1721','Malig melanoma eyelid','Mélanome malin de la peau, paupières, y compris les commissures '),('1722','Malig melanoma ear','Mélanome malin de la peau, oreille et conduit auditif externe'),('1723','Mal melanom face NEC/NOS','Mélanome malin de la peau, parties autres et non précisées de la'),('1724','Mal melanoma scalp/neck','Mélanome malin de la peau, cuir chevelu et cou'),('1725','Malig melanoma trunk','Mélanome malin de la peau, tronc, à l\'exception du scrotum'),('1726','Malig melanoma arm','Mélanome malin de la peau, membre supérieur y compris l\'épaule'),('1727','Malig melanoma leg','Mélanome malin de la peau, membre inférieur y compris la hanche'),('1728','Malig melanoma skin NEC','Mélanome malin de la peau - autres'),('1729','Malig melanoma skin NOS','Mélanome malin de la peau, siège non précisé'),('1740','Malig neo nipple','Tumeur maligne du mamelon et aréole'),('1741','Mal neo breast-central','Tumeur maligne du sein chez la femme, central'),('1742','Mal neo breast up-inner','Tumeur maligne du sein chez la femme, quadrant supéro-interne'),('1743','Mal neo breast low-inner','Tumeur maligne du sein chez la femme, quadrant inféro-interne'),('1744','Mal neo breast up-outer','Tumeur maligne du sein chez la femme, quadrant supéro-externe'),('1745','Mal neo breast low-outer','Tumeur maligne du sein chez la femme, quadrant inféro-externe'),('1746','Mal neo breast-axillary','Tumeur maligne du sein chez la femme, prolongement axillaire'),('1748','Malign neopl breast NEC','Tumeur maligne du sein chez la femme - autres'),('1749','Malign neopl breast NOS','Tumeur maligne du sein - sans précision'),('1759','Mal neo male breast NEC','Tumeur maligne du sein, chez l\'homme - sans précision'),('179','Malig neopl uterus NOS','Tuberculose d\'autres organes - sans précision'),('1800','Malig neo endocervix','Tumeur maligne du cod de l\'utérus, endocol'),('1801','Malig neo exocervix','Tumeur maligne du col de l\'utérus, exocol'),('1808','Malig neo cervix NEC','Tumeur maligne du col de l\'utérus - autres'),('1809','Mal neo cervix uteri NOS','Tumeur maligne du col de l\'utérus - sans précision'),('181','Malignant neopl placenta','Tumeur maligne du placenta'),('1820','Malig neo corpus uteri','Tumeur maligne du corps de l\'utérus'),('1821','Mal neo uterine isthmus','Tumeur maligne du corps de l\'utérus, isthme'),('1828','Mal neo body uterus NEC','Tumeur maligne du corps de l\'utérus - autres'),('1830','Malign neopl ovary','Tumeur maligne, ovaire'),('1832','Mal neo fallopian tube','Tumeur maligne, trompe de fallope'),('1833','Mal neo broad ligament','Tumeur maligne de l\'ovaire et autres annexes de l\'utérus - ligam'),('1834','Malig neo parametrium','Tumeur maligne de l\'ovaire et autres annexes de l\'utérus - param'),('1835','Mal neo round ligament','Tumeur maligne de l\'ovaire et autres annexes de l\'utérus - ligam'),('1838','Mal neo adnexa NEC','Tumeur maligne de l\'ovaire et autres annexes de l\'utérus - autre'),('1839','Mal neo adnexa NOS','Tumeur maligne, annexes de l\'utérus - sans précision'),('1840','Malign neopl vagina','Tumeur maligne organes génitaux autres ou non précisés de la fem'),('1841','Mal neo labia majora','Tumeur maligne organes génitaux autres ou non précisés de la fem'),('1842','Mal neo labia minora','Tumeur maligne organes génitaux autres ou non précisés de la fem'),('1843','Malign neopl clitoris','Tumeur maligne organes génitaux autres ou non précisés de la fem'),('1844','Malign neopl vulva NOS','Tumeur maligne organes génitaux autres ou n-précisés femme, vulv'),('1848','Mal neo female genit NEC','Tumeur maligne d\'organes génitaux de la femme - autres'),('1849','Mal neo female genit NOS','Tumeur maligne d\'organes génitaux de la femme, siège non précisé'),('185','Malign neopl prostate','Tumeur maligne de la prostate'),('1860','Mal neo undescend testis','Tumeur maligne, testicule ectopique'),('1869','Malig neo testis NEC','Tumeur maligne du testicule - autres et sans précision'),('1871','Malign neopl prepuce','Tumeur maligne de la verge/autres organes génitaux masculins, pr'),('1872','Malig neo glans penis','Tumeur maligne de la verge/autres organes génitaux masculins, gl'),('1873','Malig neo penis body','Tumeur maligne de la verge/autres organes génitaux masculins, co'),('1874','Malig neo penis NOS','Tumeur maligne de la verge, partie non précisée'),('1875','Malig neo epididymis','Tumeur maligne de la verge/autres organes génitaux masculins, ép'),('1876','Mal neo spermatic cord','Tumeur maligne de la verge/autres organes génitaux masc. cordon '),('1877','Malign neopl scrotum','Tumeur maligne de la verge/autres organes génitaux masculins, sc'),('1878','Mal neo male genital NEC','Tumeur maligne de la verge et autres organes génitaux masculins '),('1879','Mal neo male genital NOS','Tumeur maligne de la verge et autres organes génitaux masculins,'),('1880','Mal neo bladder-trigone','Tumeur maligne vessie, trigone'),('1881','Mal neo bladder-dome','Tumeur maligne vessie, dôme'),('1882','Mal neo bladder-lateral','Tumeur maligne vessie, paroi latérale'),('1883','Mal neo bladder-anterior','Tumeur maligne vessie, paroi antérieure'),('1884','Mal neo bladder-post','Tumeur maligne vessie, paroi postérieure'),('1885','Mal neo bladder neck','Tumeur maligne du col vésical'),('1886','Mal neo ureteric orifice','Tumeur maligne de l\'orifice urétéral'),('1887','Malig neo urachus','Tumeur maligne de l\'ouraque'),('1888','Malig neo bladder NEC','Tumeur maligne de la vessie - autres'),('1889','Malig neo bladder NOS','Tumeur maligne de la vessie, partie non précisée'),('1890','Malig neopl kidney','Tumeur maligne du rein'),('1891','Malig neo renal pelvis','Tumeur maligne du bassinet'),('1892','Malign neopl ureter','Tumeur maligne de l\'uretère'),('1893','Malign neopl urethra','Tumeur maligne de l\'urètre'),('1894','Mal neo paraurethral','Tumeur maligne des glandes urétrales'),('1898','Mal neo urinary NEC','Tumeur maligne du rein et d\'organes urinaires autres ou non préc'),('1899','Mal neo urinary NOS','Tumeur maligne rein et organes urin. autres ou non précis. - siè'),('1900','Malign neopl eyeball','Tumeur maligne oeil, globe oculaire sauf conjonctive, cornée, ré'),('1901','Malign neopl orbit','Tumeur maligne de l\'oeil, orbite'),('1902','Mal neo lacrimal gland','Tumeur maligne de l\'oeil, glande lacrymale'),('1903','Mal neo conjunctiva','Tumeur maligne de l\'oeil, conjonctive'),('1904','Malign neopl cornea','Tumeur maligne de l\'oeil, cornée'),('1905','Malign neopl retina','Tumeur maligne de l\'oeil, rétine'),('1906','Malign neopl choroid','Tumeur maligne de l\'oeil, choroïde'),('1907','Mal neo lacrimal duct','Tumeur maligne de l\'oeil, voies lacrymales'),('1908','Malign neopl eye NEC','Tumeur maligne de l\'oeil - autres'),('1909','Malign neopl eye NOS','Tumeur maligne de l\'oeil, partie non précisée'),('1910','Malign neopl cerebrum','Tumeur maligne de l\'encéphale, cerveau sauf lobes et ventricules'),('1911','Malig neo frontal lobe','Tumeur maligne de l\'encéphale, lobe frontal'),('1912','Mal neo temporal lobe','Tumeur maligne de l\'encéphale, lobe temporal'),('1913','Mal neo parietal lobe','Tumeur maligne de l\'encéphale, lobe pariétal'),('1914','Mal neo occipital lobe','Tumeur maligne de l\'encéphale, lobe occipital'),('1915','Mal neo cereb ventricle','Tumeur maligne de l\'encéphale, ventricules'),('1916','Mal neo cerebellum NOS','Tumeur maligne de l\'encéphale, cervelet'),('1917','Mal neo brain stem','Tumeur maligne de l\'encéphale, tronc cérébral'),('1918','Malig neo brain NEC','Tumeur maligne de l\'encéphale - autres'),('1919','Malig neo brain NOS','Tumeur maligne de l\'encéphale - sans précision'),('1920','Mal neo cranial nerves','Tumeur maligne parties autres et n-précis.système nerveux, nerfs'),('1921','Mal neo cerebral mening','Tumeur maligne parties autres et n-précis.système nerveux, ménin'),('1922','Mal neo spinal cord','Tumeur maligne parties autres et n-précis.système nerveux, moell'),('1923','Mal neo spinal meninges','Tumeur maligne parties autres et n-précis.système nerveux méning'),('1928','Mal neo nervous syst NEC','Tumeur maligne de parties autres et non précisées du système ner'),('1929','Mal neo nervous syst NOS','Tum.mal.pties aut.non précis.syst.nerveux, ptie non précisée sf '),('193','Malign neopl thyroid','Tumeur maligne du corps thyroïde'),('1940','Malign neopl adrenal','Tumeur maligne aut.glandes endocrines et structures apparentées,'),('1941','Malig neo parathyroid','Tumeur maligne aut.glandes endocrines et structures apparrentées'),('1943','Malig neo pituitary','Tumeur maligne aut.glandes endocr./struct.apparent hypophyse,tra'),('1944','Malign neo pineal gland','Tumeur maligne autres glandes endocrines et structures apparenté'),('1945','Mal neo carotid body','Tumeur maligne aut.glandes endocrines/structures apparent.orpusc'),('1946','Mal neo paraganglia NEC','Tumeur maligne aut.glandes endocrines/structures apparent.autres'),('1948','Mal neo endocrine NEC','Tumeur maligne d\'autres glandes endocrines et structures apparen'),('1949','Mal neo endocrine NOS','Tumeur maligne des glandes endocrines et structures appar., sièg'),('1950','Mal neo head/face/neck','Tumeur maligne de sièges autres et mal définis, tête et cou'),('1951','Malign neopl thorax','Tumeur maligne de sièges autres et mal définis, thorax'),('1952','Malig neo abdomen','Tumeur maligne de sièges autres et mal définis, abdomen'),('1953','Malign neopl pelvis','Tumeur maligne de sièges autres et mal définis, bassin'),('1954','Malign neopl arm','Tumeur maligne de sièges autres et mal définis, membre supérieur'),('1955','Malign neopl leg','Tumeur maligne de sièges autres et mal définis, membre inférieur'),('1958','Malig neo site NEC','Tumeur maligne de sièges autres et mal définis - autres'),('1960','Mal neo lymph-head/neck','Tumeur maligne ganglions lymphat.second.ou sans précision - tête'),('1961','Mal neo lymph-intrathor','Tumeur maligne ganglions lymphat., second.ou sans précision - en'),('1962','Mal neo lymph intra-abd','Tumeur maligne des ganglions lymphat., second. ou sans précis.-i'),('1963','Mal neo lymph-axilla/arm','Tumeur maligne ganglions lymphat.second.ou sans précis.-aisselle'),('1965','Mal neo lymph-inguin/leg','Tumeur maligne gangl.lymphat.second. ou s-précision-région ingui'),('1966','Mal neo lymph-intrapelv','Tumeur maligne ganglions lymphat., second. ou sans précis., intr'),('1968','Mal neo lymph node-mult','Tumeur maligne ganglions lymphat.second.ou sans précision, siège'),('1969','Mal neo lymph node NOS','Tumeur maligne ganglions lymphat.second.ou sans précision, siège'),('1970','Secondary malig neo lung','Tumeurs malignes secondaires des appareils respiratoire et diges'),('1971','Sec mal neo mediastinum','Tumeurs malignes secondaires des appareils respiratoire et diges'),('1972','Second malig neo pleura','Tumeurs malignes secondaires des appareils respiratoire et diges'),('1973','Sec malig neo resp NEC','Tumeurs malignes second.appar.respiratoire et digestif - autres '),('1974','Sec malig neo sm bowel','Tumeurs mal.secondaire app.respir.et digestif-intestin grêle, y '),('1975','Sec malig neo lg bowel','Tumeurs malignes secondaire app.respir.et digestif-gros intestin'),('1976','Sec mal neo peritoneum','Tumeurs malignes secondaire app.respir.et digestif-péritoine et '),('1977','Second malig neo liver','Tumeurs malignes secondaires des appareils respiratoire et diges'),('1978','Sec mal neo GI NEC','Tumeurs malignes second. app. respiratoire et digestif - aut. or'),('1980','Second malig neo kidney','Tumeurs malignes secondaires d\'autres sièges précisés, rein'),('1981','Sec malig neo urin NEC','Tumeurs malignes secondaires d\'autres sièges précisés, autres or'),('1982','Secondary malig neo skin','Tumeurs malignes secondaires d\'autres sièges précisés, peau'),('1983','Sec mal neo brain/spine','Tumeurs malignes secondaires autres sièges précisés, cerveau et '),('1984','Sec malig neo nerve NEC','Tumeurs malignes secondaires aut. sièges précisés, autres partie'),('1985','Secondary malig neo bone','Tumeurs malignes secondaires d\'autres sièges précisés, os et moe'),('1986','Second malig neo ovary','Tumeurs malignes secondaires d\'autres sièges précisés, ovaire'),('1987','Second malig neo adrenal','Tumeurs malignes secondaires d\'autres sièges précisés, surrénale'),('1990','Malig neo disseminated','Tumeur maligne de siège non précisé, disséminée'),('1991','Malignant neoplasm NOS','Tumeur maligne de siège non précisé - autres'),('2100','Benign neoplasm lip','Tumeur bénigne de la lèvre'),('2101','Benign neoplasm tongue','Tumeur bénigne de la langue'),('2102','Ben neo major salivary','Tumeur bénigne des glandes salivaires principales'),('2103','Benign neo mouth floor','Tumeur bénigne du plancher de la bouche'),('2104','Benign neo mouth NEC/NOS','Tumeur bénigne, parties autres et non précisées de la bouche, sa'),('2105','Benign neoplasm tonsil','Tumeur bénigne, amygdale'),('2106','Benign neo oropharyn NEC','Tumeur bénigne, autres parties de l\'oropharynx'),('2107','Benign neo nasopharynx','Tumeur bénigne, rhinopharynx'),('2108','Benign neo hypopharynx','Tumeur bénigne, hypopharynx'),('2109','Benign neo pharynx NOS','Tumeur bénigne, pharynx - sans précision'),('2110','Benign neo esophagus','Tumeurs bénignes d\'autres parties de l\'appareil digestif, oesoph'),('2111','Benign neoplasm stomach','Tumeurs bénignes d\'autres parties de l\'appareil digestif, estoma'),('2112','Benign neoplasm sm bowel','Tum.bén.aut.pties app.digestif, intestin grêle-duodénum sauf 211'),('2113','Benign neoplasm lg bowel','Tumeurs bénignes d\'autres parties de l\'appareil digestif, côlon,'),('2114','Benign neopl rectum/anus','Tum.bén.aut.pties app.digestif, rectum-canal anal sauf 2165'),('2115','Ben neo liver/bile ducts','Tumeurs bénignes autres parties appareil digestif, foie et voies'),('2116','Benign neoplasm pancreas','Tumeurs bénignes autres parties app. digestif, pancréas'),('2117','Ben neo islets langerhan','Tumeurs bénignes d\'autres parties de l\'appareil digestif, îlots '),('2118','Ben neo peritoneum','Tumeurs bénignes autres parties app. digestif, tissu rétropérito'),('2119','Ben neo GI tract NEC/NOS','Tumeurs bénignes autres parties appareil digestif, siège autre e'),('2120','Ben neo nasal cav/sinus','Tum.bén.f.nas.or.moy.sin.ann.sf2107-2251-2150-2162-2298-2130-216'),('2121','Benign neo larynx','Tumeur bénigne, larynx'),('2122','Benign neo trachea','Tumeur bénigne, trachée'),('2123','Benign neo bronchus/lung','Tumeur bénigne, bronches et poumon'),('2124','Benign neoplasm pleura','Tumeur bénigne, plèvre'),('2125','Benign neo mediastinum','Tumeur bénigne, médiastin'),('2126','Benign neoplasm thymus','Tumeur bénigne, thymus'),('2127','Benign neoplasm heart','Tumeur bénigne, coeur'),('2128','Benign neo resp sys NEC','Tumeur bénigne app. respiratoire et organes thoraciques, aut. si'),('2129','Benign neo resp sys NOS','Tum.bén.app.resp.et organes thoraciques, siège sai sauf 2298'),('2130','Ben neo skull/face bone','Tumeur bénigne, os du crâne et de la face'),('2131','Ben neo lower jaw bone','Tumeur bénigne, maxillaire inférieur'),('2132','Benign neo vertebrae','Tumeur bénigne, rachis'),('2133','Ben neo ribs/stern/clav','Tumeur bénigne, côtes, sternum et clavicule'),('2134','Ben neo long bones arm','Tumeur bénigne, membre supérieur, os longs et omoplate'),('2135','Ben neo bones wrist/hand','Tumeur bénigne, membre supérieur, os courts'),('2136','Benign neo pelvic girdle','Tumeur bénigne, bassin, sacrum et coccyx'),('2137','Ben neo long bones leg','Tumeur bénigne, membre inférieur, os longs'),('2138','Ben neo bones ankle/foot','Tumeur bénigne, membre inférieur, os courts'),('2139','Benign neo bone NOS','Tumeur bénigne des os et du cartilage articulaire, siège non pré'),('2149','Lipoma NOS','Lipome - sans précision'),('2150','Ben neo soft tissue head','Autres tumeurs bénignes tissu conjonctif et aut. tissus mous - t'),('2152','Ben neo soft tissue arm','Autres tumeurs bénignes tissu conjonctif et autrestissus mous-me'),('2153','Ben neo soft tissue leg','Autres tumeurs bénig. tissu conjonct. et aut. tissus mous - memb'),('2154','Ben neo soft tis thorax','Aut.tum.bénig.tissu conjonct.et aut.tissus mous-thorax, sf 2125à'),('2155','Ben neo soft tis abdomen','Autres tumeurs bénignes du tissu conjonctif et autres tissus mou'),('2156','Ben neo soft tis pelvis','Aut.tum.bénig.tissu conjonct.et aut.tissus mous-pelvis, sf 218-2'),('2157','Benign neo trunk NOS','Autres tumeurs bénignes tissu conjonct. et aut. tissus mous-tron'),('2158','Ben neo soft tissue NEC','Autres tumeurs bénignes tissu conjonct.et autres tissus mous,aut'),('2159','Ben neo soft tissue NOS','Autres tumeurs bénignes tissu conjoctif et aut. tissus mous, siè'),('2160','Benign neo skin lip','Tumeur bénigne de la peau, face cutanée de la lèvre'),('2161','Benign neo skin eyelid','Tumeur bénigne de la peau, paupière, y compris canthus'),('2162','Benign neo skin ear','Tumeur bénigne de la peau, oreille et conduit auditif externe, s'),('2163','Benign neo skin face NEC','Tumeur bénigne de la peau de parties autres et non précisées de '),('2164','Ben neo scalp/skin neck','Tumeur bénigne de la peau, cuir chevelu et peau du cou'),('2165','Benign neo skin trunk','Tumeur bénigne de la peau du tronc, à l\'exception du scrotum, sa'),('2166','Benign neo skin arm','Tumeur bénigne de la peau du membre supérieur, y compris l\'épaul'),('2167','Benign neo skin leg','Tumeur bénigne de la peau du membre inférieur, y compris la hanc'),('2168','Benign neoplasm skin NEC','Tumeur bénigne de la peau - autres'),('2169','Benign neoplasm skin NOS','Tumeur bénigne de la peau, siège non précisé'),('217','Benign neoplasm breast','Tumeur bénigne du sein'),('2189','Uterine leiomyoma NOS','Léiomyome utérin - sans précision'),('2190','Benign neo cervix uteri','Autres tumeurs bénignes de l\'utérus, col de l\'utérus'),('2191','Benign neo corpus uteri','Autres tumeurs bénignes, corps de l\'utérus'),('2198','Benign neo uterus NEC','Autres tumeurs bénignes de l\'utérus, autres parties précisées'),('2199','Benign neo uterus NOS','Autres tumeurs bénignes de l\'utérus, partie non précisée'),('220','Benign neoplasm ovary','Charbon, pustule maligne'),('2210','Ben neo fallopian tube','Tumeur bénigne, trompe et ligaments utérins'),('2211','Benign neoplasm vagina','Tumeur bénigne, vagin'),('2212','Benign neoplasm vulva','Tumeur bénigne, vulve'),('2218','Ben neo fem genital NEC','Tumeur bénigne des autres organes génitaux de la femme, autres s'),('2219','Ben neo fem genital NOS','Tumeur bénigne des autres organes génitaux de la femme, siège no'),('2220','Benign neoplasm testis','Tumeur bénigne, testicule'),('2221','Benign neoplasm penis','Tumeur bénigne, pénis'),('2222','Benign neoplasm prostate','Tumeur bénigne, prostate'),('2223','Benign neo epididymis','Tumeur bénigne, épididyme'),('2224','Benign neoplasm scrotum','Tumeur bénigne, scrotum'),('2228','Ben neo male genital NEC','Tumeur bénigne des organes génitaux de l\'homme, autres sièges pr'),('2229','Ben neo male genital NOS','Tumeur bénigne des organes génitaux de l\'homme, siège non précis'),('2230','Benign neoplasm kidney','Tumeur bénigne, rein'),('2231','Benign neo renal pelvis','Tumeur bénigne, bassinet'),('2232','Benign neoplasm ureter','Tumeur bénigne, uretère'),('2233','Benign neoplasm bladder','Tumeur bénigne, vessie'),('2239','Benign neo urinary NOS','Tumeur bénigne du rein et autres organes urinaires, siège non pr'),('2240','Benign neoplasm eyeball','Tumeur bénigne oeil, globe ocul. sauf conjonctive, cornée, rétin'),('2241','Benign neoplasm orbit','Tumeur bénigne de l\'oeil, orbite'),('2242','Ben neo lacrimal gland','Tumeur bénigne de l\'oeil, glande lacrymale'),('2243','Benign neo conjunctiva','Tumeur bénigne de l\'oeil, conjonctive'),('2244','Benign neoplasm cornea','Tumeur bénigne de l\'oeil, cornée'),('2245','Benign neoplasm retina','Tumeur bénigne de l\'oeil, rétine'),('2246','Benign neoplasm choroid','Tumeur bénigne de l\'oeil, choroïde'),('2247','Ben neo lacrimal duct','Tumeur bénigne de l\'oeil, voies lacrymales'),('2248','Benign neoplasm eye NEC','Tumeur bénigne de l\'oeil, autres parties précisées'),('2249','Benign neoplasm eye NOS','Tumeur bénigne de l\'oeil, partie non précisée'),('2250','Benign neoplasm brain','Tumeur bénigne, encéphale'),('2251','Benign neo cranial nerve','Tumeur bénigne, nerfs crâniens'),('2252','Ben neo cerebr meninges','Tumeur bénigne, méninges cérébrales'),('2253','Benign neo spinal cord','Tumeur bénigne, moelle épinière'),('2254','Ben neo spinal meninges','Tumeur bénigne, méninges rachidiennes'),('2258','Benign neo nerv sys NEC','Tumeur bénigne de l\'encéphale et des autres parties du système n'),('2259','Benign neo nerv sys NOS','Tum.bénig.encéphale et aut.pties syst.nerveux sauf 2252'),('226','Benign neoplasm thyroid','Tumeur bénigne du corps thyroïde'),('2270','Benign neoplasm adrenal','Tumeur bénigne autres glandes endocrines et structures apparenté'),('2271','Benign neo parathyroid','Tumeur bénigne autres glandes endocrines et structures apparent.'),('2273','Benign neo pituitary','Tumeur bénigne autres glandes endocr.struct.appar.-hypophyse, tr'),('2274','Ben neopl pineal gland','Tumeur bénigne autres glandes endocrines et structures apparenté'),('2275','Benign neo carotid body','Tumeur bénigne autres glandes endocr.et structures appar.corpusc'),('2276','Ben neo paraganglia NEC','Tumeur bénigne autres glandes endocrines et structures appar.aut'),('2278','Benign neo endocrine NEC','Tumeur bénigne autres glandes endocrines et structures apparenté'),('2279','Benign neo endocrine NOS','Tumeur bénigne autres glandes endocr.et stuctures apparentées si'),('2281','Lymphangioma, any site','Lymphangiome, tout siège'),('2290','Benign neo lymph nodes','Tumeurs bénignes de sièges autres et non précisés, ganglions lym'),('2298','Benign neoplasm NEC','Tumeurs bénignes de sièges autres et non précisés, autres sièges'),('2299','Benign neoplasm NOS','Tumeurs bénignes de sièges autres et non précisés, siège non pré'),('2300','Ca in situ oral cav/phar','Carcinome in situ app.digestif, lèvre, cavité bucc.et pharynx sf'),('2301','Ca in situ esophagus','Carcinome in situ de l\'appareil digestif, oesophage'),('2302','Ca in situ stomach','Carcinome in situ de l\'appareil digestif, estomac'),('2303','Ca in situ colon','Carcinome in situ de l\'appareil digestif, côlon'),('2304','Ca in situ rectum','Carcinome in situ de l\'appareil digestif, rectum'),('2305','Ca in situ anal canal','Carcinome in situ de l\'appareil digestif, canal anal'),('2306','Ca in situ anus NOS','Carcinome in situ de l\'appareil digestif, anus - sans précision,'),('2307','Ca in situ bowel NEC/NOS','Carcinome in situ app.digestif, pties sai de l\'intestin sauf 230'),('2308','Ca in situ liver/biliary','Carcinome in situ de l\'appareil digestif, foie et voies biliaire'),('2309','Ca in situ GI NEC/NOS','Carcinome in situ app. digestif, parties autres et non précisées'),('2310','Ca in situ larynx','Carcinome in situ de l\'appareil respiratoire, larynx'),('2311','Ca in situ trachea','Carcinome in situ de l\'appareil respiratoire, trachée'),('2312','Ca in situ bronchus/lung','Carcinome in situ de l\'appareil respiratoire, bronches et poumon'),('2318','Ca in situ resp sys NEC','Carcinome in situ app.respir., aut.pties précis.app.respir.sauf '),('2319','Ca in situ resp sys NOS','Carcinome in situ de l\'appareil respiratoire - sans précision'),('2320','Ca in situ skin lip','Carcinome in situ de la peau, face cutanée des lèvres'),('2321','Ca in situ eyelid','Carcinome in situ de la peau, paupières y compris canthus'),('2322','Ca in situ skin ear','Carcinome in situ de la peau, oreille et conduit auditif externe'),('2323','Ca in situ skin face NEC','Carcinome in situ de la peau, parties autres et non précisées de'),('2324','Ca in situ scalp','Carcinome in situ de la peau, cuir chevelu et peau du cou'),('2325','Ca in situ skin trunk','Carcinome in situ, peau du tronc sf scrotum, sf 2306-2305-2333-2'),('2326','Ca in situ skin arm','Carcinome in situ de la peau du membre supérieur, y compris l\'ép'),('2327','Ca in situ skin leg','Carcinome in situ de la peau du membre inférieur, y compris la h'),('2328','Ca in situ skin NEC','Carcinome in situ de la peau, autres sièges précisés'),('2329','Ca in situ skin NOS','Carcinome in situ de la peau, siège non précisé'),('2330','Ca in situ breast','Carcinome in situ du sein'),('2331','Ca in situ cervix uteri','Carcinome in situ du col de l\'utérus'),('2332','Ca in situ uterus NEC','Carcinome in situ sein et app. génito-urin., parties aut. et non'),('2334','Ca in situ prostate','Carcinome in situ de la prostate'),('2335','Ca in situ penis','Carcinome in situ du pénis'),('2336','Ca in situ male gen NEC','Carcinome in situ des organes génitaux autres ou non précisés de'),('2337','Ca in situ bladder','Carcinome in situ de la vessie'),('2339','Ca in situ urinary NEC','Carcinome in situ des organes urinaires autres ou non précisés'),('2340','Ca in situ eye','Carcinome in situ de sièges autres et non précisés, oeil'),('2348','Ca in situ NEC','Carcinome in situ, autres sièges précisés'),('2349','Ca in situ NOS','Carcinome in situ, siège non précisé'),('2350','Unc behav neo salivary','Tumeurs évolution imprévis.app digestif et respirat.-glandes sal'),('2351','Unc behav neo oral/phar','Tum.évolut.imprév.app.digestif/respir.-lèvre,cavit.bucc., pharyn'),('2352','Unc behav neo intestine','Tumeurs évolution imprév.app.digestif et respirat. - estomac, in'),('2353','Unc behav neo liver','Tumeurs évolution imprév.app.digestif et respirat. - foie et voi'),('2354','Unc behav neo peritoneum','Tumeurs évolution imprév.app.digestif et respir.- tissu rétropér'),('2355','Unc behav neo GI NEC','Tum.évolut.imprév.-pties sai de l\'app.digestif sauf 2382'),('2356','Unc behav neo larynx','Tumeurs évolution imprév.app.digestif et respir.- larynx'),('2357','Unc behav neo lung','Tumeurs évolution imprév.app.digestif et respir. - trachée, bron'),('2358','Unc behav neo pleura','Tumeurs évolution imprév.app.digestif et respir.-plèvre, thymus '),('2359','Unc behav neo resp NEC','Tum.évolut.imprév.-pties sai app.respirat. sauf 2382'),('2360','Uncert behav neo uterus','Tumeurs à évolution imprévisible de l\'appareil génito-urinaire -'),('2361','Unc behav neo placenta','Tumeurs à évolution imprévisible de l\'appareil génito-urinaire -'),('2362','Unc behav neo ovary','Tumeurs à évolution imprévisible de l\'appareil génito-urinaire -'),('2363','Unc behav neo female NEC','Tumeurs évolution imprév.- organes génitaux autres ou non précis'),('2364','Unc behav neo testis','Tumeurs à évolution imprévisible de l\'appareil génito-urinaire -'),('2365','Unc behav neo prostate','Tumeurs à évolution imprévisible de l\'appareil génito-urinaire -'),('2366','Unc behav neo male NEC','Tumeurs à évolution imprév.- organes génitaux autres ou n-précis'),('2367','Unc behav neo bladder','Tumeurs à évolution imprévisible de l\'appareil génito-urinaire -'),('2370','Unc behav neo pituitary','Tumeur évolut.imprév.glandes endocr.et syst.nerv.-hypophyse et t'),('2371','Unc behav neo pineal','Tumeurs évolution imprév.glandes endocrines et système nerveux- '),('2372','Unc behav neo adrenal','Tumeurs évolution imprév. glandes endocrines et système nerveux '),('2373','Unc behav neo paragang','Tumeurs évolution imprév.glandes endocrines et système nerveux-p'),('2374','Uncer neo endocrine NEC','Tumeurs évolution imprévisible glandes endocrines autres et sans'),('2375','Unc beh neo brain/spinal','Tumeurs évolution imprév.glandes endocr.et syst.nerv.-encéphale '),('2376','Unc behav neo meninges','Tumeurs évolution imprév. glandes endocrines et système nerveux '),('2379','Unc beh neo nerv sys NEC','Tumeurs évolution imprév.- parties autres et non précisées du sy'),('2380','Unc behav neo bone','Tum.évolut.imprév.sièges+tissus sai-os+cartil.articul.sf 2356-23'),('2381','Unc behav neo soft tissu','Tum.évol.imprév.,- tissu conjonct.+aut.tissus mous sf 2380-2356-'),('2382','Unc behav neo skin','Tum.évol.imprév.sièges + tissus sai-peau sf 2355-2351-2363-2366'),('2383','Unc behav neo breast','Tumeurs évolution imprév.sièges et tissus aut.et n-précisés-sein'),('2384','Polycythemia vera','Tumeurs évolut imprév.sièges et tissus aut.et n-précis.-polyglob'),('2385','Mastocytoma NOS','Tumeurs évolut.imprév.sièges et tissus aut.et n-précis.-histiocy'),('2386','Plasmacytoma NOS','Tumeurs évolution imprév.sièges et tissus aut.et n-précisés-plas'),('2388','Uncert behavior neo NEC','Tum.évol.imprév.sièges + tissus sai, aut.sièges précisés sf 2381'),('2389','Uncert behavior neo NOS','Tumeurs évolution imprévible sièges et tissus aut.et n-précis.si'),('2390','Digestive neoplasm NOS','Tumeur de nature non précisée, appareil digestif'),('2391','Respiratory neoplasm NOS','Tumeur de nature non précisée, appareil respiratoire'),('2392','Bone/skin neoplasm NOS','Tum.nature non précisée, os, tissus mous et peau sf 2390-2398-23'),('2393','Breast neoplasm NOS','Tumeur de nature non précisée, sein'),('2394','Bladder neoplasm NOS','Tumeur de nature non précisée, vessie'),('2395','Other gu neoplasm NOS','Tumeur de nature non précisée, autres organes génito-urinaires'),('2396','Brain neoplasm NOS','Tumeur de nature non précisée, encéphale'),('2397','Endocrine/nerv neo NOS','Tum.nature non précisée, glandes endocrines + aut.pties syst.ner'),('2399','Neoplasm NOS','Tumeur de nature non précisée, siège non précisé'),('2400','Simple goiter','Goître, précisé comme simple'),('2409','Goiter NOS','Goître - sans précision'),('2410','Nontox uninodular goiter','Goître uninodulaire non toxique'),('2411','Nontox multinodul goiter','Goître multinodulaire non toxique'),('2419','Nontox nodul goiter NOS','Goître nodulaire non toxique - sans précision'),('243','Congenital hypothyroidsm','Hypothyroïdie congénitale'),('2440','Postsurgical hypothyroid','Hypothyroïdie postopératoire'),('2441','Postablat hypothyr NEC','Autres hypothyroïdies après ablation'),('2442','Iodine hypothyroidism','Hypothyroïdie iodurée'),('2443','Iatrogen hypothyroid NEC','Autre hypothyroïdie iatrogène'),('2448','Acquired hypothyroid NEC','Hypothyroïdie acquise - autres'),('2449','Hypothyroidism NOS','Hypothyroïdie - sans précision'),('2450','Acute thyroiditis','Thyroïdite aiguë'),('2451','Subacute thyroiditis','Thyroïdite subaiguë'),('2452','Chr lymphocyt thyroidit','Thyroïdite chronique lymphomateuse'),('2453','Chr fibrous thyroiditis','Thyroïdite ligneuse chronique'),('2454','Iatrogenic thyroiditis','Thyroïdite iatrogène'),('2458','Chr thyroiditis NEC/NOS','Thyroïdites chroniques - autres et sans précision'),('2459','Thyroiditis NOS','Thyroïdite - sans précision'),('2460','Dis thyrocalciton secret','Troubles de la sécrétion de la thyrocalcitonine'),('2461','Dyshormonogenic goiter','Goître dû à un trouble de la synthèse hormonale'),('2462','Cyst of thyroid','Kyste du corps thyroïde'),('2463','Hemorr/infarc thyroid','Hémorragie et infarctus du corps thyroïde'),('2468','Disorders of thyroid NEC','Autres troubles du corps thyroïde - autres'),('2469','Disorder of thyroid NOS','Autres troubles du corps thyroïde - sans précision'),('2510','Hypoglycemic coma','Coma hypoglycémique'),('2511','Oth spcf hypoglycemia','Autres hypérinsulinismes'),('2512','Hypoglycemia NOS','Hypoglycémie - sans précision'),('2513','Postsurg hypoinsulinemia','Hypo-insulinisme postopératoire'),('2514','Abn secretion glucagon','Anomalie de la sécrétion du glucagon'),('2515','Abnorm secretion gastrin','Anomalie de la sécrétion de la gastrine'),('2518','Pancreatic disorder NEC','Autres troubles de la sécrétion pancréatique interne - autres'),('2519','Pancreatic disorder NOS','Autres troubles de la sécrétion pancréatique interne - sans préc'),('2521','Hypoparathyroidism','Hypoparathyroïdie'),('2528','Parathyroid disorder NEC','Troubles de la glande parathyroïde - autres'),('2529','Parathyroid disorder NOS','Troubles de la glande parathyroïde - sans précision'),('2530','Acromegaly and gigantism','Acromégalie et gigantisme'),('2531','Ant pituit hyperfunc NEC','Autres hypersécrétions de l\'hormone antéhypophysaire'),('2532','Panhypopituitarism','Panhypopituitarisme'),('2533','Pituitary dwarfism','Nanisme pituitaire'),('2534','Anter pituitary dis NEC','Autres troubles de la sécrétion de l\'hormone antéhypophysaire'),('2535','Diabetes insipidus','Diabète insipide'),('2536','Neurohypophysis dis NEC','Autres troubles de la neurohypophyse'),('2537','Iatrogenic pituitary dis','Troubles pituitaires iatrogènes'),('2538','Pituitary disorder NEC','Aut. troubles hypophyse et autres syndromes origine diencéphalo-'),('2539','Pituitary disorder NOS','Troubles de l\'hypophyse et de son contrôle hypothalamique - sans'),('2540','Persist hyperplas thymus','Hyperplasie du thymus'),('2541','Abscess of thymus','Abcès du thymus'),('2548','Diseases of thymus NEC','Maladies du thymus - autres'),('2549','Disease of thymus NOS','Maladies du thymus - sans précision'),('2550','Cushing\'s syndrome','Syndrome de cushing'),('2552','Adrenogenital disorders','Troubles adréno-génitaux'),('2553','Corticoadren overact NEC','Autres hyperfonctionnements de la corticosurrénale'),('2555','Adrenal hypofunction NEC','Autres hypofonctionnements de la glande surrénale'),('2556','Medulloadrenal hyperfunc','Hyperfonctionnement de la médullo surrénale'),('2558','Adrenal disorder NEC','Troubles des glandes surrénales - autres'),('2559','Adrenal disorder NOS','Troubles des glandes surrénales - sans précision'),('2560','Hyperestrogenism','Hyperoestrogénie'),('2561','Ovarian hyperfunc NEC','Autres hyperfonctions ovariennes'),('2562','Postablativ ovarian fail','Insuffisance ovarienne après ablation'),('2564','Polycystic ovaries','Ovaires polykystiques'),('2568','Ovarian dysfunction NEC','Dysfonction ovarienne - autres'),('2569','Ovarian dysfunction NOS','Dysfonction ovarienne - sans précision'),('2570','Testicular hyperfunction','Hyperfonction testiculaire'),('2571','Postablat testic hypofun','Hypofonction testiculaire après ablation'),('2572','Testicular hypofunc NEC','Autre hypofonction testiculaire'),('2578','Testicular dysfunct NEC','Dysfonction testiculaire - autres'),('2579','Testicular dysfunct NOS','Dysfonction testiculaire - sans précision'),('2581','Comb endocr dysfunct NEC','Autres associations de dysfonctions endocriniennes'),('2588','Polyglandul dysfunc NEC','Dysfonction pluriglandulaire et troubles apparentés - autres'),('2589','Polyglandul dysfunc NOS','Dysfonction pluriglandulaire - sans précision'),('2590','Delay sexual develop NEC','Retard du développement sexuel et de la puberté, non classé aill'),('2591','Sexual precocity NEC','Précocité du développement sexuel et de la puberté, non classé a'),('2592','Carcinoid syndrome','Syndrome carcinoïde'),('2593','Ectopic hormone secr NEC','Trouble de la sécrétion hormonale, non classé ailleurs'),('2594','Dwarfism NEC','Nanisme, non classé ailleurs'),('2598','Endocrine disorders NEC','Autres troubles endocriniens - autres'),('2599','Endocrine disorder NOS','Autres troubles endocriniens - sans précision'),('260','Kwashiorkor','Fièvre par morsure de rat, sodoku'),('261','Nutritional marasmus','Athrepsie nutritionnelle'),('262','Oth severe malnutrition','Malnutrition protéino-calorique sévère'),('2630','Malnutrition mod degree','Malnutrition modérée'),('2631','Malnutrition mild degree','Malnutrition légère'),('2632','Arrest devel d/t malnutr','Retard de développement dû à la malnutrition protéino-calorique'),('2638','Protein-cal malnutr NEC','Autres malnutritions protéino-caloriques'),('2639','Protein-cal malnutr NOS','Malnutritions protéino-caloriques - sans précision'),('2640','Vit A conjunctiv xerosis','Avitaminose a, avec xérose de la conjonctivite'),('2641','Vit A bitot\'s spot','Avitaminose a, avec taches de bitot et xérose de la conjonctivit'),('2642','Vit A corneal xerosis','Avitaminose a, avec xérosis de la cornée'),('2643','Vit A cornea ulcer/xeros','Avitaminose a, avec xérosis et ulcération de la cornée'),('2644','Vit A keratomalacia','Kératomalacie due à l\'avitaminose a'),('2645','Vit A night blindness','Héméralopie due à l\'avitaminose a'),('2646','Vit A def w corneal scar','Cicatrices xérophtalmiques de la cornée au cours de l\'avitaminos'),('2647','Vit A ocular defic NEC','Autres manifestations oculaires de l\'avitaminose a'),('2648','Vitamin A deficiency NEC','Autres manifestations de l\'avitaminose a'),('2649','Vitamin A deficiency NOS','Avitaminose a - sans précision'),('2650','Beriberi','Béribéri'),('2651','Thiamine defic NEC/NOS','Manifestations de la carence en thiamine, autres et non précisée'),('2652','Pellagra','Pellagre'),('2660','Ariboflavinosis','Ariboflavinose'),('2661','Vitamin b6 deficiency','Avitaminose b6'),('2662','B-complex defic NEC','Autres carences en vitamine b'),('2669','Vitamin b deficiency NOS','Avitaminoses b - sans précision'),('267','Ascorbic acid deficiency','Carence en acide ascorbique'),('2680','Rickets, active','Rachitisme évolutif'),('2681','Rickets, late effect','Séquelles du rachitisme'),('2682','Osteomalacia NOS','Ostéomalacie'),('2689','Vitamin D deficiency NOS','Carence en vitamine d - sans précision'),('2690','Deficiency of vitamin k','Avitaminose k'),('2691','Vitamin Deficiency NEC','Autres avitaminoses'),('2692','Vitamin Deficiency NOS','Avitaminose - sans précision'),('2693','Mineral deficiency NEC','Carence en sels minéraux, non classée ailleurs'),('2698','Nutrition deficiency NEC','Autres carences nutritionnelles'),('2699','Nutrition deficiency NOS','Autres avitaminoses et états de carence - sans précision'),('2700','Amino-acid transport dis','Troubles de l\'élimination des acides aminés'),('2701','Phenylketonuria - pku','Phénylcétonurie'),('2702','Arom amin-acid metab NEC','Autres troubles du métabolisme des acides aminés aromatiques, sa'),('2703','Bran-chain amin-acid dis','Troubles du métabolisme des acides aminés à chaîne ramifiée'),('2704','Sulph amino-acid met dis','Troubles du métabolisme des acides aminés soufrés'),('2705','Dis histidine metabolism','Troubles du métabolisme de l\'histidine'),('2706','Dis urea cycle metabol','Troubles du métabolisme des acides aminés de l\'urée'),('2707','Straig amin-acid met NEC','Autres troubles du métabolisme des acides aminés à chaîne linéai'),('2708','Dis amino-acid metab NEC','Troubles du métabolisme et de l\'élimination des acides aminés - '),('2709','Dis amino-acid metab NOS','Troubles du métab.et de l\'élimination des acides aminés - sans p'),('2710','Glycogenosis','Glycogénose'),('2711','Galactosemia','Galactosémie'),('2712','Hered fructose intoleran','Intolérance héréditaire au fructose'),('2713','Disaccharidase def/malab','Déficit intestinal en disaccharidase et défaut d\'absorption des '),('2714','Renal glycosuria','Glycosurie rénale'),('2718','Dis carbohydr metab NEC','Troubles du métabolisme et de l\'élimination des hydrates de carb'),('2719','Dis carbohydr metab NOS','Troubles métabolisme et élimination des hydrates de carbone - sa'),('2720','Pure hypercholesterolem','Hypercholestérolémie essentielle'),('2721','Pure hyperglyceridemia','Hyperglycéridémie majeure'),('2722','Mixed hyperlipidemia','Hyperlipidémie mixte'),('2723','Hyperchylomicronemia','Hyperchylomicronémie'),('2724','Hyperlipidemia NEC/NOS','Hyperlipidémies, autres et non précisées'),('2725','Lipoprotein deficiencies','Déficit en lipoprotéines'),('2726','Lipodystrophy','Lypodystrophie'),('2727','Lipidoses','Lipidoses'),('2728','Lipoid metabol dis NEC','Troubles du métabolisme des lipides - autres'),('2729','Lipoid metabol dis NOS','Troubles du métabolisme des lipides - sans précision'),('2730','Polyclon hypergammaglobu','Hypergammaglobulinémie polyclonale'),('2731','Monoclon paraproteinemia','Paraprotéinémie monoclonale'),('2732','Paraproteinemia NEC','Autres paraprotéinémies'),('2733','Macroglobulinemia','Macroglobulinémie'),('2738','Dis plas protein met NEC','Troubles du métabolisme des protides plasmatiques - autres'),('2739','Dis plas protein met NOS','Troubles du métabolisme des protides plasmatiques - sans précisi'),('2749','Gout NOS','Goutte - sans précision'),('2751','Dis copper metabolism','Troubles du métabolisme du cuivre'),('2752','Dis magnesium metabolism','Troubles du métabolisme du magnésium'),('2753','Dis phosphorus metabol','Troubles du métabolisme du phosphore'),('2758','Dis mineral metabol NEC','Troubles du métabolisme des hydrominéraux - autres'),('2759','Dis mineral metabol NOS','Troubles du métabolisme des hydrominéraux - sans précision'),('2760','Hyperosmolality','Hyperosmolarité'),('2761','Hyposmolality','Hypoosmolarité'),('2762','Acidosis','Acidose'),('2763','Alkalosis','Alcalose'),('2764','Mixed acid-base bal dis','Autres troubles de l\'équilibre acido-basique'),('2767','Hyperpotassemia','Troubles équilibre acido-basique et métabolisme eau et électrol.'),('2768','Hypopotassemia','Troubles équilibre acido-basique et métabolisme eau et électrol.'),('2769','Electrolyt/fluid dis NEC','Trb.du métabo.eau et des électrolytes non cl.aill.sf 6431-634à63'),('2771','Dis porphyrin metabolism','Troubles du métabolisme de la porphyrine'),('2772','Purine/pyrimid dis NEC','Autres troubles du métabolisme de la purine et de la pyrimidine,'),('2774','Dis bilirubin excretion','Troubles de l\'excrétion de la bilirubine'),('2775','Mucopolysaccharidosis','Mucopolysaccharidoses'),('2776','Defic circul enzyme NEC','Autres déficits en enzymes circulants'),('2779','Metabolism disorder NOS','Troubles du métabolisme - sans précision'),('2781','Localized adiposity','Adiposité localisée'),('2782','Hypervitaminosis a','Hypervitaminose a'),('2783','Hypercarotinemia','Hypercarotinémie'),('2784','Hypervitaminosis d','Hypervitaminose d'),('2788','Other hyperalimentation','Obésité et autres troubles par excès d\'apport - autres'),('2792','Combined immunity defic','Déficit immunitaire complexe'),('2793','Immunity deficiency NOS','Déficit immunitaire - sans précision'),('2798','Immune mechanism dis NEC','Troubles immunitaires - autres'),('2799','Immune mechanism dis NOS','Troubles immunitaires - sans précision'),('2809','Iron defic anemia NOS','Anémies par carence en fer - sans précision'),('2810','Pernicious anemia','Anémie pernicieuse'),('2811','B12 defic anemia NEC','Autre anémie par carence en vitamine b12'),('2812','Folate-deficiency anemia','Anémie par carence en acide folique'),('2813','Megaloblastic anemia NEC','Autres anémies mégaloblastiques précisées non classées ailleurs'),('2814','Protein defic anemia','Anémies par carence en protéines'),('2818','Nutritional anemia NEC','Anémie au cours d\'autres carences nutritionnelles précisées'),('2819','Deficiency anemia NOS','Autres anémies par carence - sans précision'),('2820','Hereditary spherocytosis','Sphérocytose héréditaire'),('2821','Heredit elliptocytosis','Elliptocytose héréditaire'),('2822','Glutathione dis anemia','Anémies hémolytiques par troubles du métabolisme du glutathion'),('2823','Enzyme defic anemia NEC','Autres anémies héréditaires hémolytiques non sphérocytaires'),('2825','Sickle-cell trait','Drépanocytose latente'),('2827','Hemoglobinopathies NEC','Autres hémoglobinoses'),('2828','Hered hemolytic anem NEC','Anémies hémolytiques héréditaires - autres'),('2829','Hered hemolytic anem NOS','Anémies hémolytiques héréditaires - sans précision'),('2830','Autoimmun hemolytic anem','Anémies hémolytiques par autoanticorps'),('2832','Hemolytic hemoglobinuria','Hémoglobinurie due à l\'hémolyse'),('2839','Acq hemolytic anemia NOS','Anémies hémolytiques acquises - sans précision'),('2849','Aplastic anemia NOS','Anémie aplastique - sans précision'),('2850','Sideroblastic anemia','Anémies hypochromes hypersidérémiques'),('2851','Ac posthemorrhag anemia','Anémie posthémorragique aiguë'),('2858','Anemia NEC','Autres anémies précisées'),('2859','Anemia NOS','Anémies - sans précision'),('2860','Cong factor viii diord','Carence congénitale en facteur viii'),('2861','Cong factor IX disorder','Carence congénitale en facteur ix'),('2862','Cong factor xi disorder','Carence congénitale en facteur xi'),('2863','Cong def clot factor NEC','Autres carences congénitales en facteurs de coagulation'),('2864','Von willebrand\'s disease','Maladie de von willebrand-jurgens'),('2866','Defibrination syndrome','Syndrome de défibrination'),('2867','Acq coagul factor defic','Carences acquises en facteurs de coagulation'),('2869','Coagulat defect NEC/NOS','Anomalies de la coagulation - sai sf 634à638-6341-6391-6413-6663'),('2870','Allergic purpura','Purpura allergique'),('2871','Thrombocytopathy','Modifications qualitatives des plaquettes'),('2872','Purpura NOS','Autres purpuras non thrombocytopéniques'),('2875','Thrombocytopenia NOS','Thrombocytopénie - sans précision'),('2878','Hemorrhagic cond NEC','Autres affections hémorragiques précisées'),('2879','Hemorrhagic cond NOS','Affections hémorragiques - sans précision'),('2881','Function dis neutrophils','Troubles fonctionnels des polynucléaires neutrophiles'),('2882','Genetic anomaly leukocyt','Anomalies génétiques des leucocytes'),('2883','Eosinophilia','Eosinophilie'),('2888','Wbc disease NEC','Maladies des globules blancs - autres'),('2889','Wbc disease NOS','Maladies des globules blancs - sans précision'),('2890','Secondary polycythemia','Polycythémie secondaire'),('2891','Chronic lymphadenitis','Lymphadénite chronique'),('2892','Mesenteric lymphadenitis','Lymphadénite mésentérique non spécifique'),('2893','Lymphadenitis NOS','Lymphadénite, sans précision'),('2894','Hypersplenism','Hypersplénie'),('2896','Familial polycythemia','Polycythémie congénitale familiale'),('2897','Methemoglobinemia','Méthémoglobinémie'),('2899','Blood disease NOS','Autres maladies du sang et des organes hématopoïétiques - sans p'),('2900','Senile dementia uncomp','Démence sénile, forme simple'),('2903','Senile delirium','Démence sénile avec état confusionnel aigu'),('2908','Senile psychosis NEC','États psychotiques organiques séniles et préséniles - autres'),('2909','Senile psychot cond NOS','États psychotiques organiques séniles et préseniles - sans préci'),('2910','Delirium tremens','Delirium tremens'),('2911','Alcohol amnestic disordr','Psychose de korsakov alcoolique'),('2912','Alcohol persist dementia','Autres démences alcooliques'),('2913','Alcoh psy dis w hallucin','Autres états hallucinatoires alcooliques'),('2914','Pathologic alcohol intox','Ivresse pathologique'),('2915','Alcoh psych dis w delus','Délire alcoolique de jalousie'),('2919','Alcohol mental disor NOS','Psychoses alcooliques - sans précision'),('2920','Drug withdrawal','Syndrome de sevrage de drogue'),('2922','Pathologic drug intox','Forme pathologique d\'intoxication par les drogues'),('2929','Drug mental disorder NOS','Psychoses dues aux drogues - sans précision'),('2930','Delirium d/t other cond','États confusionnels aigus'),('2931','Subacute delirium','États confusionnels subaigus'),('2939','Transient mental dis NOS','États psychotiques organiques transitoires - sans précision'),('2940','Amnestic disord oth dis','Psychose ou syndrome de korsakov (non alcoolique)'),('2948','Mental disor NEC oth dis','Autres états psychotiques organiques - autres'),('2949','Mental disor NOS oth dis','Autres états psychotiques organiques - sans précision'),('2970','Paranoid state, simple','État délirant, forme simple'),('2971','Delusional disorder','Paranoïa'),('2972','Paraphrenia','Paraphrénie'),('2973','Shared psychotic disord','Psychose induite'),('2978','Paranoid states NEC','États délirants - autres'),('2979','Paranoid state NOS','États délirants - sans précision'),('2980','React depress psychosis','Autres psychoses non organiques, forme dépressive'),('2981','Excitativ type psychosis','Autres psychoses non organiques, état d\'excitation'),('2982','Reactive confusion','Autres psychoses non organiques, confusion réactionnelle'),('2983','Acute paranoid reaction','Autres psychoses non organiques, bouffée délirante'),('2984','Psychogen paranoid psych','Psychose délirante psychogène'),('2988','React psychosis NEC/NOS','Psychose réactionnelle autre et non précisée'),('2989','Psychosis NOS','Psychose non précisée'),('3003','Obsessive-compulsive dis','Troubles obsessionnels et compulsifs'),('3004','Dysthymic disorder','Dépression névrotique'),('3005','Neurasthenia','Neurasthénie'),('3006','Depersonalization disord','Syndrome de dépersonnalisation'),('3007','Hypochondriasis','Hypocondrie'),('3009','Nonpsychotic disord NOS','Troubles névrotiques - sans précision'),('3010','Paranoid personality','Personnalité paranoïaque'),('3013','Explosive personality','Personnalité épileptoïde (explosive)'),('3014','Obsessive-compulsive dis','Personnalité obsessionnelle'),('3016','Dependent personality','Personnalité asthénique'),('3017','Antisocial personality','Trb.pers.avec prédominance de manifest.sociopathiques ou asocial'),('3019','Personality disorder NOS','Troubles de la personnalité - sans précision'),('3021','Zoophilia','Bestialité'),('3022','Pedophilia','Pédophilie'),('3023','Transvestic fetishism','Transvestisme'),('3024','Exhibitionism','Exhibitionnisme'),('3026','Gendr identity dis-child','Troubles de l\'identité psycho-sexuelle'),('3029','Psychosexual dis NOS','Déviations et troubles sexuels - sans précision'),('3051','Tobacco use disorder','Abus de drogues chez une personne non dépendante, tabac'),('3060','Psychogen musculskel dis','Dysfonctionnement neurovégétatif somatoforme, ostéo-musculaires '),('3064','Psychogenic GI disease','Dysfonctionnement neurovégétatif somatoforme, gastro-intest. sf '),('3066','Psychogen endocrine dis','Dysfonctionnement neurovégétatif somatoforme, endocriniens'),('3067','Psychogenic sensory dis','Dysfonctionnement neurovégétatif somatoforme, sensoriels sf 3001'),('3068','Psychogenic disorder NEC','Dysfonctionnement neurovégétatif somatoforme - Autres'),('3069','Psychogenic disorder NOS','Dysfonctionnement neurovégétatif somatoforme - Sans précision'),('3070','Adult onset flncy disord','Bégaiement'),('3071','Anorexia nervosa','Anorexie mentale'),('3073','Stereotypic movement dis','Mouvements stéréotypés'),('3076','Enuresis','Énurésie'),('3077','Encopresis','Encoprésie'),('3079','Special symptom NEC/NOS','Symptômes ou troubles spéciaux non classés ailleurs - autres et '),('3080','Stress react, emotional','États réactionnels aigus avec troubles prédominants de l\'affecti'),('3081','Stress reaction, fugue','États réactionnels aigus avec troubles prédominants de la consci'),('3082','Stress react, psychomot','États réactionnels aigus avec troubles prédominants de la psycho'),('3083','Acute stress react NEC','États réactionnels aigus à une situation très éprouvante - autre'),('3084','Stress react, mixed dis','États réactionnels aigus à une situation très éprouvante, mixtes'),('3089','Acute stress react NOS','États réactionnels aigus à une situation très éprouvante - sans '),('3090','Adjustmnt dis w depressn','Réaction dépressive brève'),('3091','Prolong depressive react','Réaction dépressive prolongée'),('3093','Adjust disor/dis conduct','Trb.de l\'adaptation avec trb.prédominants de la conduite'),('3094','Adj dis-emotion/conduct','Troubles de l\'adaptation avec troubles mixtes de l\'affectivité e'),('3099','Adjustment reaction NOS','Troubles de l\'adaptation - sans précision'),('3100','Frontal lobe syndrome','Troubles mentaux spécifiques non psychotiques - syndrome frontal'),('3101','Personality chg oth dis','Modifications intellectuelles ou de la personnalité d\'un autre t'),('3102','Postconcussion syndrome','Syndr.post-traum.(commotionnel ou contusionnel)'),('3109','Nonpsychot brain syn NOS','Troubles mentaux spécifiques non psychotiques ... - sans précisi'),('311','Depressive disorder NEC','Maladies attribuables à d\'autres mycobactéries, cutanées'),('3129','Conduct disturbance NOS','Troubles de la conduite non classés ailleurs - sans précision'),('3130','Overanxious disorder','Trb.affect.spécif.enf., adol.forme inquié., crainte, sf 3092-300'),('3131','Misery & unhappiness dis','Trb.affect.spécif.enf., adol.forme tristesse+détresse morale, sa'),('3133','Relationship problems','Trb.affect.spécif.enf.+adol.-à forme de difficultés relationnell'),('3139','Emotional dis child NOS','Troubles affectivité spécifiques de l\'enfance et de l\'adol. - sa'),('3141','Hyperkinet w devel delay','Instabilité avec retard du développement'),('3142','Hyperkinetic conduct dis','Troubles de la conduite liés à l\'instabilité'),('3148','Other hyperkinetic synd','Instabilité de l\'enfance - autres'),('3149','Hyperkinetic synd NOS','Instabilité de l\'enfance - sans précision'),('3151','Mathematics disorder','Retard spécifique en calcul'),('3152','Oth learning difficulty','Autres difficultés spécifiques de l\'apprentissage scolaire'),('3154','Devel coordination dis','Retard spécifique de la motricité'),('3155','Mixed development dis','Troubles mixtes du développement'),('3158','Development delays NEC','Retards spécifiques du développement - autres'),('3159','Development delay NOS','Retards spécifiques du développement - sans précision'),('316','Psychic factor w oth dis','Facteurs psychiques associés à des affections classées ailleurs,'),('317','Mild intellect disabilty','Retard mental léger'),('3180','Mod intellect disability','Retard mental moyen'),('3181','Sev intellect disability','Retard mental grave'),('3182','Profnd intellct disablty','Retard mental profond'),('319','Intellect disability NOS','Maladies attribuables à d\'autres mycobactéries - sans précision'),('3200','Hemophilus meningitis','Méningite bactérienne, à haemophilus'),('3201','Pneumococcal meningitis','Méningite bactérienne, à pneumocoques'),('3202','Streptococcal meningitis','Méningite bactérienne, à streptocoques'),('3203','Staphylococc meningitis','Méningite bactérienne, à staphylocoques'),('3207','Mening in oth bact dis','Méningite bactérienne due à d\'autres maladies bactériennes class'),('3209','Bacterial meningitis NOS','Méningite bactérienne - sans précision'),('3210','Cryptococcal meningitis','Méningite due à d\'autres micro-organismes, mycosique'),('3211','Mening in oth fungal dis','Méningite due à d\'autres micro-organismes, virus coxsackie'),('3212','Mening in oth viral dis','Méningite due à d\'autres micro-organismes, virus echo'),('3213','Trypanosomiasis meningit','Méningite due à d\'autres micro-organismes, virus du zona'),('3214','Meningit d/t sarcoidosis','Méningite due à d\'autres micro-organismes, virus de l\'herpès'),('3218','Mening in oth nonbac dis','Méningite due à d\'autres micro-organismes - autres'),('3220','Nonpyogenic meningitis','Méningite de cause non précisée, non purulente'),('3221','Eosinophilic meningitis','Méningite de cause non précisée, à éosinophiles'),('3222','Chronic meningitis','Méningite de cause non précisée, chronique'),('3229','Meningitis NOS','Méningite de cause non précisée - sans précision'),('3231','Rickettsial encephalitis','Leucoencéphalite sclérosante subaiguë'),('3232','Protozoal encephalitis','Poliomyélite'),('3239','Encephalitis NOS','Encéphalite, myélite et encéphalo-myélite, de cause non précisée'),('3240','Intracranial abscess','Abcès intracrânien'),('3241','Intraspinal abscess','Abcès intrarachidien'),('3249','Cns abscess NOS','Abcès intracrânien et intrarachidien, siège non précisé'),('325','Phlebitis intrcran sinus','Phlébite et thrombophlébite intracrâniennes'),('326','Late eff cns abscess','Séquelles d\'infection pyogène intracrânienne'),('3300','Leukodystrophy','Leucodystrophie'),('3301','Cerebral lipidoses','Cérébrolipidoses'),('3302','Cereb degen in lipidosis','Dégénérescence cérébrale dans les lipidoses généralisées'),('3303','Cerb deg chld in oth dis','Dégénérescence cérébrale de l\'enfance au cours d\'autres affectio'),('3308','Cereb degen in child NEC','Autres dégénérescences cérébrales de l\'enfance'),('3309','Cereb degen in child NOS','Dégénérescences cérébrales de l\'enfance - sans précision'),('3310','Alzheimer\'s disease','Maladie d\'alzheimer'),('3312','Senile degenerat brain','Dégénérescence cérébrale sénile'),('3313','Communicat hydrocephalus','Hydrocéphalie communicante'),('3314','Obstructiv hydrocephalus','Hydrocéphalie occlusive'),('3315','Norml pressure hydroceph','Maladie de jakob-creutzfeldt'),('3316','Corticobasal degneration','Leucoencéphalopathie multifocale progressive'),('3317','Cereb degen in oth dis','Dégénérescence cérébrale accompagnant d\'autres maladies classées'),('3319','Cereb degeneration NOS','Autres dégénérescences cérébrales - sans précision'),('3320','Paralysis agitans','Maladie de parkinson'),('3321','Secondary parkinsonism','Syndrome parkinsonien secondaire'),('3330','Degen basal ganglia NEC','Autres syndromes des noyaux gris de la base'),('3331','Tremor NEC','Tremblement essentiel et autre'),('3332','Myoclonus','Myoclonie'),('3333','Tics of organic origin','Tics d\'origine organique'),('3334','Huntington\'s chorea','Chorée de huntington'),('3335','Chorea NEC','Autres chorées'),('3336','Genetic torsion dystonia','Spasme de torsion essentiel'),('3340','Friedreich\'s ataxia','Ataxie de friedreich'),('3341','Hered spastic paraplegia','Paraplégie spasmodique héréditaire'),('3342','Primary cerebellar degen','Dégénérescence cérébelleuse primitive'),('3343','Cerebellar ataxia NEC','Autres ataxies cérébelleuses'),('3344','Cerebel atax in oth dis','Ataxies cérébelleuses accompagnant d\'autres affections classées '),('3348','Spinocerebellar dis NEC','Affections cérébello-médullaires - autres'),('3349','Spinocerebellar dis NOS','Affections cérébello-médullaires - sans précision'),('3350','Werdnig-hoffmann disease','Maladie de werdnig-hoffmann'),('3358','Ant horn cell dis NEC','Maladie des cellules des cornes antérieures de la moelle - autre'),('3359','Ant horn cell dis NOS','Maladie des cellules des cornes antérieures de la moelle - sans '),('3360','Syringomyelia','Syringomyélie et syringobulbie'),('3361','Vascular myelopathies','Myélopathies vasculaires'),('3362','Comb deg cord in oth dis','Dégénérescence combinée subaiguë de la moelle épinière'),('3363','Myelopathy in oth dis','Myélopathies accompagnant d\'autres affections classées ailleurs'),('3368','Myelopathy NEC','Autres myélopathies'),('3369','Spinal cord disease NOS','Autres affections de la moelle épinière - sans précision'),('3371','Aut neuropthy in oth dis','Neuropathie périphérique syst. nerv. autonome secondaire à certa'),('3379','Autonomic nerve dis NEC','Troubles du système nerveux autonome - sans précision'),('340','Multiple sclerosis','Angine à streptocoques'),('3410','Neuromyelitis optica','Neuro-myélite optique aiguë'),('3411','Schilder\'s disease','Maladie de schilder'),('3418','Cns demyelination NEC','Autres maladies démyélinisantes du système nerveux central - aut'),('3419','Cns demyelination NOS','Autres maladies démyélinisantes du systeme nerveux central - san'),('3430','Congenital diplegia','Paralysie cérébrale infantile, diplégique'),('3431','Congenital hemiplegia','Paralysie cérébrale infantile, hémiplégique'),('3432','Congenital quadriplegia','Paralysie cérébrale infantile, quadriplégique'),('3433','Congenital monoplegia','Paralysie cérébrale infantile, monoplégique'),('3434','Infantile hemiplegia','Paralysie cérébrale infantile, hémiplégie infantile'),('3438','Cerebral palsy NEC','Paralysie cérébrale infantile - autres'),('3439','Cerebral palsy NOS','Paralysie cérébrale infantile - sans précision'),('3441','Paraplegia NOS','Paraplégie'),('3442','Diplegia of upper limbs','Diplégie des membres supérieurs'),('3445','Monoplegia NOS','Monoplégie - sans précision'),('3449','Paralysis NOS','Autres syndrômes paralytiques - sans précision'),('3452','Petit mal status','Épilepsie, état de petit mal'),('3453','Grand mal status','Épilepsie, état de grand mal'),('3480','Cerebral cysts','Kystes cérébraux'),('3481','Anoxic brain damage','Lésion encéph.anoxie, sf 7670-768-7721-7722-634-638-6347-6387-63'),('3482','Pseudotumor cerebri','Hypertension intracrânienne bénigne'),('3484','Compression of brain','Compression de l\'encéphale'),('3485','Cerebral edema','Oedème cérébral'),('3489','Brain condition NOS','Autres affections de l\'encéphale - sans précision'),('3490','Lumbar puncture reaction','Réaction secondaire à ponction spinale ou lombaire'),('3491','Complication cns device','Affect.syst.nerv.sec.à implant.chirur.app.ou dispositifs'),('3492','Disorder of meninges NEC','Autres affections des méninges non classées ailleurs'),('3499','Cns disorder NOS','Affections syst. nerv., autres et sans précision - sans précisio'),('3501','Trigeminal neuralgia','Autres névralgies trigéminées'),('3502','Atypical face pain','Névralgie faciale atypique'),('3508','Trigeminal nerve dis NEC','Affections du nerf trijumeau - autres'),('3509','Trigeminal nerve dis NOS','Affections du nerf trijumeau - sans précision'),('3510','Bell\'s palsy','Paralysie de bell'),('3511','Geniculate ganglionitis','Névralgie du ganglion géniculé'),('3518','Facial nerve dis NEC','Affections du nerf facial - autres'),('3519','Facial nerve dis NOS','Affections du nerf facial - sans précision'),('3520','Olfactory nerve disorder','Affections du nerf olfactif (première paire)'),('3521','Glossopharyng neuralgia','Névralgie glosso-pharyngée'),('3522','Glossophar nerve dis NEC','Autres affections du glosso-pharyngien (neuvième paire)'),('3523','Pneumogastric nerve dis','Affection du pneumogastrique (dixième paire)'),('3524','Accessory nerve disorder','Affection du spinal (onzième paire)'),('3525','Hypoglossal nerve dis','Affection du grand hypoglosse (douzième paire)'),('3526','Mult cranial nerve palsy','Paralysie de plusieurs nerfs crâniens'),('3529','Cranial nerve dis NOS','Affections d\'autres nerfs crâniens - sans précision'),('3530','Brachial plexus lesions','Lésions du plexus brachial'),('3531','Lumbosacral plex lesion','Lésions du plexus lombo-sacré'),('3532','Cervical root lesion NEC','Lésions radiculaires cervicales, non classées ailleurs'),('3533','Thoracic root lesion NEC','Lésions radiculaires thoraciques, non classées ailleurs'),('3534','Lumbsacral root les NEC','Lésions radiculaires lombo-sacrées, non classées ailleurs'),('3535','Neuralgic amyotrophy','Névralgie amyotrophique'),('3536','Phantom limb (syndrome)','Syndrome du membre fantôme'),('3538','Nerv root/plexus dis NEC','Affections des racines et du plexus nerveux - autres'),('3539','Nerv root/plexus dis NOS','Affections des racines et du plexus nerveux - sans précision'),('3540','Carpal tunnel syndrome','Syndrome du canal carpien'),('3541','Median nerve lesion NEC','Autres lésions du nerf médian'),('3542','Ulnar nerve lesion','Lésion du nerf cubital'),('3543','Radial nerve lesion','Lésion du nerf radial'),('3544','Causalgia upper limb','Causalgie'),('3545','Mononeuritis multiplex','Mononévrites de sièges multiples'),('3548','Mononeuritis arm NEC','Mononévrites du membre supérieur et de sièges multiples - autres'),('3549','Mononeuritis arm NOS','Mononévrites du membre supérieur et de sièges multiples - sans p'),('3550','Sciatic nerve lesion','Lésion du nerf sciatique'),('3551','Meralgia paresthetica','Méralgie paresthésique'),('3552','Femoral nerve lesion NEC','Lésion du nerf fémoral'),('3553','Lat popliteal nerve les','Lésion du sciatique poplité externe'),('3554','Med popliteal nerve les','Lésion du sciatique poplité interne'),('3555','Tarsal tunnel syndrome','Syndrome du canal tarsien'),('3556','Plantar nerve lesion','Lésion des nerfs plantaires'),('3558','Mononeuritis leg NOS','Mononévrite non précisée du membre inférieur'),('3559','Mononeuritis NOS','Mononévrite du membre inférieur, de siège non précisé'),('3560','Hered periph neuropathy','Névrite interstitielle hypertrophique progressive'),('3561','Peroneal muscle atrophy','Amyotrophie péronière'),('3562','Hered sensory neuropathy','Neuropathie sensorielle héréditaire'),('3563','Refsum\'s disease','Maladie de refsum'),('3564','Idio prog polyneuropathy','Polynévrite idiopathique progressive'),('3568','Idio periph neurpthy NEC','Neuropathie périphérique héréditaire ou idiopathique - autres'),('3569','Idio periph neurpthy NOS','Neuropathie périphérique héréditaire ou idiopathique - sans préc'),('3570','Ac infect polyneuritis','Polynévrite infectieuse aiguë'),('3571','Neurpthy in col vasc dis','Polynévrite au cours d\'une affection du collagène vasculaire'),('3572','Neuropathy in diabetes','Polynévrite diabétique'),('3573','Neuropathy in malig dis','Polynévrite au cours d\'une affection maligne'),('3574','Neuropathy in other dis','Polynévrite au cours d\'autres affections classées ailleurs'),('3575','Alcoholic polyneuropathy','Polynévrite alcoolique'),('3576','Neuropathy due to drugs','Polynévrite d\'origine médicamenteuse'),('3577','Neurpthy toxic agent NEC','Polynévrite due à d\'autres agents toxiques'),('3579','Inflam/tox neuropthy NOS','Neuropathie inflammatoire ou toxique - sans précision'),('3581','Myasthenia in oth dis','Syndromes myasthéniques au cours d\'autres maladies classées aill'),('3582','Toxic myoneural disorder','Affections neuro-musculaires d\'origine toxique'),('3588','Myoneural disorders NEC','Affections neuro-musculaires - autres'),('3589','Myoneural disorders NOS','Affections neuro-musculaires - sans précision'),('3590','Cong hered musc dystrphy','Dystrophies musculaires héréditaires congénitales'),('3591','Hered prog musc dystrphy','Dystrophie musculaire progressive héréditaire'),('3593','Periodic paralysis','Paralysie périodique familiale'),('3594','Toxic myopathy','Myopathie toxique'),('3595','Myopathy in endocrin dis','Myopathie endocrinienne'),('3596','Infl myopathy in oth dis','Myopathie inflammatoire symptomatique'),('3599','Myopathy NOS','Dystrophies musculaires et autres myopathies - sans précision'),('3609','Disorder of globe NOS','Affections du globe oculaire - sans précision'),('3612','Serous retina detachment','Décollement séreux de la rétine'),('3619','Retinal detachment NOS','Décollement et anomalies de la rétine - sans précision'),('3629','Retinal disorder NOS','Autres affections rétiniennes - sans précision'),('3638','Disorders of choroid NEC','Autres affections de la choroïde'),('3639','Choroidal disorder NOS','Chorio-rétinite, cicatrices chorio-rétinien. et aut. affections '),('3643','Iridocyclitis NOS','Irido-cyclite sans précision'),('3649','Iris/ciliary dis NOS','Affections de l\'iris et du corps ciliaire - sans précision'),('3659','Glaucoma NOS','Glaucome - sans précision'),('3668','Cataract NEC','Autres cataractes'),('3669','Cataract NOS','Cataracte - sans précision'),('3670','Hypermetropia','Hypermétropie'),('3671','Myopia','Myopie'),('3674','Presbyopia','Presbytie'),('3679','Refraction disorder NOS','Vices de réfraction et troubles de l\'accommodation - sans précis'),('3682','Diplopia','Diplopie'),('3688','Visual disturbances NEC','Autres troubles de la vision'),('3689','Visual disturbance NOS','Troubles de la vision - sans précision'),('3693','Blindness NOS, both eyes','Perte de vision non qualifiée des deux yeux'),('3698','Visual loss, one eye NOS','Perte de vision non qualifiée d\'un oeil'),('3699','Visual loss NOS','Perte de vision - sans précision'),('3708','Keratitis NEC','Autres formes de kératite'),('3709','Keratitis NOS','Kératite - sans précision'),('3719','Corneal disorder NOS','Opacité cornéenne et autres affections de la cornée - sans préci'),('3729','Conjunctiva disorder NOS','Affections de la conjonctive - sans précision'),('3732','Chalazion','Chalazion'),('3734','Infect derm lid w deform','Dermites infectieuses de la paupière provoquant des déformations'),('3735','Infec dermatitis lid NEC','Autres dermites infectieuses de la paupière'),('3736','Parasitic infest eyelid','Infection parasitaire de la paupière'),('3738','Inflammation eyelid NEC','Inflammations de la paupière - autres'),('3739','Inflammation eyelid NOS','Inflammations de la paupière - sans précision'),('3749','Disorder of eyelid NOS','Affections des paupières - sans précision'),('3759','Lacrimal syst dis NOS','Affections de l\'appareil lacrymal - sans précision'),('3766','Old foreign body, orbit','Rétention (ancienne) de corps étranger second. à plaie pénétrant'),('3769','Orbital disorder NOS','Affections de l\'orbite - sans précision'),('3779','Optic nerve disorder NOS','Affections du nerf et des voies optiques - sans précision'),('3789','Eye movemnt disorder NOS','Strabisme et autres troubles de la motilité binoculaire - sans p'),('3798','Eye disorders NEC','Autres affections de l\'oeil et de ses annexes'),('3804','Impacted cerumen','Bouchon de cérumen'),('3809','Dis external ear NOS','Maladies de l\'oreille externe - sans précision'),('3813','Chr nonsup OM NOS/NEC','Otites moyennes chroniques non suppurées, autres et sans précisi'),('3814','Nonsupp otitis media NOS','Otites moyennes non suppurées, non précisées aiguës ou chronique'),('3817','Patulous eustachian tube','Distension de la trompe d\'eustache'),('3819','Eustachian tube dis NOS','Affections de la trompe d\'eustache - sans précision'),('3821','Chr tubotympan suppur OM','Otite moyenne tubo-tympanique, chronique, suppurée'),('3822','Chr atticoantral sup OM','Otite moyenne attico-antrale chronique, suppurée'),('3823','Chr sup otitis media NOS','Otite moyenne chronique, suppurée - sans précision'),('3824','Suppur otitis media NOS','Otite moyenne suppurée - sans précision'),('3829','Otitis media NOS','Otite moyenne - sans précision'),('3831','Chronic mastoiditis','Mastoïdite chronique'),('3839','Mastoiditis NOS','Mastoïdite - sans précision'),('3841','Chronic myringitis','Tympanite chronique sans mention d\'otite moyenne'),('3849','Dis tympanic memb NOS','Affections de la membrane du tympan - sans précision'),('3859','Dis mid ear/mastoid NOS','Autres affections de l\'oreille moyenne et de la mastoïde - sans '),('3862','Central origin vertigo','Vertige d\'origine centrale'),('3868','Disorders labyrinth NEC','Autres maladies du labyrinthe'),('3869','Vertiginous synd NOS','Syndrome labyrinthique et troubles labyrinthiques - sans précisi'),('3870','Otoscler-oval wnd nonobl','Otospongiose comprenant la fenêtre ovale, non oblitérante'),('3871','Otoscler-oval wndw oblit','Otospongiose comprenant la fenêtre ovale, oblitérante'),('3872','Cochlear otosclerosis','Otospongiose cochléaire'),('3878','Otosclerosis NEC','Otospongiose - autres'),('3879','Otosclerosis NOS','Otospongiose - sans précision'),('3882','Sudden hearing loss NOS','Perte subite de l\'ouie - sans précision'),('3885','Acoustic nerve disorders','Affections du nerf auditif'),('3888','Disorders of ear NEC','Autres affections de l\'oreille - autres'),('3889','Disorder of ear NOS','Autres affections de l\'oreille - sans précision'),('3897','Deaf, nonspeaking NEC','Surdi-mutité non classée ailleurs'),('3898','Hearing loss NEC','Surdité - autres'),('3899','Hearing loss NOS','Surdité - sans précision'),('390','Rheum fev w/o hrt involv','Infections actinomycosiques, cutanée'),('3910','Acute rheumatic pericard','Péricardite rhumatismale aiguë'),('3911','Acute rheumatic endocard','Endocardite rhumatismale aiguë'),('3912','Ac rheumatic myocarditis','Myocardite rhumatismale aiguë'),('3918','Ac rheumat hrt dis NEC','Autres cardiopathies rhumatismales aiguës'),('3919','Ac rheumat hrt dis NOS','Cardiopathie rhumatismale aiguë - sans précision'),('3920','Rheum chorea w hrt invol','Chorée rhumatismale avec complication cardiaque'),('3929','Rheumatic chorea NOS','Chorée rhumatismale sans mention de complication cardiaque'),('393','Chr rheumatic pericard','Infections actinomycosiques, cervicofaciale'),('3940','Mitral stenosis','Sténose mitrale'),('3941','Rheumatic mitral insuff','Insuffisance mitrale rhumatismale'),('3942','Mitral stenosis w insuff','Maladie mitrale'),('3949','Mitral valve dis NEC/NOS','Maladies de la valvule mitrale - autres et sans précision'),('3950','Rheumat aortic stenosis','Sténose aortique rhumatismale'),('3951','Rheumatic aortic insuff','Insuffisance aortique rhumatismale'),('3952','Rheum aortic sten/insuff','Sténose et insuffisance aortiques rhumatismales'),('3959','Rheum aortic dis NEC/NOS','Maladies de la valvule aortique - autres et sans précision'),('3969','Mitral/aortic v dis NOS','Maladies des valvules mitrale et aortique - sans précision'),('3970','Tricuspid valve disease','Maladies de la valvule tricuspide'),('3971','Rheum pulmon valve dis','Maladies rhumatismales de la valvule pulmonaire'),('3979','Rheum endocarditis NOS','Maladies rhumatismales de l\'endocarde, valvule non précisée, sau'),('3980','Rheumatic myocarditis','Myocardite rhumatismale'),('4010','Malignant hypertension','Hypertension essentielle, maligne'),('4011','Benign hypertension','Hypertension essentielle, bénigne'),('4019','Hypertension NOS','Hypertension essentielle - sans précision'),('412','Old myocardial infarct','Infarctus ancien du myocarde'),('4139','Angina pectoris NEC/NOS','Angine de poitrine - sans précision'),('4148','Chr ischemic hrt dis NEC','Autres formes de cardiopathie ischémique chronique - autres'),('4149','Chr ischemic hrt dis NOS','Autres formes de cardiopathie ischémique chronique - sans précis'),('4150','Acute cor pulmonale','Coeur pulmonaire aigu'),('4160','Prim pulm hypertension','Hypertension pulmonaire primitive'),('4161','Kyphoscoliotic heart dis','Coeur des gibbeux'),('4168','Chr pulmon heart dis NEC','Coeur pulmonaire chronique - autres'),('4169','Chr pulmon heart dis NOS','Coeur pulmonaire chronique - sans précision'),('4170','Arterioven fistu pul ves','Anévrisme arterio-veineux des vaisseaux pulmonaires'),('4171','Pulmon artery aneurysm','Anévrisme de l\'artère pulmonaire'),('4178','Pulmon circulat dis NEC','Autres troubles de la circulation pulmonaire - autres'),('4179','Pulmon circulat dis NOS','Autres troubles de la circulation pulmonaire - sans précision'),('4200','Ac pericardit in oth dis','Péricardite au cours de maladies classées ailleurs'),('4210','Ac/subac bact endocard','Endocardite bactérienne aiguë ou subaiguë'),('4211','Ac endocardit in oth dis','Endocardite infectieuse aiguë ou subaiguë au cours de maladies c'),('4219','Ac/subac endocardit NOS','Endocardite aiguë - sans précision'),('4220','Ac myocardit in oth dis','Myocardite aiguë au cours de maladies classées ailleurs'),('4230','Hemopericardium','Hémopéricarde'),('4231','Adhesive pericarditis','Péricardite fibreuse'),('4232','Constrictiv pericarditis','Péricardite constrictive'),('4238','Pericardial disease NEC','Autres maladies du péricarde - autres'),('4239','Pericardial disease NOS','Autres maladies du péricarde - sans précision'),('4240','Mitral valve disorder','Affections de la valvule mitrale'),('4241','Aortic valve disorder','Affections de la valvule aortique'),('4242','Nonrheum tricusp val dis','Affect.de la valvule tricuspide, précisées d\'orig.non rhumatisma'),('4243','Pulmonary valve disorder','Affections de la valvule pulmonaire'),('4250','Endomyocardial fibrosis','Fibrose endomyocardique'),('4252','Obsc afric cardiomyopath','Cardiomyopathies africaines'),('4253','Endocard fibroelastosis','Fibro-élastose endocardique'),('4254','Prim cardiomyopathy NEC','Autres cardiomyopathies primitives'),('4255','Alcoholic cardiomyopathy','Myocardie éthylique'),('4257','Metabolic cardiomyopathy','Cardiomyopathies métaboliques et carentielles'),('4258','Cardiomyopath in oth dis','Cardiomyopathie au cours d\'autres maladies classées ailleurs'),('4259','Second cardiomyopath NOS','Cardiomyopathies secondaires - sans précision'),('4260','Atriovent block complete','Bloc auriculo-ventriculaire, complet'),('4262','Left bb hemiblock','Bloc de branche gauche incomplet'),('4263','Left bb block NEC','Autres blocs de branche gauche'),('4264','Rt bundle branch block','Bloc de branche droite'),('4266','Other heart block','Autres blocs intracardiaques'),('4267','Anomalous av excitation','Conduction auriculo-ventriculaire anormale'),('4269','Conduction disorder NOS','Troubles de la conduction cardiaque - sans précision'),('4270','Parox atrial tachycardia','Tachycardie paroxystique supraventriculaire'),('4271','Parox ventric tachycard','Tachycardie paroxystique ventriculaire'),('4272','Parox tachycardia NOS','Tachycardie paroxystique - sans précision'),('4275','Cardiac arrest','Arrêt cardiaque'),('4279','Cardiac dysrhythmia NOS','Troubles du rythme cardiaque - sans précision'),('4280','CHF NOS','Insuffisance cardiaque globale'),('4281','Left heart failure','Insuffisance cardiaque gauche'),('4289','Heart failure NOS','Insuffisance cardiaque - sans précision'),('4290','Myocarditis NOS','Myocardite - sans précision'),('4291','Myocardial degeneration','Dégénérescence du myocarde'),('4292','Ascvd','Maladie cardio-vasculaire - sans précision'),('4293','Cardiomegaly','Cardiomégalie'),('4294','Hrt dis postcardiac surg','Troubles fonctionnels après chirurgie cardiaque'),('4295','Chordae tendinae rupture','Rupture des cordages tendineux'),('4296','Papillary muscle rupture','Rupture des muscles papillaires'),('4299','Heart disease NOS','Complications cardiopathies et maladies cardiaques mal définies '),('430','Subarachnoid hemorrhage','Hémorragie sous-arachnoïdienne'),('431','Intracerebral hemorrhage','Hémorragie cérébrale'),('4320','Nontraum extradural hem','Hémorragie extradurale non traumatique'),('4321','Subdural hemorrhage','Hémorragie sous-durale'),('4329','Intracranial hemorr NOS','Hémorragie intracrânienne - sans précision'),('4359','Trans cereb ischemia NOS','Ischémie cérébrale transitoire - sans précision'),('436','Cva','Maladies cérébro-vasculaires aiguës mais mal définies'),('4370','Cerebral atherosclerosis','Athérosclérose cérébrale'),('4371','Ac cerebrovasc insuf NOS','Autre maladie cérébro-vasculaire ischémique généralisée'),('4372','Hypertens encephalopathy','Encéphalopathie hypertensive'),('4373','Nonrupt cerebral aneurym','Anévrisme cérébral, non rompu'),('4374','Cerebral arteritis','Artérite cérébrale'),('4375','Moyamoya disease','Maladie \"moyamoya\"'),('4376','Nonpyogen thrombos sinus','Thrombose non pyogène des sinus veineux intracrâniens'),('4378','Cerebrovasc disease NEC','Maladies cérébro-vasculaires, autres et mal définies - autres'),('4379','Cerebrovasc disease NOS','Maladies cérébro-vasculaires, autres et mal définies - sans préc'),('4389','Late effect CV dis NOS','Séquelles des maladies cérébro-vasculaires - sans précision'),('4400','Aortic atherosclerosis','Athérosclérose de l\'aorte'),('4401','Renal artery atheroscler','Athérosclérose de l\'artère rénale'),('4408','Atherosclerosis NEC','Athérosclérose d\'autres artères précisées'),('4409','Atherosclerosis NOS','Athérosclérose généralisée et sans précision'),('4411','Ruptur thoracic aneurysm','Anévrisme de l\'aorte thoracique, rompu'),('4412','Thoracic aortic aneurysm','Anévrisme de l\'aorte thoracique, sans mention de rupture'),('4413','Rupt abd aortic aneurysm','Anévrisme de l\'aorte abdominal, rompu'),('4414','Abdom aortic aneurysm','Anévrisme de l\'aorte abdominal, sans mention de rupture'),('4415','Rupt aortic aneurysm NOS','Anévrisme de l\'aorte partie non précisée, rompu'),('4416','Thoracoabd aneurysm rupt','Anévrisme de l\'aorte partie non précisée, sans mention de ruptur'),('4417','Thracabd anurysm wo rupt','Anévrisme de l\'aorte syphilitique'),('4419','Aortic aneurysm NOS','Anévrisme de l\'aorte - sans précision'),('4420','Upper extremity aneurysm','Autres anévrismes des artères des membres supérieurs'),('4421','Renal artery aneurysm','Autres anévrismes des artères rénales'),('4422','Iliac artery aneurysm','Autres anévrismes des artères iliaques'),('4423','Lower extremity aneurysm','Autres anévrismes des artères des membres inférieurs'),('4429','Aneurysm NOS','Autres anévrismes, de siège non précisé'),('4430','Raynaud\'s syndrome','Syndrome de raynaud'),('4431','Thromboangiit obliterans','Thromboangéite oblitérante (maladie de buerger)'),('4439','Periph vascular dis NOS','Autres maladies du système vasculaire périphérique - sans précis'),('4441','Thoracic aortic embolism','Embolie et thrombose artérielles d\'une autre partie de l\'aorte'),('4449','Arterial embolism NOS','Embolie et thrombose artérielles d\'artères non précisées'),('4460','Polyarteritis nodosa','Périartérite noueuse'),('4461','Mucocutan lymph node syn','Fièvre cutanéo-muqueuse et ganglionnaire'),('4463','Lethal midline granuloma','Granulome malin de la face'),('4464','Wegener\'s granulomatosis','Granulomatose de wegener'),('4465','Giant cell arteritis','Artérite à cellules géantes'),('4466','Thrombot microangiopathy','Purpura thrombocytopénique thrombotique'),('4467','Takayasu\'s disease','Maladie de takayashu'),('4470','Acq arterioven fistula','Fistule artério-veineuse, acquise'),('4471','Stricture of artery','Sténose d\'une artère'),('4472','Rupture of artery','Rupture d\'une artère'),('4473','Renal artery hyperplasia','Hyperplasie de l\'artère rénale'),('4474','Celiac art compress syn','Syndrome de compression de l\'artère coeliaque'),('4475','Necrosis of artery','Nécrose d\'une artère'),('4476','Arteritis NOS','Artérite - sans précision'),('4478','Arterial disease NEC','Autres atteintes des artères et des artérioles - autres'),('4479','Arterial disease NOS','Autres atteintes des artères et des artérioles - sans précision'),('4480','Heredit hemorr telangiec','Télangiectasies hémorragiques familiales'),('4481','Nevus, non-neoplastic','Naevus non néoplasique'),('4489','Capillary dis NEC/NOS','Maladies des capillaires - autres et sans précision'),('449','Septic arterial embolism','Infect. vih, sans aut. indic. (avec ou sans aut. affect. non cl.'),('4510','Superfic phlebitis-leg','Phlébite et thrombophlébite superficielles des membres inférieur'),('4512','Thrombophlebitis leg NOS','Phlébite et thrombophlébite des membres inférieurs - sans précis'),('4519','Thrombophlebitis NOS','Phlébite et thrombophlébite, de siège non précisé'),('452','Portal vein thrombosis','Poliomyélite aiguë non paralytique'),('4530','Budd-chiari syndrome','Syndrome de budd-chiari'),('4531','Thrombophlebitis migrans','Thrombophlébite migratrice'),('4532','Oth inf vena cava thromb','Autres embolies et thromboses veineuses de la veine cave'),('4533','Renal vein thrombosis','Autres embolies et thromboses veineuses des veines rénales'),('4539','Venous thrombosis NOS','Autres embolies et thromboses veineuses, de siège non précisé'),('4540','Leg varicosity w ulcer','Varices des membres inférieurs avec mention d\'ulcération'),('4541','Leg varicosity w inflam','Varices des membres inférieurs avec mention d\'inflammation'),('4542','Varicos leg ulcer/inflam','Varices des membres inférieurs avec mention d\'ulcère et d\'inflam'),('4549','Asympt varicose veins','Varices des membres inférieurs sans mention d\'ulcère ou d\'inflam'),('4550','Int hemorrhoid w/o compl','Hémorroïde interne sans mention de complication'),('4551','Int thrombos hemorrhoid','Hémorroïde interne thrombosée'),('4552','Int hemrrhoid w comp NEC','Hémorroïde interne avec d\'autres complications'),('4553','Ext hemorrhoid w/o compl','Hémorroïde externe sans mention de complication'),('4554','Ext thrombos hemorrhoid','Hémorroïde externe thrombosée'),('4555','Ext hemrrhoid w comp NEC','Hémorroïde externe avec d\'autres complications'),('4556','Hemorrhoids NOS','Hémorroïde sans précision, sans mention de complication'),('4557','Thrombos hemorrhoids NOS','Hémorroïde sans précision, thrombosée'),('4558','Hemrrhoid NOS w comp NEC','Hémorroïde sans précision, avec d\'autres complications'),('4559','Residual hemorrhoid tags','Cicatrices hémorroïdaires résiduelles'),('4560','Esophag varices w bleed','Varices oesophagiennes, hémorragiques'),('4561','Esoph varices w/o bleed','Varices oesophagiennes, sans mention d\'hémorragie'),('4563','Sublingual varices','Varices sublinguales'),('4564','Scrotal varices','Varices scrotales'),('4565','Pelvic varices','Varices pelviennes'),('4566','Vulval varices','Varices vulvaires'),('4568','Varices of other sites','Varices d\'autres localisations - autres'),('4570','Postmastect lymphedema','Lymphoedème après mastectomie'),('4571','Other lymphedema','Autres lymphoedèmes'),('4572','Lymphangitis','Lymphangite'),('4578','Noninfect lymph dis NEC','Autres atteintes non infectieuses des vaisseaux lymphatiques, sa'),('4579','Noninfect lymph dis NOS','Maladies non infectieuses des vaisseaux lymphatiques - sans préc'),('4580','Orthostatic hypotension','Hypotension orthostatique'),('4581','Chronic hypotension','Hypotension permanente'),('4589','Hypotension NOS','Hypotension - sans précision'),('4590','Hemorrhage NOS','Hémorragie - sans précision'),('4592','Compression of vein','Compression veineuse'),('4599','Circulatory disease NOS','Autres troubles de l\'appareil circulatoire - sans précision'),('460','Acute nasopharyngitis','Kuru'),('4610','Ac maxillary sinusitis','Sinusite aiguë maxillaire'),('4611','Ac frontal sinusitis','Sinusite aigue frontale'),('4612','Ac ethmoidal sinusitis','Sinusite aiguë éthmoïdale'),('4613','Ac sphenoidal sinusitis','Sinusite aiguë sphénoïdale'),('4618','Other acute sinusitis','Sinusite aiguë - autres'),('4619','Acute sinusitis NOS','Sinusite aiguë - sans précision'),('462','Acute pharyngitis','Leucoencéphalite sclérosante subaiguë'),('463','Acute tonsillitis','Angine (amygdalite aiguë)'),('4644','Croup','Laryngite striduleuse'),('4650','Acute laryngopharyngitis','Laryngo-pharyngite aiguë'),('4658','Acute uri mult sites NEC','Infection aiguë voies respiratoires supérieures, autres sièges m'),('4659','Acute uri NOS','Infect.aiguë voies respiratoires sup., sièges non précisés'),('4660','Acute bronchitis','Bronchite aiguë'),('470','Deviated nasal septum','Déviation de la cloison nasale'),('4710','Polyp of nasal cavity','Polype des fosses nasales'),('4711','Polypoid sinus degen','Polypose naso-sinusienne déformante'),('4718','Nasal sinus polyp NEC','Autres polypes des sinus'),('4719','Nasal polyp NOS','Polypes du nez - sans précision'),('4720','Chronic rhinitis','Rhinite chronique'),('4721','Chronic pharyngitis','Pharyngite chronique'),('4722','Chronic nasopharyngitis','Rhino-pharyngite chronique'),('4730','Chr maxillary sinusitis','Sinusite chronique maxillaire'),('4731','Chr frontal sinusitis','Sinusite chronique frontale'),('4732','Chr ethmoidal sinusitis','Sinusite chronique éthmoïdale'),('4733','Chr sphenoidal sinusitis','Sinusite chronique sphénoïdale'),('4738','Chronic sinusitis NEC','Sinusite chronique - autres'),('4739','Chronic sinusitis NOS','Sinusite chronique - sans précision'),('4742','Adenoid vegetations','Végétations adénoïdes'),('4748','Chr T & A dis NEC','Autres maladies chroniques des amygdales et des végétations adén'),('4749','Chr T & A dis NOS','Affections chroniques des amygdales et des végétations adénoïdes'),('475','Peritonsillar abscess','Abcès péritonsillaire'),('4760','Chronic laryngitis','Laryngite chronique'),('4761','Chr laryngotracheitis','Laryngo-trachéite chroniqu'),('4770','Rhinitis due to pollen','Rhinite allergique due au pollen'),('4778','Allergic rhinitis NEC','Rhinite allergique due à d\'autres substances allergènes'),('4779','Allergic rhinitis NOS','Rhinite allergique cause non précisée'),('4780','Hypertrph nasal turbinat','Hypertrophie des cornets du nez'),('4784','Vocal cord/larynx polyp','Polype des cordes vocales ou du larynx'),('4785','Vocal cord disease NEC','Autres maladies des cordes vocales'),('4786','Edema of larynx','Oedème du larynx'),('4788','Urt hypersens react NOS','Réaction anaphylactique des voies respiratoires supérieures, par'),('4789','Upper resp dis NEC/NOS','Mal.voies resp.- aut.+sai, sf 5183-7701-7700-514-5070-5071-507-9'),('4800','Adenoviral pneumonia','Pneumonie à adénovirus'),('4801','Resp syncyt viral pneum','Pneumonie à virus respiratoire syncytial'),('4802','Parinfluenza viral pneum','Pneumonie à virus parainfluenza'),('4808','Viral pneumonia NEC','Pneumonie due à d\'autres virus, non classés ailleurs'),('4809','Viral pneumonia NOS','Pneumonie à virus - sans précision'),('481','Pneumococcal pneumonia','Pneumonie à pneumocoques'),('4820','K. pneumoniae pneumonia','Pneumonie à klebsiella pneumoniae'),('4821','Pseudomonal pneumonia','Pneumonie à pseudomonas'),('4822','H.influenzae pneumonia','Pneumonie à haemophilus influenzae'),('4829','Bacterial pneumonia NOS','Pneumonie bactérienne - sans précision'),('4841','Pneum w cytomeg incl dis','Pneumonie au cours de maladie des inclusions cytomégaliques'),('4843','Pneumonia in whoop cough','Pneumonie au cours de coqueluche'),('4845','Pneumonia in anthrax','Pneumonie au cours de charbon'),('4846','Pneum in aspergillosis','Pneumonie au cours d\'aspergillose'),('4847','Pneum in oth sys mycoses','Pneumonie au cours d\'autres mycoses généralisées'),('4848','Pneum in infect dis NEC','Pneumonie au cours d\'autres maladies infectieuses'),('485','Bronchopneumonia org NOS','Bronchopneumonie, micro-organisme non précisé'),('486','Pneumonia, organism NOS','Pneumonie, micro-organisme non précisé'),('4870','Influenza with pneumonia','Grippe avec pneumonie'),('4871','Flu w resp manifest NEC','Grippe avec d\'autres manifestations respiratoires'),('4878','Flu w manifestation NEC','Grippe avec d\'autres manifestations'),('490','Bronchitis NOS','Bronchite, non précisée comme aiguë ni chronique'),('4910','Simple chr bronchitis','Bronchite chronique simple'),('4911','Mucopurul chr bronchitis','Bronchite chronique mucopurulente'),('4918','Chronic bronchitis NEC','Autres bronchites chroniques'),('4919','Chronic bronchitis NOS','Bronchite chronique - sans précision'),('4950','Farmers\' lung','Poumon du fermier'),('4951','Bagassosis','Bagassose'),('4952','Bird-fanciers\' lung','Poumon des oiseleurs'),('4953','Suberosis','Subérose'),('4954','Malt workers\' lung','Poumon des ouvriers de malteries'),('4955','Mushroom workers\' lung','Poumon des ouvriers de champignonnières'),('4956','Mapl bark-stripprs\' lung','Poumon des écorceurs de l\'érable'),('4957','\"ventilation\" pneumonit','Alvéolite allergique due aux systèmes d\'aération'),('4958','Allerg alveol/pneum NEC','Autres alvéolites allergiques'),('4959','Allerg alveol/pneum NOS','Alvéolite allergique - sans précision'),('496','Chr airway obstruct NEC','Obstruction chronique voies resp., non cl.aill.'),('500','Coal workers\' pneumocon','Pneumoconiose des mineurs de charbon'),('501','Asbestosis','Asbestose'),('502','Silica pneumocon NEC','Pneumoconiose due à d\'autres silicates ou silices'),('503','Inorg dust pneumocon NEC','Pneumoconiose due à d\'autres poussières inorganiques'),('504','Dust pneumonopathy NEC','Pneumopathie due à l\'inhalation d\'autres poussières'),('505','Pneumoconiosis NOS','Pneumoconiose - sans précision'),('5060','Fum/vapor bronc/pneumon','Bronchite et pneumonie dues à l\'inhalation de fumées et de vapeu'),('5061','Fum/vapor ac pulm edema','Oedème aigu du poumon dû à l\'inhalation de fumées et de vapeurs'),('5062','Fum/vapor up resp inflam','Inflammation voies respir.supér.due à inhalation de fumées et va'),('5063','Fum/vap ac resp cond NEC','Aut. affections respir. aiguës ou subaiguës dues à inhalation fu'),('5064','Fum/vapor chr resp cond','Affections respiratoires chroniques dues à inhalation de fumées '),('5069','Fum/vapor resp cond NOS','Affections respir. dues à l\'inhalation de fumées et de vapeurs -'),('5070','Food/vomit pneumonitis','Pneumonie due à l\'inhalation de nourriture'),('5071','Oil/essence pneumonitis','Pneumonie due à l\'inhalation d\'huiles et d\'essences'),('5078','Solid/liq pneumonit NEC','Pneumonie due aux substances solides et liquides - autres'),('5080','Ac pul manif d/t radiat','Affections pulmonaires aiguës dues à irradiation'),('5081','Chr pul manif d/t radiat','Affections pulmonaires chroniques et autres dues à irradiation'),('5088','Resp cond: ext agent NEC','Affections respir. dues à agents externes - sans précision-autre'),('5089','Resp cond: ext agent NOS','Affections respir. dues à agents externes - sans précision'),('5100','Empyema with fistula','Empyème avec mention de fistule'),('5109','Empyema w/o fistula','Empyème sans mention de fistule'),('5110','Pleurisy w/o effus or TB','Pleurésie sans mention d\'épanchement, ni de tuberculose'),('5111','Bact pleur/effus not TB','Pleurésie avec épanch.et mention d\'agent microbien autre que bac'),('5119','Pleural effusion NOS','Épanchement pleural - sans précision'),('5130','Abscess of lung','Abcès du poumon'),('5131','Abscess of mediastinum','Abcès du médiastin'),('514','Pulm congest/hypostasis','Congestion pulmonaire hypostatique'),('515','Postinflam pulm fibrosis','Fibrose postinflammatoire du poumon'),('5160','Pul alveolar proteinosis','Protéinose pulmonaire alvéolaire'),('5161','Idio pulm hemosiderosis','Hémosidérose pulmonaire idiopathique'),('5162','Pulm alveolar microlith','Microlithiase pulmonaire alvéolaire'),('5168','Alveol pneumonopathy NEC','Autres pneumophathies alvéolaires et pariéto-alvéolaires - autre'),('5169','Alveol pneumonopathy NOS','Pneumophathies alvéolaires et parieto-alvéolaires - sans précisi'),('5171','Rheumatic pneumonia','Pneumonie rhumatismale'),('5172','Syst sclerosis lung dis','Atteinte pulmonaire au cours de la sclérodermie progressive'),('5178','Lung involv in oth dis','Affections du poumon au cours de maladies classées ailleurs - au'),('5180','Pulmonary collapse','Collapsus pulmonaire'),('5181','Interstitial emphysema','Emphysème pulmonaire interstitiel'),('5182','Compensatory emphysema','Emphysème compensateur'),('5183','Pulmonary eosinophilia','Eosinophilie pulmonaire'),('5184','Acute lung edema NOS','Oedème aigu du poumon - sans précision'),('5192','Mediastinitis','Médiastinite'),('5193','Mediastinum disease NEC','Autres maladies du médiastin, non classées ailleurs'),('5194','Disorders of diaphragm','Maladies du diaphragme'),('5198','Resp system disease NEC','Autres maladies de l\'appareil respiratoire, non classées ailleur'),('5199','Resp system disease NOS','Autres maladies de l\'appareil respiratoire - sans précision'),('5200','Anodontia','Anodontie'),('5201','Supernumerary teeth','Dents surnuméraires'),('5202','Abnormal tooth size/form','Anom.volume et de forme, sf tubercule carabellé non considéré co'),('5203','Mottled teeth','Dents tachetées'),('5204','Tooth formation disturb','Troubles de la formation des dents'),('5205','Heredit tooth struct NEC','Anomalies héréditaires de la structure dentaire, non classées ai'),('5206','Tooth eruption disturb','Troubles de l\'éruption dentaire'),('5207','Teething syndrome','Syndrome d\'éruption des dents'),('5208','Tooth devel/erup dis NEC','Autres troubles du développement des dents'),('5209','Tooth devel/erup dis NOS','Troubles de l\'odontogénie - sans précision'),('5215','Hypercementosis','Maladies des tissus dentaires durs - hypercémentose'),('5216','Ankylosis of teeth','Maladies des tissus dentaires durs - ankylose dentaire'),('5217','Intrin posteruptv color','Mal.tissus dentaires durs-modif.de teinte après l\'éruption'),('5219','Hard tiss dis teeth NOS','Maladies des tissus dentaires durs - sans précision'),('5220','Pulpitis','Pulpites'),('5221','Necrosis of tooth pulp','Nécrose pulpaire'),('5222','Tooth pulp degeneration','Dégénérescences pulpaires'),('5223','Abn hard tiss-tooth pulp','Formation anormale de tissus dentaires durs dans la pulpe'),('5224','Ac apical periodontitis','Desmodontite apicale aiguë d\'origine pulpaire'),('5225','Periapical abscess','Abcès périapical sans fistule'),('5226','Chr apical periodontitis','Desmodontite apicale chronique'),('5227','Periapical absc w sinus','Abcès périapical avec fistule'),('5228','Radicular cyst','Kyste radiculaire'),('5229','Pulp/periapical dis NEC','Maladies de la pulpe et des tissus périapicaux - autres et sans '),('5235','Periodontosis','Desmodontose'),('5236','Accretions on teeth','Dépôts sur les dents'),('5238','Periodontal disease NEC','Maladies gingivales et périodontales - autres'),('5239','Gingiv/periodont dis NOS','Maladies gingivales et périodontales - sans précision'),('5244','Malocclusion NOS','Malocclusion - sans précision'),('5249','Dentofacial anomaly NOS','Anomalies dento-faciales, y compris les malocclusions - sans pré'),('5250','Exfoliation of teeth','Exfoliation dentaire due à des causes générales'),('5253','Retained dental root','Racine dentaire laissée en place'),('5258','Dental disorder NEC','Autres affections intéressant les dents et le parodonte - autres'),('5259','Dental disorder NOS','Autres affections intéressant les dents et le parodonte - sans p'),('5260','Devel odontogenic cysts','Kystes dentaires liés au développement'),('5261','Fissural cysts of jaw','Kystes fissuraires'),('5262','Cysts of jaws NEC','Autres kystes des maxillaires'),('5263','Cent giant cell granulom','Granulome central à cellules géantes'),('5264','Inflammation of jaw','Affections inflammatoires'),('5265','Alveolitis of jaw','Alvéolite'),('5269','Jaw disease NOS','Maladies des maxillaires - sans précision'),('5270','Salivary gland atrophy','Maladie des glandes salivaires, atrophie'),('5271','Salivary glnd hyprtrophy','Maladie des glandes salivaires, hypertrophie'),('5272','Sialoadenitis','Sialoadénite'),('5273','Salivary gland abscess','Abcès des glandes salivaires'),('5274','Salivary gland fistula','Fistule des glandes salivaires'),('5275','Sialolithiasis','Sialolithiase'),('5276','Salivary gland mucocele','Mucocèle des glandes salivaires'),('5277','Salivary secretion dis','Troubles de la sécrétion salivaire'),('5278','Salivary gland dis NEC','Maladies des glandes salivaires - autres'),('5279','Salivary gland dis NOS','Maladies des glandes salivaires - sans précision'),('5281','Cancrum oris','Stomatite gangréneuse'),('5282','Oral aphthae','Ulcérations aphteuses de la bouche'),('5283','Cellulitis/abscess mouth','Phlegmon et abcès de la bouche'),('5284','Oral soft tissue cyst','Kystes de la bouche'),('5285','Diseases of lips','Maladies des lèvres'),('5286','Leukoplakia oral mucosa','Leucoplasie de la muqueuse buccale, y compris la langue'),('5288','Oral submucosal fibrosis','Fibrose sous-muqueuse de la bouche, y compris la langue'),('5289','Oral soft tissue dis NEC','Maladies tissus mous bouche, exclus. gencives, langue - autres e'),('5290','Glossitis','Glossite'),('5291','Geographic tongue','Langue géographique'),('5292','Med rhomboid glossitis','Glossite losangique médiane'),('5293','Hypertroph tongue papill','Hypertrophie des papilles linguales'),('5294','Atrophy tongue papillae','Atrophie des papilles linguales'),('5295','Plicated tongue','Langue plicaturée'),('5296','Glossodynia','Glossodynie'),('5298','Tongue disorder NEC','Affections de la langue - autres'),('5299','Tongue disorder NOS','Affections de la langue - sans précision'),('5300','Achalasia & cardiospasm','Achalasie et cardiospasme'),('5303','Esophageal stricture','Sténose de l\'oesophage'),('5304','Perforation of esophagus','Perforation de l\'oesophage'),('5306','Acq esophag diverticulum','Diverticule acquis de l\'oesophage'),('5307','Mallory-weiss syndrome','Syndrome de mallory-weiss'),('5309','Esophageal disorder NOS','Maladies de l\'oesophage - sans précision'),('5360','Achlorhydria','Achlorhydrie'),('5361','Ac dilation of stomach','Dilatation aiguë de l\'estomac'),('5362','Persistent vomiting','Vomissements cycliques'),('5369','Stomach function dis NOS','Troubles fonctionnels de l\'estomac - sans précision'),('5370','Acq pyloric stenosis','Sténose pylorique de l\'adulte'),('5371','Gastric diverticulum','Diverticule gastrique'),('5372','Chronic duodenal ileus','Iléus duodénal chronique'),('5373','Duodenal obstruction NEC','Autre obstruction du duodénum'),('5374','Gastric/duodenal fistula','Autres maladies de l\'estomac et du duodénum, fistule'),('5375','Gastroptosis','Gastroptose'),('5376','Hourglass stricture stom','Estomac en sablier'),('5379','Gastroduodenal dis NOS','Autres maladies estomac et duodénum - sans précision'),('538','GI mucositis (ulceratve)','Zona avec complications non précisées'),('5400','Ac append w peritonitis','Appendicite aiguë avec péritonite généralisée'),('5401','Abscess of appendix','Appendicite aiguë avec abcès péritonéal'),('5409','Acute appendicitis NOS','Appendicite aiguë sans mention de péritonite'),('541','Appendicitis NOS','Appendicite - sans précision'),('542','Other appendicitis','Autres formes d\'appendicite'),('5439','Diseases of appendix NEC','Autres maladies de l\'appendice - sans précision'),('5511','Umbilical hernia w gangr','Hernie ombilicale, avec gangrène'),('5513','Diaphragm hernia w gangr','Hernie diaphragmatique, avec gangrène'),('5518','Hernia, site NEC w gangr','Autres hernies abdominales avec gangrène - autres sièges précisé'),('5519','Hernia, site NOS w gangr','Autres hernies abdominales avec gangrène - siège non précisé, av'),('5521','Umbilical hernia w obstr','Hernie ombilicale, avec occlusion'),('5523','Diaphragm hernia w obstr','Hernie diaphragmatique, avec occlusion'),('5528','Hernia, site NEC w obstr','Autres hernies abdomin. avec occlusion - autres sièges précisés,'),('5529','Hernia, site NOS w obstr','Autres hernies abdominales avec occlusion - siège non précisé, a'),('5531','Umbilical hernia','Hernie ombilicale'),('5533','Diaphragmatic hernia','Hernie diaphragmatique'),('5538','Hernia NEC','Aut.hernies abdomin.sans mention occlusion ni gangrène-aut.siège'),('5539','Hernia NOS','Autres hernies abdom. sans mention occlusion ni gangrène - siège'),('5550','Reg enteritis, sm intest','Entérite régionale de l\'intestin grêle'),('5551','Reg enteritis, lg intest','Entérite régionale du gros intestin'),('5552','Reg enterit sm/lg intest','Entérite régionale de l\'intestin grêle et du gros intestin'),('5559','Regional enteritis NOS','Entérite régionale de localisation non précisée'),('5569','Ulceratve colitis unspcf','Recto-colite idiopathique - sans précision'),('5570','Ac vasc insuff intestine','Insuffisance vasculaire intestinale aiguë'),('5571','Chr vasc insuff intest','Insuffisance vasculaire intestinale chronique'),('5579','Vasc insuff intest NOS','Insuffisance vasculaire intestinale - sans précision'),('5589','Noninf gastroenterit NEC','Autres gastro-entérites et colites non infectieuses - sans préci'),('5600','Intussusception','Occlusion intestinale sans mention de hernie, invagination'),('5601','Paralytic ileus','Iléus paralytique'),('5602','Volvulus of intestine','Volvulus'),('5609','Intestinal obstruct NOS','Occlusion intestinale sans mention de hernie-sai'),('5641','Irritable bowel syndrome','Irritabilité du côlon'),('5642','Postgastric surgery synd','Syndromes consécutifs à la chirurgie gastrique'),('5643','Vomiting post-gi surgery','Vomissements consécutifs à la chirurgie gastro-intestinale'),('5644','Postop GI funct dis NEC','Troubles fontion. app. digestif, non class. aill.-aut.troub.fonc'),('5645','Functional diarrhea','Diarrhée fonctionnelle'),('5646','Anal spasm','Spasme anal'),('5647','Megacolon NEC','Mégacôlon autre que maladie de hirschprung'),('5649','Funct dis intestine NOS','Troubles fonctionnels de l\'appareil digestif, non class. aill. -'),('5650','Anal fissure','Fissure anale'),('5651','Anal fistula','Fistule anale'),('566','Anal & rectal abscess','Abcès des régions anale et rectale'),('5670','Peritonitis in infec dis','Péritonite au cours d\'une maladie infectieuse classée ailleurs'),('5671','Pneumococcal peritonitis','Péritonite pneumococcique'),('5679','Peritonitis NOS','Péritonite - sans précision'),('5680','Peritoneal adhesions','Adhérences péritonéales'),('5689','Peritoneal disorder NOS','Autres affections du péritoine - sans précision'),('5690','Anal & rectal polyp','Polype anal et rectal'),('5691','Rectal prolapse','Prolapsus rectal'),('5692','Rectal & anal stenosis','Sténose rectale et anale'),('5693','Rectal & anal hemorrhage','Hémorragie rectale et anale'),('5695','Intestinal abscess','Abcès de l\'intestin'),('5699','Intestinal disorder NOS','Autres affections intestinales - sans précision'),('570','Acute necrosis of liver','Érythème infectieux aigu (cinquième maladie)'),('5710','Alcoholic fatty liver','Cirrhose alcoolique graisseuse du foie'),('5711','Ac alcoholic hepatitis','Hépatite aiguë alcoolique'),('5712','Alcohol cirrhosis liver','Cirrhose alcoolique du foie'),('5713','Alcohol liver damage NOS','Lésion alcoolique du foie - sans précision'),('5715','Cirrhosis of liver NOS','Cirrhose du foie sans mention d\'alcool'),('5716','Biliary cirrhosis','Cirrhose biliaire'),('5718','Chronic liver dis NEC','Autres maladies chroniques non alcooliques du foie'),('5719','Chronic liver dis NOS','Maladie chronique non alcoolique du foie - sans précision'),('5720','Abscess of liver','Abcès du foie'),('5721','Portal pyemia','Pyohémie de la veine porte'),('5722','Hepatic encephalopathy','Coma hépatique'),('5723','Portal hypertension','Hypertension portale'),('5724','Hepatorenal syndrome','Syndrome hépato-rénal'),('5728','Oth sequela, chr liv dis','Autres séquelles des affections chroniques du foie'),('5730','Chr passiv congest liver','Congestion chronique passive du foie'),('5731','Hepatitis in viral dis','Hépatite consécutive à des maladies virales classées ailleurs'),('5732','Hepatitis in oth inf dis','Hépatite consécutive à d\'autres maladies infectieuses classées a'),('5733','Hepatitis NOS','Hépatite - sans précision'),('5734','Hepatic infarction','Infarctus hépatique'),('5738','Liver disorders NEC','Autres maladies du foie - autres'),('5739','Liver disorder NOS','Autres maladies du foie - sans précision'),('5750','Acute cholecystitis','Cholécystite aiguë'),('5752','Obstruction gallbladder','Obstruction de la vésicule biliaire'),('5753','Hydrops of gallbladder','Hydrocholécyste'),('5754','Perforation gallbladder','Perforation de la vésicule biliaire'),('5755','Fistula of gallbladder','Fistule de la vésicule biliaire'),('5756','Gb cholesterolosis','Cholestérolose vésiculaire'),('5758','Dis of gallbladder NEC','Autres maladies de la vésicule biliaire - autres'),('5759','Dis of gallbladder NOS','Autres maladies de la vésicule biliaire - sans précision'),('5760','Postcholecystectomy synd','Syndrome postcholécystectomie'),('5761','Cholangitis','Angiocholite'),('5762','Obstruction of bile duct','Obstruction des voies biliaires'),('5763','Perforation of bile duct','Perforation des voies biliaires'),('5764','Fistula of bile duct','Fistule des voies biliaires'),('5765','Spasm sphincter of oddi','Spasme du sphincter d\'oddi'),('5768','Dis of biliary tract NEC','Autres maladies des voies biliaires - autres'),('5769','Dis of biliary tract NOS','Autres maladies des voies biliaires - sans précision'),('5770','Acute pancreatitis','Pancréatite aiguë'),('5771','Chronic pancreatitis','Pancréatite chronique'),('5772','Pancreat cyst/pseudocyst','Kyste et pseudokyste du pancréas'),('5778','Pancreatic disease NEC','Autres maladies du pancréas'),('5779','Pancreatic disease NOS','Maladies du pancréas - sans précision'),('5780','Hematemesis','Hématémèse'),('5781','Blood in stool','Melaena'),('5789','Gastrointest hemorr NOS','Hémorragie gastro-intestinale - sans précision'),('5790','Celiac disease','Maladie coeliaque'),('5791','Tropical sprue','Sprue tropicale'),('5792','Blind loop syndrome','Malabsorption intestinale, syndrome de l\'anse afférente'),('5793','Intest postop nonabsorb','Malabsorption postchirurgicale - autre et sans précision'),('5794','Pancreatic steatorrhea','Stéatorrhée pancréatique'),('5798','Intest malabsorption NEC','Malabsorption intestinale - autres'),('5799','Intest malabsorption NOS','Malabsorption intestinale - sans précision'),('5800','Ac proliferat nephritis','Glomérulonéphrite aiguë, avec lésion histologique de glomérulon.'),('5804','Ac rapidly progr nephrit','Glomérulonéphrite aiguë, avec lésion histologique de gloméruloné'),('5809','Acute nephritis NOS','Glomérulonéphrite aiguë - sans précision'),('5810','Nephrotic syn, prolifer','Syndrome néphrotique avec lésion histologique de glomérulonéphri'),('5811','Epimembranous nephritis','Syndrome néphrotique avec lésion histologique de glomérulonéphri'),('5812','Membranoprolif nephrosis','Syndrome néphrotique avec lésion histologique de glomérul. membr'),('5813','Minimal change nephrosis','Syndrome néphrotique avec lésions glomérulaires minimes'),('5819','Nephrotic syndrome NOS','Syndrome néphrotique - sans précision'),('5820','Chr proliferat nephritis','Glomérulonéphrite chron., avec lésion histologique de glomérulon'),('5821','Chr membranous nephritis','Glomérulonéphrite chron., avec lésion histologique de glomérulon'),('5822','Chr membranoprolif nephr','Glomérulonéphrite chron., avec lésion histologique de glomérul. '),('5824','Chr rapid progr nephrit','Glomérulonéphrite chron., avec lésion histologique de glomérulon'),('5829','Chronic nephritis NOS','Glomérulonéphrite chronique - sans précision'),('5830','Proliferat nephritis NOS','Néphrite et néphropathie, n-précisés, avec lésion histoligique g'),('5831','Membranous nephritis NOS','Néphrite et néphropathie, n-précisés, avec lésion histologique g'),('5832','Membranoprolif nephr NOS','Néphrite et néphropathie, n-précisés, avec lésion histologique g'),('5834','Rapidly prog nephrit NOS','Néphrite et néphropathie, n-précisés, avec lésion histologique g'),('5836','Renal cort necrosis NOS','Néphrite et néphropathie, n-précisés, avec lésion histol.nécrose'),('5837','Nephr NOS/medull necros','Néphrite et néphropathie, non précis. ..., avec lésion nécrose m'),('5839','Nephritis NOS','Néphrite et néphropathie,non précis.avc lésion pathol.rein,sai s'),('5845','Ac kidny fail, tubr necr','Insuffisance rénale aiguë avec lésion histologique de nécrose tu'),('5846','Ac kidny fail, cort necr','Insuffisance rénale aiguë avec lésion de nécrose corticale rénal'),('5847','Ac kidny fail, medu necr','Insuffisance rénale aiguë avec lésion de nécrose médullaire (pap'),('5848','Acute kidney failure NEC','Insuffisance rénale aiguë avec d\'autres lésions pathologiques pr'),('5849','Acute kidney failure NOS','Insuffisance rénale aiguë - sans précision'),('5859','Chronic kidney dis NOS','Insuffisance rénale chronique - sans précision'),('586','Renal failure NOS','Insuf.rénale-sai'),('587','Renal sclerosis NOS','Sclérose rénale - sans précision'),('5880','Renal osteodystrophy','Ostéodystrophie rénale'),('5881','Nephrogen diabetes insip','Diabète insipide néphrogénique'),('5889','Impaired renal funct NOS','Autres troubles fonctionnels du rein - sans précision'),('5890','Unilateral small kidney','Hypoplasie rénale d\'origine inconnue - unilatérale'),('5891','Bilateral small kidneys','Hypoplasie rénale d\'origine inconnue - bilatérale'),('5899','Small kidney NOS','Hypoplasie rénale d\'origine inconnue - sans précision'),('5902','Renal/perirenal abscess','Abcès périnéphrétique'),('5903','Pyeloureteritis cystica','Pyélo-urétérite kystique'),('5909','Infection of kidney NOS','Infection rénale - sans précision'),('591','Hydronephrosis','Hydronéphrose'),('5920','Calculus of kidney','Calculs du rein'),('5921','Calculus of ureter','Calculs de l\'uretère'),('5929','Urinary calculus NOS','Calculs urinaires - sans précision'),('5930','Nephroptosis','Néphroptose'),('5931','Hypertrophy of kidney','Hypertrophie du rein'),('5932','Cyst of kidney, acquired','Kyste du rein acquis'),('5933','Stricture of ureter','Rétrécissement ou coudure de l\'uretère'),('5934','Ureteric obstruction NEC','Autres obstructions de l\'uretère'),('5935','Hydroureter','Hydruretère'),('5936','Postural proteinuria','Protéinurie orthostatique'),('5939','Renal & ureteral dis NOS','Aut.affections du rein et l\'uretère-sai'),('5940','Blad diverticulum calcul','Calcul d\'un diverticule de la vessie'),('5941','Bladder calculus NEC','Autre calcul de la vessie'),('5942','Urethral calculus','Calcul de l\'urètre'),('5948','Lower urin calcul NEC','Calcul d\'une autre partie des voies urinaires basses'),('5949','Lower urin calcul NOS','Calculs des voies urinaires basses - sans précision'),('5950','Acute cystitis','Cystite aiguë'),('5951','Chr interstit cystitis','Cystite chronique interstitielle'),('5952','Chronic cystitis NEC','Autres cystites chroniques'),('5953','Trigonitis','Trigonite'),('5954','Cystitis in oth dis','Cystite au cours d\'affections classées ailleurs'),('5959','Cystitis NOS','Cystite - sans précision'),('5960','Bladder neck obstruction','Obstruction du col vésical'),('5961','Intestinovesical fistula','Fistule intestino-vésicale'),('5962','Vesical fistula NEC','Fistule vésicale, non classée ailleurs'),('5963','Diverticulum of bladder','Diverticule de la vessie'),('5964','Atony of bladder','Atonie de la vessie'),('5966','Bladder rupt, nontraum','Rupture de la vessie, non traumatique'),('5967','Bladder wall hemorrhage','Hémorragie vésicale due à une stase veineuse'),('5969','Bladder disorder NOS','Autres affections de la vessie - sans précision'),('5970','Urethral abscess','Abcès urétral'),('5981','Traum urethral stricture','Rétrécissement urétral d\'origine traumatique'),('5982','Postop urethral strictur','Rétrécissement urétral postopératoire'),('5988','Urethral stricture NEC','Rétrécissement urétral - autres'),('5989','Urethral stricture NOS','Rétrécissement urétral - sans précision'),('5990','Urin tract infection NOS','Infection des voies urinaires, de siège non précisé'),('5991','Urethral fistula','Fistule urétrale'),('5992','Urethral diverticulum','Diverticule de l\'urètre'),('5993','Urethral caruncle','Caroncule urétrale'),('5994','Urethral false passage','Fausse route urétrale'),('5995','Prolapse urethral mucosa','Prolapsus de la muqueuse de l\'urètre'),('5999','Urinary tract dis NOS','Autres affections de l\'urètre et des voies urinaires - sans préc'),('6010','Acute prostatitis','Prostatite aiguë'),('6011','Chronic prostatitis','Prostatite chronique'),('6012','Abscess of prostate','Abcès de la prostate'),('6013','Prostatocystitis','Prostato-cystite'),('6014','Prostatitis in oth dis','Prostatite au cours d\'affections classées ailleurs'),('6018','Prostatic inflam dis NEC','Affections inflammatoires de la prostate - autres'),('6019','Prostatitis NOS','Affections inflammatoires de la prostate - sans précision'),('6020','Calculus of prostate','Calcul de la prostate'),('6021','Prostatic congest/hemorr','Congestion ou hémorragie prostatique'),('6022','Atrophy of prostate','Atrophie de la prostate'),('6028','Prostatic disorders NEC','Autres affections de la prostate - autres'),('6029','Prostatic disorder NOS','Autres affections de la prostate - sans précision'),('6030','Encysted hydrocele','Hydrocèle enkystée'),('6031','Infected hydrocele','Hydrocèle infectée'),('6038','Hydrocele NEC','Hydrocèle - autres'),('6039','Hydrocele NOS','Hydrocèle - sans précision'),('6040','Orchitis with abscess','Orchite, épididymite et épididymo-orchite, avec abcès'),('605','Redun prepuce & phimosis','Phimosis et hypertrophie du prépuce'),('6069','Male infertility NOS','Stérilité de l\'homme - sans précision'),('6070','Leukoplakia of penis','Leucoplasie de la verge'),('6071','Balanoposthitis','Balano-posthite'),('6072','Inflam dis, penis NEC','Autres affections inflammatoires du pénis (du corps caverneux ou'),('6073','Priapism','Priapisme'),('6079','Disorder of penis NOS','Affections de la verge - sans précision'),('6080','Seminal vesiculitis','Spermatocystite'),('6081','Spermatocele','Spermatocèle'),('6083','Atrophy of testis','Atrophie du testicule'),('6084','Male gen inflam dis NEC','Autres affections inflammatoires des organes génitaux masculins,'),('6089','Male genital dis NOS','Autres affections des organes génitaux masculins - sans précisio'),('6100','Solitary cyst of breast','Kyste solitaire du sein'),('6101','Diffus cystic mastopathy','Mastopathie chronique kystique'),('6102','Fibroadenosis of breast','Adénofibrose du sein'),('6103','Fibrosclerosis of breast','Fibrosclérose du sein'),('6104','Mammary duct ectasia','Ectasie des canaux galactophores'),('6108','Benign mamm dysplas NEC','Dysplasies mammaires bénignes - autres'),('6110','Inflam disease of breast','Affections inflammatoires du sein'),('6111','Hypertrophy of breast','Hypertrophie du sein'),('6112','Fissure of nipple','Fissure du mamelon'),('6113','Fat necrosis of breast','Cytostéatonécrose du sein'),('6114','Atrophy of breast','Atrophie du sein'),('6115','Galactocele','Galactocèle'),('6116','Galactorrhea-nonobstet','Galactorrhée sans relation avec un accouchement'),('6119','Breast disorder NOS','Autres affections du sein - sans précision'),('6140','Ac salpingo-oophoritis','Salpingite et ovarite aiguës'),('6141','Chr salpingo-oophoritis','Salpingite et ovarite chroniques'),('6142','Salpingo-oophoritis NOS','Salpingite et ovarite, non précisées aiguës, subaiguës ou chroni'),('6143','Acute parametritis','Paramétrite et phlegmon pelviens aigus'),('6144','Chronic parametritis','Paramétrite et phlegmon pelviens, chroniques ou sans précision'),('6145','Ac pelv peritonitis-fem','Pelvipéritonite aiguë ou sans précision chez la femme'),('6146','Fem pelvic periton adhes','Adhérences du péritoine pelvien chez la femme'),('6147','Chr pelv periton NEC-fem','Autres pelvipéritonites chroniques chez la femme'),('6148','Fem pelv inflam dis NEC','Autres affections inflamm. précisées des organes et tissus pelvi'),('6149','Fem pelv inflam dis NOS','Affections inflammatoires organes pelv. et tissus pelv. femme - '),('6150','Ac uterine inflammation','Affections inflammatoires de l\'utérus, à l\'exclusion du col, aig'),('6151','Chr uterine inflammation','Affections inflammatoires de l\'utérus, à l\'exclusion du col, chr'),('6159','Uterine inflam dis NOS','Affections inflammatoires de l\'utérus, à l\'exclusion du col - sa'),('6160','Cervicitis','Cervicite et endocervicite'),('6162','Bartholin\'s gland cyst','Kyste de la glande de bartholin'),('6163','Bartholin\'s glnd abscess','Abcès de la glande de bartholin'),('6164','Abscess of vulva NEC','Autres abcès de la vulve'),('6169','Female gen inflam NOS','Affections inflammatoires col utérus, vagin et vulve - sans préc'),('6170','Uterine endometriosis','Endométriose, utérus'),('6171','Ovarian endometriosis','Endométriose, ovaire'),('6172','Tubal endometriosis','Endométriose, trompe de fallope'),('6173','Pelv perit endometriosis','Endométriose, péritoine pelvien'),('6174','Vaginal endometriosis','Endométriose, cloison recto-vaginale et vagin'),('6175','Intestinal endometriosis','Endométriose, intestin'),('6176','Endometriosis in scar','Endométriose, cutanée ou sur une cicatrice'),('6178','Endometriosis NEC','Endométriose, autres sièges précisés'),('6179','Endometriosis NOS','Endométriose, de siège non précisé'),('6181','Uterine prolapse','Prolapsus utérin sans mention de colpocèle'),('6182','Uterovag prolaps-incompl','Prolapsus utéro-vaginal partiel'),('6183','Uterovag prolaps-complet','Prolapsus utéro-vaginal complet'),('6184','Utervaginal prolapse NOS','Prolapsus utéro-vaginal - sans précision'),('6185','Postop vaginal prolapse','Prolapsus du dôme vaginal après hystérectomie'),('6186','Vaginal enterocele','Élytrocèle congénitale ou acquise'),('6187','Old lacer pelvic muscle','Déchirure ancienne des muscles du plancher pelvien'),('6189','Genital prolapse NOS','Prolapsus génital - sans précision'),('6190','Urin-genital fistul, fem','Fistule génito-urinaire chez la femme'),('6191','Digest-genit fistul, fem','Fistule entéro-génitale chez la femme'),('6192','Genital-skin fistul, fem','Fistule génito-cutanée chez la femme'),('6198','Fem genital fistula NEC','Fistules intéressant les organes génitaux de la femme - autres'),('6199','Fem genital fistula NOS','Fistules intéressant l\'appareil génital féminin - sans précision'),('6200','Follicular cyst of ovary','Kyste folliculaire de l\'ovaire'),('6201','Corpus luteum cyst','Kyste lutéinique'),('6202','Ovarian cyst NEC/NOS','Kystes ovariens - autres et sans précision'),('6203','Acq atrophy ovary & tube','Atrophie acquise de l\'ovaire et de la trompe de fallope'),('6204','Prolapse of ovary & tube','Prolapsus ou hernie de l\'ovaire et de la trompe de fallope'),('6205','Torsion of ovary or tube','Torsion de l\'ovaire ou de la trompe de fallope'),('6206','Broad ligament lacer syn','Syndrome de déchirure du ligament large'),('6207','Broad ligament hematoma','Hématome du ligament large'),('6208','Noninfl dis ova/adnx NEC','Affec. non inflamm. de l\'ovaire, de trompe de fallope et ligamen'),('6209','Noninfl dis ova/adnx NOS','Affections non inflamm. ovaire, trompe fallope, ligament large -'),('6210','Polyp of corpus uteri','Polype du corps utérin'),('6211','Chr uterine subinvolutn','Subinvolution chronique de l\'utérus'),('6212','Hypertrophy of uterus','Hypertrophie de l\'utérus'),('6214','Hematometra','Hématométrie,msauf 752'),('6215','Intrauterine synechiae','Synéchie utérine'),('6216','Malposition of uterus','Malposition utérine'),('6217','Chr inversion of uterus','Inversion chronique de l\'utérus'),('6218','Disorders of uterus NEC','Affections de l\'utérus, non classées ailleurs - autres'),('6219','Disorder of uterus NOS','Affections de l\'utérus, non classées ailleurs - sans précision'),('6220','Erosion/ectropion cervix','Érosion ou ectropion du col utérin'),('6222','Leukoplakia of cervix','Leucoplasie du col utérin'),('6223','Old laceration of cervix','Déchirure ancienne du col utérin'),('6224','Stricture of cervix','Rétrécissement et sténose du col utérin'),('6225','Incompetence of cervix','Béance du col utérin'),('6226','Hypertrophic elong cervx','Allongement hypertrophique du col utérin'),('6227','Mucous polyp of cervix','Polype muqueux du col utérin'),('6228','Noninflam dis cervix NEC','Affections non inflammatoires du col utérin - autres'),('6229','Noninflam dis cervix NOS','Affections non inflammatoires du col utérin - sans précision'),('6231','Leukoplakia of vagina','Leucoplasie du vagin'),('6232','Stricture of vagina','Atrésie ou rétrécissement du vagin'),('6233','Tight hymenal ring','Anneau hyménal serré (acquis) (congénital)'),('6234','Old vaginal laceration','Déchirure ancienne du vagin'),('6235','Noninfect vag leukorrhea','Leucorrhée, non précisée comme infectieuse'),('6236','Vaginal hematoma','Hématome du vagin'),('6237','Polyp of vagina','Polype du vagin'),('6238','Noninflam dis vagina NEC','Affections non inflammatoires du vagin - autres'),('6239','Noninflam dis vagina NOS','Affections non inflammatoires du vagin - sans précision'),('6241','Atrophy of vulva','Atrophie de la vulve'),('6242','Hypertrophy of clitoris','Hypertrophie du clitoris'),('6243','Hypertrophy of labia','Hypertrophie des lèvres'),('6244','Old laceration of vulva','Déchirures ou cicatrices anciennes de la vulve'),('6245','Hematoma of vulva','Hématome de la vulve'),('6246','Polyp of labia and vulva','Polype des lèvres et de la vulve'),('6248','Noninflam dis vulva NEC','Affections non inflammatoires de la vulve et du périnée - autres'),('6249','Noninflam dis vulva NOS','Affections non inflamatoires de la vulve et du périnée - sans pr'),('6251','Vaginismus','Vaginisme'),('6252','Mittelschmerz','Douleur intermenstruelle'),('6254','Premenstrual tension','Syndrome de tension prémenstruelle'),('6255','Pelvic congestion synd','Syndrome de congestion pelvienne'),('6256','Fem stress incontinence','Incontinence urinaire d\'effort chez la femme'),('6258','Fem genital symptoms NEC','Douleurs et autres symptômes en relation avec organes génitaux f'),('6259','Fem genital symptoms NOS','Douleurs et aut. symptômes relation avec organes génitaux femme '),('6260','Absence of menstruation','Absence de menstruation'),('6261','Scanty menstruation','Menstruation rare ou insuffisante'),('6262','Excessive menstruation','Menstruation trop abondante ou trop fréquente'),('6263','Pubertal menorrhagia','Hémorragie de la puberté'),('6264','Irregular menstruation','Cycle menstruel irrégulier'),('6265','Ovulation bleeding','Hémorragie de l\'ovulation'),('6266','Metrorrhagia','Métrorragie'),('6267','Postcoital bleeding','Hémorragie postcoïtale'),('6268','Menstrual disorder NEC','Hémorragies génitales et troubles de la menstruation - autres'),('6269','Menstrual disorder NOS','Hémorragies génitales et troubles de la menstruation - sans préc'),('6270','Premenopause menorrhagia','Ménorragie préménopausique'),('6271','Postmenopausal bleeding','Hémorragie postménopausique'),('6272','Sympt fem climact state','Troubles de la ménopause ou du climatère féminin'),('6273','Atrophic vaginitis','Vaginite atrophique postménopausique'),('6274','Sympt state w artif meno','Troubles au cours de la ménopause artificielle'),('6278','Menopausal disorder NEC','Troubles ménopausiques et postménopausiques - autres'),('6279','Menopausal disorder NOS','Troubles ménopausiques et postménopausiques - sans précision'),('6280','Infertility-anovulation','Stérilité de la femme associée à une anovulation'),('6281','Infertil-pituitary orig','Stérilité de la femme d\'origine hypothalamo-hypophysaire'),('6282','Infertility-tubal origin','Stérilité de la femme d\'origine tubaire'),('6283','Infertility-uterine orig','Stérilité de la femme d\'origine utérine'),('6284','Infertil-cervical orig','Stérilité de la femme d\'origine cervicale ou vaginale'),('6288','Female infertility NEC','Stérilité de la femme d\'autres origines précisées'),('6289','Female infertility NOS','Stérilité de la femme d\'origine non précisée'),('6290','Hematocele, female NEC','Hématocèle chez la femme'),('6291','Hydrocele canal nuck-fem','Hydrocèle du canal de nück'),('6299','Female genital dis NOS','Autres affections des organes génitaux féminins - sans précision'),('630','Hydatidiform mole','Encéphalite verno-estivale russe'),('632','Missed abortion','Encéphalite centro-européenne'),('6380','Attem abort w pelvic inf','Échec de tentative d\'avortement, avec inf.app.génit.et org.pelv.'),('6381','Attem abort w hemorrhage','Échec de tentative d\'avortement,avec hémor.sévère ou retardée(af'),('6382','Attem abort w pelv damag','Échec de tentative avortem.avec lésion organes et tissus pelv.(a'),('6383','Attem abort w renal fail','Échec de tentative d\'avortement, avec insuffisance rénale (aff. '),('6384','Attem abor w metabol dis','Échec de tentative d\'avortement, avec trouble métabolique (aff. '),('6385','Attem abortion w shock','Échec de tentative d\'avortement, avec choc (aff. class. 639.5)'),('6386','Attemp abort w embolism','Échec de tentative d\'avortement, avec embolie (aff. class. 639.6'),('6387','Attemp abort w compl NEC','Échec de tentative d\'avortement, avec autres compl. préc. (aff. '),('6388','Attemp abort w compl NOS','Échec de tentative d\'avortement, avec complications non précisée'),('6389','Attempted abort uncompl','Échec de tentative d\'avortement, sans mention de complication'),('6390','Postabortion gu infect','Infect.app.génital et org.pelviens survenant après affect.cl.630'),('6391','Postabortion hemorrhage','Hémorragie sévère ou tardive survenant après les affections clas'),('6392','Postabort pelvic damage','Lésion des organes et tissus pelviens survenant après affect. cl'),('6393','Postabort kidney failure','Insuffisance rénale survenant après les affections classées 630 '),('6394','Postabort metabolic dis','Troubles métaboliques survenant après affections classées 630 à '),('6395','Postabortion shock','Choc survenant après les affections classées 630 à 638'),('6396','Postabortion embolism','Embolie survenant après les affections classées 630 à 638'),('6398','Postabortion compl NEC','Autres complications précisées survenant après les affect. class'),('6399','Postabortion compl NOS','Complications non précisées survenant après les affections class'),('650','Normal delivery','Accouchement normal'),('677','Late effct cmplcatn preg','Anisométropie d\'au moins 2 dioptries (incluant l\'antimétropie)'),('6800','Carbuncle of face','Furoncle et anthrax de la face'),('6801','Carbuncle of neck','Furoncle et anthrax du cou'),('6802','Carbuncle of trunk','Furoncle et anthrax du tronc'),('6803','Carbuncle of arm','Furoncle et anthrax du bras et de l\'avant-bras'),('6804','Carbuncle of hand','Furoncle et anthrax de la main et du poignet'),('6805','Carbuncle of buttock','Furoncle et anthrax de la fesse'),('6806','Carbuncle of leg','Furoncle et anthrax de la cuisse et de la jambe'),('6807','Carbuncle of foot','Furoncle et anthrax du pied'),('6808','Carbuncle, site NEC','Furoncle et anthrax d\'autres localisations précisées'),('6809','Carbuncle NOS','Furoncle et anthrax de localisation non précisée'),('6819','Cellulitis of digit NOS','Panaris de localisation non précisée'),('6820','Cellulitis of face','Phlegmons et abcès de la face'),('6821','Cellulitis of neck','Phlegmons et abcès du cou'),('6822','Cellulitis of trunk','Phlegmons et abcès du tronc'),('6823','Cellulitis of arm','Phlegmons et abcès du bras et de l\'avant-bras'),('6824','Cellulitis of hand','Phlegmons et abcès de la main'),('6825','Cellulitis of buttock','Phlegmons et abcès de la fesse'),('6826','Cellulitis of leg','Phlegmons et abcès de la jambe et de la cuisse'),('6827','Cellulitis of foot','Phlegmons et abcès du pied'),('6828','Cellulitis, site NEC','Phlegmons et abcès d\'autres localisations précisées'),('6829','Cellulitis NOS','Phlegmons et abcès de localisation non précisée'),('683','Acute lymphadenitis','Amblyopie de moins de 6/21 (20/70) dans le meilleur oeil'),('684','Impetigo','Amblyopie monoculaire'),('6850','Pilonidal cyst w abscess','Kyste dermoïde pararectal avec abcès'),('6851','Pilonidal cyst w/o absc','Kyste dermoïde pararectal sans mention d\'abcès'),('6861','Pyogenic granuloma','Botryomycome'),('6868','Local skin infection NEC','Aut.infect.local.de la peau et tissu cellul.sous-cutané-aut.sf 6'),('6869','Local skin infection NOS','Autres infect. localisées peau et tissu cellulaire sous-cutané -'),('6910','Diaper or napkin rash','Érythème fessier du nourrisson'),('6918','Other atopic dermatitis','Eczéma infantile et affections apparentées - autres'),('6920','Detergent dermatitis','Dermite de contact et autres eczémas, dus aux détergents'),('6921','Oil & grease dermatitis','Dermite de contact et autres eczémas, dus aux huiles et aux grai'),('6922','Solvent dermatitis','Dermite de contact et autres eczémas, dus aux solvants'),('6923','Topical med dermatitis','Derm.de contact et aut.eczémas dus méd.-contact peau sf 9952-e93'),('6924','Chemical dermatitis NEC','Dermite de contact et autres eczémas, dus à d\'autres produits ch'),('6925','Topical food dermatitis','Dermite de contact et autres eczémas, dus aux aliments par conta'),('6926','Dermatitis due to plant','Derm.de contact et aut.eczémas dus à des plantes non aliment.sf '),('6929','Dermatitis NOS','Dermite de contact et autres eczémas, de cause non précisée'),('6930','Drug dermatitis NOS','Dermite due aux médicaments'),('6931','Dermat d/t food ingest','Dermite due aux aliments'),('6938','Dermat d/t int agent NEC','Dermite due à d\'autres substances précisées'),('6939','Dermat d/t int agent NOS','Dermite due à ingestion et adm.parentérale de subs.-sai sf 6929'),('6940','Dermatitis herpetiformis','Dermatite herpétiforme'),('6941','Subcorneal pust dermatos','Dermatose pustuleuse sous-cornée'),('6942','Juven dermat herpetiform','Dermatoses bulleuses, pemphigoïde infantile'),('6943','Impetigo herpetiformis','Impétigo herpétiforme'),('6944','Pemphigus','Dermatoses bulleuses, pemphigus'),('6945','Pemphigoid','Dermatoses bulleuses, pemphigoïde'),('6948','Bullous dermatoses NEC','Dermatoses bulleuses - autres'),('6949','Bullous dermatoses NOS','Dermatoses bulleuses - sans précision'),('6950','Toxic erythema','Érythème toxique'),('6952','Erythema nodosum','Érythème noueux'),('6953','Rosacea','Couperose'),('6954','Lupus erythematosus','Lupus érythémateux chronique'),('6959','Erythematous cond NOS','Affections érythémateuses - sans précision'),('6960','Psoriatic arthropathy','Arthropathie psoriasique'),('6961','Other psoriasis','Autres psoriasis'),('6962','Parapsoriasis','Parapsoriasis'),('6963','Pityriasis rosea','Pityriasis rosé'),('6964','Pityriasis rubra pilaris','Pityriasis rubra pilaire'),('6965','Pityriasis NEC & NOS','Pityriasis de type autre ou non précisé'),('6968','Psorias related dis NEC','Psoriasis et troubles similaires - autres'),('6970','Lichen planus','Lichen plan'),('6971','Lichen nitidus','Lichen nitidus'),('6978','Lichen NEC','Lichen - autres'),('6979','Lichen NOS','Lichen - sans précision'),('6980','Pruritus ani','Prurit anal'),('6981','Pruritus of genitalia','Prurit génital'),('6982','Prurigo','Prurigo'),('6983','Lichenification','Lichénification et lichen simplex chronique'),('6984','Dermatitis factitia','Dermatite factice (artéfacts cutanés)'),('6988','Pruritic conditions NEC','Autres prurits'),('6989','Pruritic disorder NOS','Prurit et affections apparentées - sans précision'),('700','Corns and callosities','Cors et callosités'),('7010','Circumscribe scleroderma','Autres affections hyper./atrophiques de la peau, scolérodermie c'),('7011','Keratoderma, acquired','Aut.affect.hyper./atrophiques de la peau, kératodermie acq.sauf '),('7012','Acq acanthosis nigricans','Autres affections hypertrophiques/atrophiques de la peau, cantho'),('7013','Striae atrophicae','Autres affections hypertrophiques/atrophiques de la peau stries '),('7014','Keloid scar','Autres affections hypertrophiques et atrophiques de la peau, ché'),('7015','Abnormal granulation NEC','Autres affections hyper./athrophiques de la peau, aut.anomalie t'),('7018','Skin hypertro/atroph NEC','Autres affections hypertrophiques et atrophiques de la peau'),('7019','Skin hypertro/atroph NOS','Autres affections hypertrophiques et atrophiques de la peau - sa'),('7030','Ingrowing nail','Ongle incarné'),('7038','Diseases of nail NEC','Maladies des ongles - autres'),('7039','Disease of nail NOS','Maladies des ongles - sans précision'),('7041','Hirsutism','Hirsutisme'),('7042','Abnormalities of hair','Anomalies des poils'),('7043','Variations in hair color','Anomalies de la pigmentation des cheveux'),('7048','Hair diseases NEC','Maladies des poils et des follicules pileux - autres'),('7049','Hair disease NOS','Maladies des poils et des follicules pileux - sans précision'),('7050','Anhidrosis','Anhidrose'),('7051','Prickly heat','Miliaire'),('7059','Sweat gland disorder NOS','Affections des glandes sudoripares - sans précision'),('7060','Acne varioliformis','Acné varioliforme'),('7061','Acne NEC','Autres acnés'),('7062','Sebaceous cyst','Kyste sébacé'),('7063','Seborrhea','Séborrhée'),('7068','Sebaceous gland dis NEC','Affections des glandes sébacées - autres'),('7069','Sebaceous gland dis NOS','Affections des glandes sébacées - sans précision'),('7078','Chronic skin ulcer NEC','Ulcération chronique d\'autres sièges précisés'),('7079','Chronic skin ulcer NOS','Ulcération chronique de siège non précisé'),('7080','Allergic urticaria','Urticaire allergique'),('7081','Idiopathic urticaria','Urticaire idiopathique'),('7082','Urticaria from cold/heat','Urticaire provoquée par la chaleur et le froid'),('7083','Dermatographic urticaria','Dermographisme'),('7084','Vibratory urticaria','Urticaire provoquée par vibrothérapie'),('7085','Cholinergic urticaria','Urticaire cholinergique'),('7088','Urticaria NEC','Urticaire - autres'),('7089','Urticaria NOS','Urticaire - sans précision'),('7091','Vascular disord of skin','Autres maladies de la peau/tissu sous-cutané, affections vascula'),('7092','Scar & fibrosis of skin','Autres maladies de la peau/tissu sous-cutané, cicatrices et fibr'),('7093','Degenerative skin disord','Affections dégénératives de la peau'),('7094','Foreign body granul-skin','Granulome de la peau et du tissu sous-cutané dû à un corps étran'),('7098','Skin disorders NEC','Autres maladies de la peau et du tissu sous-cutané - autres'),('7099','Skin disorder NOS','Autres maladies de la peau et du tissu sous-cutané - sans précis'),('7100','Syst lupus erythematosus','Lupus érythémateux aigu disséminé'),('7101','Systemic sclerosis','Sclérodermie progressive'),('7102','Sicca syndrome','Syndrome de gougerot-sjÌgren'),('7103','Dermatomyositis','Dermatomyosite'),('7104','Polymyositis','Polymyosite'),('7108','Diff connect tis dis NEC','Maladies disséminées du tissu conjonctif - autres'),('7109','Diff connect tis dis NOS','Maladies disséminées du tissu conjonctif - sans précision'),('7130','Arthrop w endocr/met dis','Arthropathies assoc.à aut.affect.endocriniennes et métabo.sauf 7'),('7131','Arthrop w noninf GI dis','Arthropathies assoc.aux affections gastro-intestinales non infec'),('7132','Arthropath w hematol dis','Arthropathies associées aux affections hématologiques'),('7133','Arthropathy w skin dis','Arthropathies associées à des affections dermatologiques'),('7134','Arthropathy w resp dis','Arthropathies associées à des affections respiratoires'),('7135','Arthropathy w nerve dis','Arthropathies associées à des affections neurologiques'),('7136','Arthrop w hypersen react','Arthropathies associées à une réaction d\'hypersensibilité'),('7137','Arthrop w system dis NEC','Autres affections avec atteinte articulaire'),('7138','Arthrop w oth dis NEC','Arthropathies assoc.à aut.affect.cl.aill.'),('7140','Rheumatoid arthritis','Arthrite rhumatoïde'),('7141','Felty\'s syndrome','Syndrome de felty'),('7142','Syst rheum arthritis NEC','Autres arthrites rhumatoïdes avec atteinte viscérale'),('7144','Chr postrheum arthritis','Arthrite rhumatoïde de jaccoud'),('7149','Inflamm polyarthrop NOS','Arthr. rhumatoïde et autres polyarthrophaties inflammatoires - s'),('7170','Old bucket tear med men','Ancienne déchirure \"en anse de seau\" du ménisque interne'),('7171','Derang ant med meniscus','Lésions de la corne antérieure du ménisque interne'),('7172','Derang post med meniscus','Lésions de la corne postérieure du ménisque interne'),('7173','Derang med meniscus NEC','Lésions, autres et sans précision, du ménisque interne'),('7175','Derangement meniscus NEC','Lésions des ménisques, non classées ailleurs'),('7176','Loose body in knee','Corps étranger intra-articulaire du genou'),('7177','Chondromalacia patellae','Chondromalacie de la rotule'),('7179','Int derangement knee NOS','Lésions articulaires du genou - sans précision'),('7197','Difficulty in walking','Difficultés à la marche'),('7200','Ankylosing spondylitis','Spondylarthrite ankylosante'),('7201','Spinal enthesopathy','Maladies des insertions tendineuses spinales'),('7202','Sacroiliitis NEC','Sacro-iléite, non classée ailleurs'),('7209','Inflam spondylopathy NOS','Spondylopathies inflammatoires - sans précision'),('7210','Cervical spondylosis','Cervicarthrose, sans myélopathie'),('7211','Cerv spondyl w myelopath','Cervicarthrose avec myélopathie'),('7212','Thoracic spondylosis','Dorsarthrose, sans myélopathie'),('7213','Lumbosacral spondylosis','Arthrose lombo-sacrée, sans myélopathie'),('7215','Kissing spine','Arthrose interépineuse'),('7216','Ankyl vert hyperostosis','Hyperostose vertébrale ankylosante'),('7217','Traumatic spondylopathy','Spondylopathie traumatique'),('7218','Spinal disorders NEC','Arthrose rachidienne et affections apparentées - autres'),('7220','Cervical disc displacmnt','Hernie d\'un disque intervertébral cervical sans myélopathie'),('7222','Disc displacement NOS','Hernie d\'un disque intervertébral, siège non précisé, sans myélo'),('7224','Cervical disc degen','Détérioration structurale d\'un disque intervertébral cervical'),('7226','Disc degeneration NOS','Détérioration structurale d\'un disque intervertébral, siège non '),('7230','Cervical spinal stenosis','Rétrécissement du canal médullaire de la région cervicale'),('7231','Cervicalgia','Cervicalgie'),('7232','Cervicocranial syndrome','Migraine cervicale'),('7233','Cervicobrachial syndrome','Névralgie cervico-brachiale'),('7234','Brachial neuritis NOS','Névralgie et radiculalgie brachiales non précisées'),('7235','Torticollis NOS','Torticolis - sans précision'),('7236','Panniculitis of neck','Panniculite affectant la région cervicale'),('7237','Ossification cerv lig','Ossification du ligament longitudinal post. de la région cervica'),('7238','Cervical syndrome NEC','Autres syndromes avec atteintes de la région cervicale'),('7239','Neck disorder/sympt NOS','Atteintes et symptômes relatifs à la région cervicale - sans pré'),('7241','Pain in thoracic spine','Rachialgie dorsale'),('7242','Lumbago','Lumbago'),('7243','Sciatica','Lombo-sciatique'),('7244','Lumbosacral neuritis NOS','Névralgie ou radiculalgie thoracique, lombaire ou lombo-sacrée s'),('7245','Backache NOS','Dorsalgie ou lombalgie - sans précision'),('7246','Disorders of sacrum','Atteintes du sacrum'),('7248','Other back symptoms','Autres atteintes et symptômes relatifs aux régions du plan dorsa'),('7249','Back disorder NOS','Atteintes dorsales, lombaires, sacro-iliaques - sans précision, '),('725','Polymyalgia rheumatica','Pseudo-polyarthrite rhizomélique'),('7260','Adhesive capsulit shlder','Capsulite scapulo-humérale'),('7262','Shoulder region dis NEC','Autres affections de la région de l\'épaule, non classées ailleur'),('7264','Enthesopathy of wrist','Tendinites des insertions du poignet et du carpe'),('7265','Enthesopathy of hip','Tendinites des insertions de la hanche'),('7268','Periph enthesopathy NEC','Autres maladies des insertions tendineuses'),('7271','Bunion','Bursite du gros orteil'),('7272','Occupational bursitis','Bursites particulières, fréquemment d\'origine professionnelle'),('7273','Bursitis NEC','Autres bursites'),('7279','Synov/tend/bursa dis NOS','Autres atteintes des synoviales, des tendons et des bourses - sa'),('7280','Infective myositis','Myosites infectieuses'),('7282','Musc disuse atrophy NEC','Atrophie et épuisement musculaires, non classés ailleurs'),('7283','Muscle disorders NEC','Autres troubles musculaires précisés'),('7284','Laxity of ligament','Laxité ligamentaire'),('7285','Hypermobility syndrome','Syndrome d\'hypermobilité'),('7286','Contracted palmar fascia','Rétraction de l\'aponévrose palmaire'),('7289','Muscle/ligament dis NOS','Atteintes des muscles, ligaments et aponévroses - sans précision'),('7290','Rheumatism NOS','Rhumatisme, sans précision et fibrosites'),('7291','Myalgia and myositis NOS','Myalgie et myosite - sans précision'),('7292','Neuralgia/neuritis NOS','Névralgie, névrite et radiculite - sans précision'),('7294','Fasciitis NOS','Aponévrosite - sans précision'),('7295','Pain in limb','Douleur au niveau d\'un membre'),('7296','Old FB in soft tissue','Corps étranger résiduel dans un tissu mou'),('7310','Osteitis deformans NOS','Maladie osseuse de paget, sans mention de tumeur osseuse'),('7311','Osteitis def in oth dis','Ostéite déformante de paget au cours d\'affection classée ailleur'),('7312','Hypertroph osteoarthrop','Ostéo-arthropathie hypertrophiante de pierre marie'),('7318','Bone involv in oth dis','Autres atteintes osseuses au cours affections classées ailleurs'),('7320','Juv osteochondros spine','Ostéochondrite vertébrale infantile'),('7321','Juv osteochondros pelvis','Ostéochondrite juvénile de la hanche et du bassin'),('7322','Femoral epiphysiolysis','Épiphysite par glissement de l\'extrémité supérieure du fémur'),('7323','Juv osteochondrosis arm','Ostéochondrite juvénile du membre supérieur'),('7324','Juv osteochondrosis leg','Ostéochondrite juvénile du membre inférieur, à l\'exception du pi'),('7325','Juv osteochondrosis foot','Ostéochondrite juvénile du pied'),('7326','Juv osteochondrosis NEC','Autres ostéochondrites juvéniles'),('7327','Osteochondrit dissecans','Ostéochondrite disséquante'),('7328','Osteochondropathy NEC','Autres formes précisées d\'ostéochondropathie'),('7329','Osteochondropathy NOS','Ostéochondropathie - sans précision'),('7333','Hyperostosis of skull','Hyperostose du crâne'),('7335','Osteitis condensans','Ostéite condensante'),('7336','Tietze\'s disease','Syndrome de tietze'),('7337','Algoneurodystrophy','Algodystrophie'),('734','Flat foot','Pied plat'),('7350','Hallux valgus','Hallux valgus (acquis)'),('7351','Hallux varus','Hallux varus (acquis)'),('7352','Hallux rigidus','Hallux rigidus'),('7353','Hallux malleus','Hallux malleus'),('7354','Other hammer toe','Autre orteil en marteau (acquis)'),('7355','Claw toe','Orteil en griffe (acquis)'),('7358','Acq deformity of toe NEC','Déformations acquises des orteils - autres'),('7359','Acq deformity of toe NOS','Déformations acquises des orteils - sans précision'),('7361','Mallet finger','Doigt en maillet'),('7365','Genu recurvatum','Genu recurvatum (acquis)'),('7366','Acq knee deformity NEC','Autres déformations acquises du genou'),('7369','Acq limb deformity NOS','Déformations acquises d\'un membre, siège non précisé'),('7370','Adoles postural kyphosis','Cyphose posturale de l\'adolescent'),('7378','Curvature of spine NEC','Anomalies de la courbure de la colonne vertébrale - autres'),('7379','Curvature of spine NOS','Anomalies de la courbure de la colonne vertébrale - sans précisi'),('7380','Acq nose deformity','Déformations acquises du nez'),('7382','Acq neck deformity','Déformations du cou'),('7383','Acq chest deformity','Déformations acquises du thorax et des côtes'),('7384','Acq spondylolisthesis','Spondylolisthésis acquis'),('7385','Other acq back deformity','Autres déformations acquises du dos ou de la colonne vertébrale,'),('7386','Acq pelvic deformity','Déformations acquises du bassin'),('7387','Cauliflower ear','Oreille \"en chou-fleur\"'),('7388','Acq deformity NEC','Déformations acquises d\'autres sièges précisés'),('7389','Acq deformity NOS','Déformation acquise, siège non précisé'),('7390','Somat dys head region','Dysfonctionnements somatiques non classés ailleurs, région cépha'),('7391','Somat dysfunc cervic reg','Dysfonctionnements somatiques non classés ailleurs, région cervi'),('7392','Somat dysfunc thorac reg','Dysfonctionnements somatiques non classés ailleurs, région thora'),('7393','Somat dysfunc lumbar reg','Dysfonctionnements somatiques non classés ailleurs, région lomba'),('7394','Somat dysfunc sacral reg','Dysfonctionnements somatiques non classés ailleurs, région sacré'),('7395','Somat dysfunc pelvic reg','Dysfonctionnements somatiques non classés ailleurs, région pelvi'),('7396','Somat dysfunc lower extr','Dysfonctionnements somatiques non classés ailleurs, membres infé'),('7397','Somat dysfunc upper extr','Dysfonctionnements somatiques non classés ailleurs, membres supé'),('7398','Somat dysfunc rib cage','Dysfonctionnements somatiques non classés ailleurs, cage thoraci'),('7399','Somatic dysfunction NEC','Dysfonctionnements somatiques non classés ailleurs, région abdom'),('7400','Anencephalus','Anencéphalie'),('7401','Craniorachischisis','Crânio-rachischisis'),('7402','Iniencephaly','Iniencéphalie'),('7420','Encephalocele','Encéphalocèle'),('7421','Microcephalus','Microcéphalie'),('7422','Reduction deform, brain','Anomalies localisées du développement de l\'encéphale'),('7423','Congenital hydrocephalus','Hydrocéphalie congénitale'),('7424','Brain anomaly NEC','Autres anomalies précisées de l\'encéphale'),('7428','Nervous system anom NEC','Autres anomalies précisées du système nerveux'),('7429','Nervous system anom NOS','Anomalies du système nerveux - sans précision'),('7438','Eye anomalies NEC','Autres anomalies congénitales précisées de l\'oeil'),('7439','Eye anomaly NOS','Anomalies de l\'oeil - sans précision'),('7441','Accessory auricle','Pavillon surnuméraire'),('7443','Ear anomaly NOS','Anomalies congénitales de l\'oreille - sans précision'),('7445','Webbing of neck','Ptérygion du cou'),('7449','Cong face/neck anom NOS','Anomalies de la face et du cou - sans précision'),('7450','Common truncus','Anomalies du tronc artériel commun'),('7452','Tetralogy of fallot','Tétralogie de fallot'),('7453','Common ventricle','Ventricule unique'),('7454','Ventricular sept defect','Communication interventriculaire'),('7455','Secundum atrial sept def','Communication interauriculaire'),('7457','Cor biloculare','Coeur biloculaire'),('7458','Septal closure anom NEC','Anomalies du bulbus cordis et des cloisons intracardiaques - aut'),('7459','Septal closure anom NOS','Anomalies non précisées des cloisons intracardiaques'),('7461','Cong tricusp atres/sten','Atrésie et sténose tricuspidiennes congénitales'),('7462','Ebstein\'s anomaly','Maladie d\'ebstein'),('7463','Cong aorta valv stenosis','Sténose congénitale de la valvule aortique'),('7464','Cong aorta valv insuffic','Insuffisance congénitale de la valvule aortique'),('7465','Congen mitral stenosis','Rétrécissement mitral congénital'),('7466','Cong mitral insufficienc','Insuffisance mitrale congénitale'),('7467','Hypoplas left heart synd','Hypoplasie du coeur gauche'),('7469','Cong heart anomaly NOS','Anomalies congénitales du coeur - sans précision'),('7470','Patent ductus arteriosus','Persistance du canal artériel'),('7475','Umbilical artery absence','Absence ou hypoplasie de l\'artère ombilicale'),('7479','Circulatory anomaly NOS','Anomalie de l\'appareil circulatoire - sans précision'),('7480','Choanal atresia','Atrésie des choanes'),('7481','Nose anomaly NEC','Autres anomalies du nez'),('7482','Laryngeal web','Ptérygion du larynx'),('7483','Laryngotrach anomaly NEC','Autres anomalies du larynx, de la trachée et des bronches'),('7484','Congenital cystic lung','Poumon kystique congénital'),('7485','Agenesis of lung','Agénésie, aplasie et hypoplasie du poumon'),('7488','Respiratory anomaly NEC','Autres anomalies précisées de l\'appareil respiratoire'),('7489','Respiratory anomaly NOS','Anomalies de l\'appareil respiratoire - sans précision'),('7500','Tongue tie','Ankyloglosse'),('7503','Cong esoph fistula/atres','Fistule trachéo-oesophagienne, atrésie et sténose de l\'oesophage'),('7504','Esophageal anomaly NEC','Autres anomalies précisées de l\'oesophage'),('7505','Cong pyloric stenosis','Sténose congénitale hypertrophique du pylore'),('7506','Congenital hiatus hernia','Hernie hiatale congénitale'),('7507','Gastric anomaly NEC','Autres anomalies précisées de l\'estomac'),('7508','Upper GI anomaly NEC','Autres anomalies précisées partie supérieure de l\'appareil diges'),('7509','Upper GI anomaly NOS','Anomalies partie supérieure de l\'appareil digestif - sans précis'),('7510','Meckel\'s diverticulum','Diverticule de meckel'),('7511','Atresia small intestine','Atrésie et sténose de l\'intestin grêle'),('7512','Atresia large intestine','Atrésie et sténose du côlon, du rectum et du canal anal'),('7513','Hirschsprung\'s disease','Maladie de hirschsprung et autres anomalies fonctionnelles congé'),('7514','Intestinal fixation anom','Anomalies de position et de fixation de l\'intestin'),('7515','Intestinal anomaly NEC','Autres anomalies de l\'intestin'),('7517','Pancreas anomalies','Anomalies du pancréas'),('7518','Anom digestive syst NEC','Autres anomalies précisées de l\'appareil digestif sai'),('7519','Anom digestive syst NOS','Anomalies de l\'appareil digestif - sans précision'),('7520','Anomalies of ovaries','Anomalies de l\'ovaire'),('7522','Doubling of uterus','Utérus double'),('7527','Indeterminate sex','Non-différenciation sexuelle et pseudo-hermaphrodisme'),('7529','Genital organ anom NOS','Anomalies des organes génitaux - sans précision'),('7530','Renal agenesis','Agénésie et dysgénésie du rein'),('7533','Kidney anomaly NEC','Autres anomalies précisées du rein'),('7534','Ureteral anomaly NEC','Autres anomalies précisées de l\'uretère'),('7535','Bladder exstrophy','Extrophie vésicale'),('7536','Congen urethral stenosis','Atrésie et sténose de l\'urètre et du col vésical'),('7537','Anomalies of urachus','Anomalies de l\'ouraque'),('7538','Cystourethral anom NEC','Autres anomalies précisées de la vessie et de l\'urètre'),('7539','Urinary anomaly NOS','Anomalies de l\'appareil urinaire - sans précision'),('7540','Cong skull/face/jaw def','Malformations du crâne, de la face et des mâchoires'),('7541','Congenital torticollis','Malformations du muscle sterno-cléido-mastoïdien'),('7542','Cong postural deformity','Malformations du rachis'),('7554','Reduct deform limb NOS','Raccourcissement d\'un membre - sans précision'),('7558','Congen limb anomaly NEC','Autres anomalies précisées d\'un membre non précisé'),('7559','Congen limb anomaly NOS','Anomalies, sans précision, d\'um membre non précisé'),('7560','Anomal skull/face bones','Anomalies du crâne et des os de la face'),('7562','Cervical rib','Anomalies des côtes cervicales'),('7563','Rib & sternum anomal NEC','Autres anomalies des côtes et du sternum'),('7564','Chondrodystrophy','Chondrodystrophies'),('7566','Anomalies of diaphragm','Anomalies congénitales du diaphragme'),('7569','Musculoskel anom NEC/NOS','Anomalies système ostéo-musculaire - sans précision'),('7570','Hereditary edema of legs','Oedème héréditaire des jambes'),('7571','Ichthyosis congenita','Ichtyose congénitale'),('7572','Dermatoglyphic anomalies','Anomalies dermatoglyphiques'),('7574','Hair anomalies NEC','Anomalies précisées des cheveux'),('7575','Nail anomalies NEC','Anomalies précisées des ongles'),('7576','Cong breast anomaly NEC','Anomalies précisées du sein'),('7578','Oth integument anomalies','Autres anomalies congénitales précisées du tégument'),('7579','Integument anomaly NOS','Anomalies du tégument - sans précision'),('7580','Down\'s syndrome','Syndrome de down'),('7581','Patau\'s syndrome','Syndrome de patau'),('7582','Edwards\' syndrome','Syndrome d\'edwards'),('7584','Balance autosom transloc','Inversion et translocation autosomique chez l\'individu normal'),('7585','Autosomal anomalies NEC','Autres affections dues à des aberrations autosomiques précisées'),('7586','Gonadal dysgenesis','Dysgénésie gonadique'),('7587','Klinefelter\'s syndrome','Syndrome de klinefelter'),('7589','Chromosome anomaly NOS','Affection due à aberration chromosomique - sans précision'),('7590','Anomalies of spleen','Anomalies congénitales de la rate'),('7591','Adrenal gland anomaly','Anomalies congénitales des glandes surrénales'),('7592','Endocrine anomaly NEC','Anomalies congénitales des autres glandes endocri'),('7593','Situs inversus','Situs inversus'),('7594','Conjoined twins','Monstres doubles'),('7595','Tuberous sclerosis','Sclérose tubéreuse'),('7596','Hamartoses NEC','Autres hamartomes non classées ailleurs'),('7597','Mult congen anomal NEC','Anomalies congénitales précisées comme multiples'),('7599','Congenital anomaly NOS','Anomalie congénitale - sans précision'),('7600','Matern hyperten aff NB','Foetus/nouveau-né affecté par troubles hypertensifs de la mère'),('7601','Matern urine dis aff NB','Foetus/nouveau-né affecté par maladie rénale et voies urinaires '),('7602','Maternal infec aff NB','Foetus/nouveau-né affecté par infections maternelles'),('7603','Matern cardioresp aff NB','Foetus/n.-né affecté par aut. maladies chroniques circulat. ou r'),('7604','Matern nutrit dis aff NB','Foetus/nouveau-né affecté par troubles nutritionnels de la mère'),('7605','Maternal injury aff NB','Foetus/nouveau-né affecté par traumatisme marternel'),('7608','Maternal cond NEC aff NB','Foetus/n.-né affecté par troubles matern.évent.sans rap.grossess'),('7609','Maternal cond NOS aff NB','Foetus/n.-né affecté par troubles matern.évent.sans rap.grossess'),('7610','Incompetnt cervix aff NB','Foetus/nouveau-né affecté par béance du col'),('7611','Premat rupt memb aff NB','Foetus/nouveu-né affecté par rupture prématurée des membranes'),('7612','Oligohydramnios aff NB','Foetus/n.-né affecté par oligohydramnios'),('7613','Polyhydramnios aff NB','Foetus/nouveau-né affecté par polyhydramnios'),('7614','Ectopic pregnancy aff NB','Foetus/nouveau-né affecté par grossesse ectopique'),('7615','Mult pregnancy aff NB','Foetus/nouveau-né affecté par grossesse multiple'),('7616','Maternal death aff NB','Foetus/nouveau-né affecté par mort de la mère'),('7617','Antepart malpres aff NB','Foetus/nouveau-né affecté par présentation anormale avant le tra'),('7618','Matern compl NEC aff NB','Foetus ou nouveau-né affecté par complications maternelles gross'),('7619','Matern compl NOS aff NB','Foetus/n.-né affecté par complications maternelles grossesse - s'),('7620','Placenta previa aff NB','Foetus/nouveau-né affecté par placenta praevia'),('7621','Placenta hem NEC aff NB','Foetus/n.-né affecté par autres formes décollement et hémorragie'),('7622','Abn plac NEC/NOS aff NB','Foetus/n.-né affecté par anomal. morpholog. et fonctionn. placen'),('7623','Placent transfusion syn','Foetus/nouveau-né affecté par syndrome de transfusion placentair'),('7624','Prolapsed cord aff NB','Procidence du cordon'),('7625','Oth umbil cord compress','Autres formes de compression du cordon ombilical'),('7626','Umbil cond NEC aff NB','Affections du cordon ombilical - autres et sans précision'),('7627','Chorioamnionitis aff NB','Chorio-amniotite'),('7628','Abn amnion NEC aff NB','Autres anomalies du chorion et de l\'amnios'),('7629','Abn amnion NOS aff NB','Anomalies du chorion et de l\'amnios - sans précision'),('7630','Breech del/extrac aff NB','Foetus/nouveau-né affecté par accouchement et extraction par le '),('7631','Malpos/dispro NEC aff NB','Foetus/n.-né affecté aut. présentat. et posit. vicieuses ... tra'),('7632','Forceps delivery aff NB','Foetus/nouveau-né affecté par accouchement par forceps'),('7633','Vacuum extrac del aff NB','Foetus/nouveau-né affecté par accouchement par extracteur pneuma'),('7634','Cesarean delivery aff NB','Foetus/nouveau-né affecté par accouchement par opération césarie'),('7635','Mat anesth/analg aff NB','Foetus/nouveau-né affecté par anesthésie et analgésie de la mère'),('7636','Precipitate del aff NB','Foetus/nouveau-né affecté par accouchement précipité'),('7637','Abn uterine contr aff NB','Foetus/nouveau-né affecté par contractions anormales de l\'utérus'),('7639','Compl deliv NOS aff NB','Foetus/nouveau-né affec. par aut. complicat. travail ou accouch.'),('7660','Exceptionally large baby','Enfant exceptionnellement gros (4500 g ou plus à la naissance)'),('7661','Heavy-for-date infan NEC','Autre enfant \"gros ou grand pour l\'âge gestationnel\"'),('7670','Cerebral hem at birth','Traumatisme obstétrical, hémorragie sous-durale et cérébrale, sa'),('7672','Clavicle fx at birth','Traumatisme obstétrical, fracture de la clavicule'),('7673','Bone injury NEC at birth','Traumatisme obstétrical, autres lésions du squelette'),('7674','Spinal cord inj at birth','Traumatisme obstétrical, lésions du rachis et de la moelle épini'),('7675','Facial nerve inj-birth','Traumatisme obstétrical, lésions du nerf facial'),('7676','Brach plexus inj-birth','Traumatisme obstétrical, lésions du plexus brachial'),('7677','Nerve inj NEC at birth','Traumatisme obstétrical, autres lésions des nerfs crâniens ou pé'),('7678','Birth trauma NEC','Traumatisme obstétrical - autres'),('7679','Birth trauma NOS','Traumatisme obstétrical - sans précision'),('7680','Fetal death-anoxia NOS','Mort du foetus par asphyxie ou anoxie, avant début trav. ou mome'),('7681','Fet death-anoxia dur lab','Mort du foetus par asphyxie ou anoxie pendant le travail'),('7682','Fet distress befor labor','Souffrance foetale avant le début du travail, chez un enfant né '),('7683','Fetal distrs dur lab/del','Souffrance foetale remarquée d\'abord pendant le travail, enfant '),('7684','Fetal distress NOS','Souffrance foetale, sans précision, chez un enfant né vivant'),('7685','Severe birth asphyxia','Asphyxie obstétricale sévère'),('7686','Mild/mod birth asphyxia','Asphyxie obstétricale légère ou modérée'),('7689','Birth asphyxia NOS','Asphyxie obstétricale sans précision, chez un enfant né vivant'),('769','Respiratory distress syn','Syndrome de détresse respiratoire, nouveau-né'),('7700','Congenital pneumonia','Autres affections respiratoires foetus et nouveau-né, pneumonie '),('7702','NB interstit emphysema','Autres affect.respirat.foetus/n.-né, emphysème interstitiel et a'),('7703','NB pulmonary hemorrhage','Autres affections respiratoires foetus/n.-né, hémoragie pulmonai'),('7704','Primary atelectasis','Autres affections respiratoires foetus/n.-né, atélectasie primai'),('7705','NB atelectasis NEC/NOS','Autres affect respiratoires foetus/n.-né, atélectasie-autre et s'),('7706','NB transitory tachypnea','Tachypnée transitoire du nouveau-né'),('7707','Perinatal chr resp dis','Maladies respiratoires chroniques survenant pendant la période p'),('7709','NB respiratory cond NOS','Autres affections respiratoires du foetus et du nouveau-né - san'),('7710','Congenital rubella','Rubéole congénitale'),('7711','Cong cytomegalovirus inf','Infection congénitale à cytomégalovirus'),('7712','Congenital infec NEC','Autres infections congénitales'),('7713','Tetanus neonatorum','Tétanos du nouveau-né'),('7714','Omphalitis of newborn','Omphalite du nouveau-né'),('7715','Neonatal infec mastitis','Mastite infectieuse néonatale'),('7716','Neonatal conjunctivitis','Conjonctivites et dacryocystites néonatales'),('7717','Neonatal candida infect','Moniliase néonatale'),('7720','NB fetal blood loss NEC','Perte de sang par le foetus'),('7722','NB subarachnoid hemorr','Hémorragie sous-arachnoïdienne, foetus/nouveau-né'),('7723','Post-birth umbil hemorr','Hémorragie ombilicale après la naissance'),('7724','NB GI hemorrhage','Hémorragie gastro-intestinale, foetus/nouveau-né'),('7725','NB adrenal hemorrhage','Hémorragie surrénalienne, foetus/nouveau-né'),('7726','NB cutaneous hemorrhage','Hémorragie cutanée, foetus/nouveau-né'),('7728','Neonatal hemorrhage NEC','Hémorragies foetale et néonatale - autres'),('7729','Neonatal hemorrhage NOS','Hémorragies foetale et néonatale - sans précision'),('7730','NB hemolyt dis:rh isoimm','Maladie hémolytique due à l\'iso-immunisation anti rh'),('7731','NB hemolyt dis-abo isoim','Maladie hémolytique due à l\'iso-immunisation abo'),('7732','NB hemolyt dis-isoim NEC','Maladie hémolytique due à une iso-immunisation - autre et sans p'),('7733','Hydrops fetalis:isoimm','Anasarque foeto-placentaire due à l\'iso-immunisation'),('7734','NB kernicterus:isoimmun','Ictère nucléaire du à l\'iso-immunisation, foetus/nouveau-né'),('7735','NB late anemia:isoimmun','Anémie tardive due à l\'iso-immunisation, foetus/nouveau-né'),('7740','Perinat jaund-hered anem','Ictère périnatal dû à des anémies hémolytiques héréditaires'),('7741','Perinat jaund:hemolysis','Ictère périnatal dû à d\'autres hémolyses excessives'),('7742','Neonat jaund preterm del','Ictère néonatal associé à un accouchement avant terme'),('7744','Fetal/neonatal hepatitis','Ictère périnatal dû à une lésion hépatocellulaire'),('7745','Perinatal jaundice NEC','Ictère périnatal dû à d\'autres causes'),('7746','Fetal/neonatal jaund NOS','Ictère foetal et néonatal - sans précision'),('7747','NB kernicterus','Ictère nucléaire non dû à l\'iso-immunisation'),('7750','Infant diabet mother syn','Syndrome de l\'enfant de mère diabétique'),('7751','Neonat diabetes mellitus','Diabète sucré néonatal'),('7752','Neonat myasthenia gravis','Myasthénie grave néonatale'),('7753','Neonatal thyrotoxicosis','Thyréotoxicose néonatale'),('7754','Hypocalcem/hypomagnes NB','Hypocalcémie et hypomagnésiémie du nouveau-né'),('7755','Neonatal dehydration','Autres troubles électrolytiques transitoires néonatals'),('7756','Neonatal hypoglycemia','Hypoglycémie néonatale'),('7757','Late metab acidosis NB','Acidose métabolique tardive du nouveau-né'),('7759','Transient met dis NB NOS','Troubles endocriniens et métaboliques spécif. foetus/nouveau-né '),('7760','NB hemorrhagic disease','Maladie hémorragique du nouveau-né'),('7761','Neonatal thrombocytopen','Thrombocytopénie néonatale transitoire'),('7762','Dissem intravasc coag NB','Coagulation intravasculaire disséminée chez le nouveau-né'),('7763','Oth neonatal coag dis','Autres troubles transitoires néonatals de la coagulation'),('7764','Polycythemia neonatorum','Polycythémie du nouveau-né'),('7765','Congenital anemia','Anémie congénitale, saif 773-282'),('7766','Anemia of prematurity','Anémie de la prématurité'),('7767','Neonatal neutropenia','Neutropénie néonatale transitoire'),('7768','Transient hemat dis NEC','Autres troubles hématologiques transitoires précisés, foetus/nou'),('7769','NB hematological dis NOS','Troubles hématologiques du foetus et du nouveau-né - sans précis'),('7771','Meconium obstruction','Autres obstructions méconiales'),('7772','Intest obst-inspiss milk','Occlusion intestinale due à un lait épaissi'),('7773','Swallowed blood syndrome','Hématémèse et mélaena dus à une déglutition de sang maternel'),('7774','Transitory ileus of NB','Iléus transitoire du nouveau-né'),('7776','Perinatal intest perfor','Perforation intestinale périnatale'),('7778','Perinat GI sys dis NEC','Troubles périnatals de l\'appareil digestif - autres'),('7779','Perinat GI sys dis NOS','Troubles périnatals de l\'appareil digestif - sans précision'),('7780','Hydrops fetalis no isoim','Anasarque foeto-placentaire, non consécutive à iso-immunisation,'),('7781','Sclerema neonatorum','Sclérème du nouveau-né'),('7782','NB cold injury syndrome','Syndrome hypothermique du nouveau-né'),('7783','NB hypothermia NEC','Autres hypothermies du nouveau-né'),('7784','NB temp regulat dis NEC','Autres troubles de la régulation thermique du nouveau-né'),('7785','Edema of newborn NEC/NOS','Oedèmes du nouveau-né - autres et sans précision'),('7786','Congenital hydrocele','Hydrocèle congénitale'),('7787','NB breast engorgement','Engorgement du sein chez le nouveau-né'),('7788','NB integument cond NEC','Affections intéress.tégument et régulation therm.foetus et n.-né'),('7789','NB integument cond NOS','Affect. intéress. tégument et régulation therm. foetus et n.-né '),('7790','Convulsions in newborn','Convulsions du nouveau-né'),('7791','NB cereb irrit NEC/NOS','Autres signes d\'irritabilité cérébrale, nouveau-né'),('7792','Cns dysfunction syn NB','Autres signes cérébraux anormaux, nouveau-né'),('7794','NB drug reaction/intoxic','Réactions et intoxications médicamenteuses spécifiques du nouvea'),('7795','NB drug withdrawal syndr','Syndrome de privation de drogue, nouveau-né'),('7796','Termination of pregnancy','Interruption de la grossesse (foetus)'),('7799','Perinatal condition NOS','Affection origine se situe dans période périnatale,aut.et mal dé'),('7801','Hallucinations','Hallucinations'),('7802','Syncope and collapse','Syncope et collapsus'),('7804','Dizziness and giddiness','Étourdissement et éblouissement'),('7808','Generalizd hyperhidrosis','Hyperhidrose'),('7810','Abn involun movement NEC','Mouvements involontaires anormaux'),('7811','Smell & taste disturb','Troubles sensitifs de l\'odorat et du goût'),('7812','Abnormality of gait','Anomalie de la démarche'),('7813','Lack of coordination','Troubles de la coordination'),('7814','Transient limb paralysis','Paralysie transitoire d\'un membre'),('7815','Clubbing of fingers','Doigts en baguette de tambour'),('7816','Meningismus','Méningisme'),('7817','Tetany','Tétanie'),('7820','Skin sensation disturb','Troubles sensitifs cutanés'),('7821','Nonspecif skin erupt NEC','Rash et autres éruptions cutanées non spécifiques'),('7822','Local suprficial swellng','Symptômes relatifs au tégument, tuméfactions superficielles loca'),('7823','Edema','Sympt.relatifs au tégument, oedème'),('7824','Jaundice NOS','Ictère, non précisé'),('7825','Cyanosis','Symptômes relatifs au tégument, cyanose'),('7827','Spontaneous ecchymoses','Ecchymoses spontanées'),('7828','Changes in skin texture','Modifications du tissu cutané'),('7829','Integument tiss symp NEC','Symptômes relatifs au tégument - autres'),('7830','Anorexia','Anorexie'),('7831','Abnormal weight gain','Prise de poids anormale'),('7833','Feeding problem','Difficultés de l\'alimentation et de l\'admin.des aliments'),('7835','Polydipsia','Polydipsie'),('7836','Polyphagia','Polyphagie'),('7839','Nutr/metab/devel sym NEC','Sympt.relatifs à la nutrition, métabo.et dévelop.-aut.'),('7840','Headache','Céphalée'),('7841','Throat pain','Mal de gorge'),('7842','Swelling in head & neck','Tuméfactions, loupes de la tête et de la région cervicale'),('7843','Aphasia','Aphasie'),('7847','Epistaxis','Épistaxis'),('7848','Hemorrhage from throat','Hémorragie de la gorge'),('7850','Tachycardia NOS','Tachycardie - sans précision'),('7851','Palpitations','Palpitations'),('7852','Cardiac murmurs NEC','Souffles cardiaques fonctionnels et non diagnostiqués'),('7853','Abnorm heart sounds NEC','Autres signes cliniques cardiaques anormaux'),('7854','Gangrene','Symptômes relatifs à l\'appareil cardio-vasculaire, gangrène, sau'),('7856','Enlargement lymph nodes','Symptômes relatifs à l\'appareil cardio-vasculaire, adénopathie, '),('7859','Cardiovas sys symp NEC','Symptômes relatifs à l\'appareil cardio-vasculaire - autres'),('7861','Stridor','Stridor'),('7862','Cough','Toux'),('7864','Abnormal sputum','Expectoration anormale'),('7866','Chest swelling/mass/lump','Tuméfactions thoraciques'),('7867','Abnormal chest sounds','Autres signes cliniques thoraciques anormaux'),('7868','Hiccough','Hoquet'),('7869','Resp sys/chest symp NEC','Symptômes relatifs à l\'appareil respiratoire et au thorax - autr'),('7871','Heartburn','Pyrosis'),('7873','Flatul/eructat/gas pain','Flatulence, éructation et météorisme'),('7874','Visible peristalsis','Péristaltisme apparent'),('7875','Abnormal bowel sounds','Bruits intestinaux anormaux'),('7877','Abnormal feces','Matières (fécales) anormales'),('7880','Renal colic','Colique néphrétique'),('7881','Dysuria','Dysurie'),('7885','Oliguria & anuria','Oligurie et anurie'),('7887','Urethral discharge','Écoulement urétral'),('7888','Extravasation of urine','Extravasation d\'urine'),('7891','Hepatomegaly','Hépatomégalie'),('7892','Splenomegaly','Splénomégalie'),('7899','Abdomen/pelvis symp NEC','Autres symptômes relatifs à l\'abdomen et au bassin - autres'),('7901','Elevated sediment rate','Accélération de la vitesse de sédimentation'),('7903','Excess blood-alcohol lev','Alcoolémie excessive'),('7904','Elev transaminase/ldh','Augmentation, non spécifiq., taux de transaminase et acide-lacti'),('7905','Abn serum enzy level NEC','Autres anomalies non spécifiques des taux d\'enzymes sériques, sa'),('7906','Abn blood chemistry NEC','Autres constituants chimiques anormaux du sang'),('7907','Bacteremia','Bactériémie - sans précision'),('7908','Viremia NOS','Virémie - sans précision'),('7910','Proteinuria','Protéinurie'),('7911','Chyluria','Chylurie'),('7912','Hemoglobinuria','Hémoglobinurie'),('7913','Myoglobinuria','Myoglobinurie'),('7914','Biliuria','Biliurie'),('7915','Glycosuria','Glycosurie'),('7916','Acetonuria','Acétonurie'),('7917','Oth cells/casts in urine','Présence d\'autres cellules et cylindres dans les urines'),('7919','Abn urine findings NEC','Résultats non spécifiques des examens d\'urine - autres'),('7920','Abn fnd-cerebrospinal fl','Résultats anormaux non spécifiques d\'examens, liquide céphalo-ra'),('7921','Abn find-stool contents','Résultats anormaux non spécifiques d\'examens, selles'),('7922','Abn findings-semen','Résultats anormaux non spécifiques d\'examens, sperme'),('7923','Abn find-amniotic fluid','Résultats anormaux non spécifiques d\'examens, liquide amniotique'),('7924','Abn findings-saliva','Résultats anormaux non spécifiques d\'examens, salive'),('7929','Abn find-body subst NEC','Résultats anormaux non spécifiq. d\'examens aut. excrét. et sécré'),('7930','Nonsp abn fd-skull/head','Résultats anormaux non spécifiques d\'examens, tête'),('7932','Nonsp abn intrathor NEC','Résultats anormaux non spécifiq. d\'examens, autres organes intra'),('7933','Nonsp abn fd-bilry tract','Résultats anormaux non spécifiques d\'examens, voies biliaires'),('7934','Nonsp abn find-gi tract','Résultats anormaux non spécifiques d\'examens, tractus gastro-int'),('7935','Nonsp abn find-gu organs','Résultats anormaux non psécifiques d\'examens, organes génito-uri'),('7936','Nonsp abn fnd-abdom area','Résultats anormaux non spécif. d\'examens, rég. abdominale et esp'),('7937','Nonsp abn find-ms system','Résultats anormaux non spécifiques d\'examens, système ostéo-musc'),('7942','Abn pulmonary func study','Résultats anormaux non spécifiques explorations fonctionnelles, '),('7944','Abn kidney funct study','Résultats anormaux non spécifiques d\'explorations fonctionnelles'),('7945','Abn thyroid funct study','Résultats anormaux non spécifiques d\'explorations fonctionnelles'),('7946','Abn endocrine study NEC','Résultats anormaux n-spécifiques explorations fontionnelles, aut'),('7947','Abn basal metabol study','Résultats anormaux non spécifiq. explorations fonctionnelles, mé'),('7948','Abn liver function study','Résultats anormaux non spécifiques explorations fonctionnelles, '),('7949','Abn function study NEC','Résultats anormaux non spécifiques d\'explorations fonctionnelles'),('7952','Abn chromosomal analysis','Résultats anormaux non spécifiques analyse des structures chromo'),('7954','Abn histologic find NEC','Autres résultats histologiques anormaux non spécifiques'),('7956','False pos sero test-syph','Réaction sérologique de la syphilis faussement positive'),('7960','Abn toxicologic finding','Résultats toxicologiques non spécifiques anormaux'),('7961','Abnormal reflex','Réflexes anormaux'),('7962','Elev bl pres w/o hypertn','Élévation de la pression artérielle sans diagnostic d\'hypertensi'),('7963','Low blood press reading','Baisse, non spécifique, de la pression artérielle'),('7964','Abn clinical finding NEC','Autres résultats cliniques anormaux'),('7969','Abnormal findings NEC','Autres résultats anormaux non spécifiques - sans précision'),('797','Senility w/o psychosis','Sénilité sans mention de psychose'),('7980','Sudden infant death synd','Syndrome de la mort subite chez le nourrisson'),('7981','Instantaneous death','Mort instantanée'),('7982','Death within 24 hr sympt','Décès survenant moins de 24 hres après début symptômes, sans auc'),('7989','Unattended death','Mort sans temoin'),('7991','Respiratory arrest','Cause de mortalité/morbidité, arrêt respiratoire'),('7993','Debility NOS','Cause de mortalité/morbidité, débilité'),('7994','Cachexia','Cause de mortalité/morbidité, cachexie'),('7999','Unkn cause morb/mort NEC','Autres causes inconnues ou non précisées de morbidité et de mort'),('8020','Nasal bone fx-closed','Fracture os du nez, simple'),('8021','Nasal bone fx-open','Fracture os du nez, ouverte'),('8024','Fx malar/maxillary-close','Fracture os malaire et maxillaire supérieur, simple'),('8025','Fx malar/maxillary-open','Fracture os malaire et maxillaire supérieur, ouverte'),('8026','Fx orbital floor-closed','Fracture orbite, paroi inférieure, simple'),('8027','Fx orbital floor-open','Fracture orbite, paroi inférieure, ouverte'),('8028','Fx facial bone NEC-close','Fracture autres os de la face, simple'),('8029','Fx facial bone NEC-open','Fracture autres os de la face, ouverte'),('8052','Fx dorsal vertebra-close','Fracture colonne dorsale (thoracique) simple, sans lésion médull'),('8053','Fx dorsal vertebra-open','Fracture colonne dorsale (thoracique) ouverte, sans lésion médul'),('8054','Fx lumbar vertebra-close','Fracture colonne lombaire simple, sans lésion médullaire'),('8055','Fx lumbar vertebra-open','Fracture colonne lombaire ouverte, sans lésion médullaire'),('8056','Fx sacrum/coccyx-closed','Fracture colonne vertébrale, sacrum et coccyx, simple, sans lési'),('8057','Fx sacrum/coccyx-open','Fracture colonne vertébrale, sacrum et coccyx, ouverte, sans lés'),('8058','Vertebral fx NOS-closed','Fracture colonne vertébrale, partie non précisée, simple, sans l'),('8059','Vertebral fx NOS-open','Fract. colonne vertébr., partie non précisée, ouverte, sans lési'),('8064','Cl lumbar fx w cord inj','Fracture colonne lombaire simple, avec lésion médullaire'),('8065','Opn lumbar fx w cord inj','Fracture colonne lombaire ouverte, avec lésion médullaire'),('8068','Vert fx NOS-cl w crd inj','Fracture colonne vertébrale, partie non précisée, simple, avec l'),('8069','Vert fx NOS-op w crd inj','Fracture colonne vertébrale, partie non précisée, ouverte, avec '),('8072','Fracture of sternum-clos','Fracture du sternum, simple'),('8073','Fracture of sternum-open','Fracture du sternum, ouverte'),('8074','Flail chest','Fracture, volet costal'),('8075','Fx larynx/trachea-closed','Fracture, larynx et trachée, simple'),('8076','Fx larynx/trachea-open','Fracture, larynx et trachée, ouverte'),('8080','Fracture acetabulum-clos','Fracture du bassin, acétabulum, simple'),('8081','Fracture acetabulum-open','Fracture du bassin, acétabulum, ouverte'),('8082','Fracture of pubis-closed','Fracture du bassin, pubis, simple'),('8083','Fracture of pubis-open','Fracture du bassin, pubis, ouverte'),('8088','Pelvic fracture NOS-clos','Fracture du bassin, partie non précisée, simple'),('8089','Pelvic fracture NOS-open','Fracture du bassin, partie non précisée, ouverte'),('8090','Fracture trunk bone-clos','Fracture du tronc, simple'),('8091','Fracture trunk bone-open','Fracture du tronc, ouverte'),('8170','Multiple fx hand-closed','Fractures multiples des os de la main, simples'),('8171','Multiple fx hand-open','Fractures multiples des os de la main, ouvertes'),('8180','Fx arm mult/NOS-closed','Fractures mal défenies du membre supérieur, simples'),('8181','Fx arm mult/NOS-open','Fractures mal défenies du membre supérieur, ouvertes'),('8190','Fx arms w rib/sternum-cl','Autres fractures multiples intéressant les membres supérieurs, s'),('8191','Fx arms w rib/stern-open','Autres fractures multiples intéressant les membres supérieurs, o'),('8208','Fx neck of femur NOS-cl','Fracture du col du fémur, partie non précisée, simple'),('8209','Fx neck of femur NOS-opn','Fracture du col du fémur, partie non précisée, ouverte'),('8220','Fracture patella-closed','Fracture de la rotule, simple'),('8221','Fracture patella-open','Fracture de la rotule, ouverte'),('8240','Fx medial malleolus-clos','Fracture cheville, malléole interne, simple'),('8241','Fx medial malleolus-open','Fracture cheville, malléole interne, ouverte'),('8242','Fx lateral malleolus-cl','Fracture cheville, malléole externe, simple'),('8243','Fx lateral malleolus-opn','Fracture cheville, malléole externe, ouverte'),('8244','Fx bimalleolar-closed','Fracture cheville, bimalléolaire, simple'),('8245','Fx bimalleolar-open','Fracture cheville, bimalléolaire, ouverte'),('8246','Fx trimalleolar-closed','Fracture cheville, trimalléolaire, simple'),('8247','Fx trimalleolar-open','Fracture cheville, trimalléolaire, ouverte'),('8248','Fx ankle NOS-closed','Fracture de la cheville, partie non précisée, simple'),('8249','Fx ankle NOS-open','Fracture de la cheville, partie non précisée, ouverte'),('8250','Fracture calcaneus-close','Fracture simple du calcanéum'),('8251','Fracture calcaneus-open','Fracture ouverte du calcanéum'),('8260','Fx phalanx, foot-closed','Fracture d\'une ou de plusieurs phalanges du pied, simple'),('8261','Fx phalanx, foot-open','Fracture d\'une ou de plusieurs phalanges du pied, ouverte'),('8270','Fx lower limb NEC-closed','Fractures du membre inférieur, autres, multiples ou mal définies'),('8271','Fx lower limb NEC-open','Fractures du membre inférieur, autres, multiples ou mal définies'),('8280','Fx legs w arm/rib-closed','Autres fractures multiples intéressant les membres inférieurs, s'),('8281','Fx legs w arm/rib-open','Autres fractures multiples intéressant les membres inférieurs, o'),('8290','Fracture NOS-closed','Fracture d\'un ou plusieurs os non précisés, simple'),('8291','Fracture NOS-open','Fracture d\'un ou plusieurs os non précisés, ouverte'),('8300','Dislocation jaw-closed','Luxation temporo-maxillaire, simple'),('8301','Dislocation jaw-open','Luxation temporo-maxillaire, compliquée'),('8360','Tear med menisc knee-cur','Déchirure récente du cartilage ou du ménisque interne du genou'),('8361','Tear lat menisc knee-cur','Déchirure récente du cartilage ou du ménisque externe du genou'),('8362','Tear meniscus NEC-curren','Autres déchirures du cartilage ou d\'un ménisque du genou'),('8363','Dislocat patella-closed','Luxation simple de la rotule'),('8364','Dislocation patella-open','Luxation compliquée de la rotule'),('8370','Dislocation ankle-closed','Luxation de la cheville, simple'),('8371','Dislocation ankle-open','Luxation de la cheville, compliquée'),('8398','Dislocation NEC-closed','Luxations multiples ou mal définies, simples'),('8399','Dislocation NEC-open','Luxations multiples ou mal définies, compliquées'),('8400','Sprain acromioclavicular','Entorse, articulation (ou ligament) acromio-claviculaire'),('8401','Sprain coracoclavicular','Entorse, ligament coraco-claviculaire'),('8402','Sprain coracohumeral','Entorse, ligament coraco-huméral'),('8403','Sprain infraspinatus','Entorse sous-épineux (muscle) (tendon)'),('8404','Sprain rotator cuff','Entorse, coiffe des rotateurs'),('8405','Sprain subscapularis','Entorse sous-scapulaire (muscle)'),('8406','Sprain supraspinatus','Entorse sus-épineux (muscle) (tendon)'),('8408','Sprain shoulder/arm NEC','Entorse de l\'épaule et du bras - autres'),('8409','Sprain shoulder/arm NOS','Entorse de l\'épaule et du bras - sans précision'),('8410','Sprain radial collat lig','Entorse du coude et de l\'avant-bras, ligament latéral externe'),('8411','Sprain ulnar collat lig','Entorse du coude et de l\'avant-bras, ligament latéral interne'),('8412','Sprain radiohumeral','Entorse, articulation huméro-radiale'),('8413','Sprain ulnohumeral','Entorse, articulation huméro-cubitale'),('8418','Sprain elbow/forearm NEC','Entorse du coude et de l\'avant-bras - autres'),('8419','Sprain elbow/forearm NOS','Entorse du coude et de l\'avant-bras - sans précision'),('8430','Sprain iliofemoral','Entorse, ligament ilio-fémoral'),('8431','Sprain ischiocapsular','Entorse, ligament ischio-capsulaire'),('8438','Sprain hip & thigh NEC','Entorse de la hanche et de la cuisse - autres'),('8439','Sprain hip & thigh NOS','Entorse de la hanche et de la cuisse - sans précision'),('8440','Sprain lateral coll lig','Entorse, ligament latéral externe du genou'),('8441','Sprain medial collat lig','Entorse, ligament latéral interne du genou'),('8442','Sprain cruciate lig knee','Entorse, ligaments croisés du genou'),('8443','Sprain super tibiofibula','Entorse, articulation (ou ligament) péronéo-tibiale supérieure'),('8448','Sprain of knee & leg NEC','Entorse du genou et de la jambe - autres'),('8449','Sprain of knee & leg NOS','Entorse du genou et de la jambe - sans précision'),('8460','Sprain lumbosacral','Entorse, articulation (ligament) lombo-sacrée'),('8461','Sprain sacroiliac','Entorse, ligament sacro-iliaque'),('8462','Sprain sacrospinatus','Entorse, ligament sacro-épineux'),('8463','Sprain sacrotuberous','Entorse, ligament sacro-sciatique'),('8468','Sprain sacroiliac NEC','Entorse de la région sacro-iliaque - autres'),('8469','Sprain sacroiliac NOS','Entorse de la région sacro-iliaque - sans précision'),('8470','Sprain of neck','Entorse du cou'),('8471','Sprain thoracic region','Entorse région dorsale'),('8472','Sprain lumbar region','Entorse région lombaire'),('8473','Sprain of sacrum','Entorse région sacrée'),('8474','Sprain of coccyx','Entorse région coccygienne'),('8479','Sprain of back NOS','Entorse du cou et de régions dorsales autres ou non précisées - '),('8480','Sprain of nasal septum','Entorse du cartilage de la cloison nasale'),('8481','Sprain of jaw','Entorse du maxillaire'),('8482','Sprain of thyroid region','Entorse région thyroïdienne'),('8483','Sprain of ribs','Entorse côtes'),('8485','Sprain of pelvis','Entorse du bassin'),('8488','Sprain NEC','Entorses autres sièges précisés'),('8489','Sprain NOS','Entorses autres ou mal définies, siège non précisé'),('8509','Concussion NOS','Commotion cérébrale - sans précision'),('8600','Traum pneumothorax-close','Pneumothorax sans mention de plaie pénétrante du thorax'),('8601','Traum pneumothorax-open','Pneumothorax avec plaie pénétrante du thorax'),('8602','Traum hemothorax-closed','Hémothorax sans mention de plaie pénétrante du thorax'),('8603','Traum hemothorax-open','Hémothorax avec plaie pénétrante du thorax'),('8604','Traum pneumohemothor-cl','Hémo-pneumothorax sans mention de plaie pénétrante du thorax'),('8605','Traum pneumohemothor-opn','Hémo-pneumothorax avec plaie pénétrante du thorax'),('8620','Diaphragm injury-closed','Traumatisme du diaphragme, sans mention de plaie pénétrante'),('8621','Diaphragm injury-open','Traumatisme du diaphragme, avec plaie pénétrante'),('8628','Intrathoracic inj NOS-cl','Traumat. org. intrathor. mult. et sans précis., sans mention pla'),('8629','Intrathorac inj NOS-open','Traumat. org. intrathor. mult. et non précis., avec plaie pénétr'),('8630','Stomach injury-closed','Traumatisme de l\'estomac, sans mention de plaie pénétrante'),('8631','Stomach injury-open','Traumatisme de l\'estomac, avec plaie pénétrante'),('8670','Bladder/urethra inj-clos','Traumatisme vessie/urètre, sans mention de plaie pénétrante'),('8671','Bladder/urethra inj-open','Traumatisme vessie/urètre, avec plaie pénétrante'),('8672','Ureter injury-closed','Traumatisme uretère, sans mention de plaie pénétrante'),('8673','Ureter injury-open','Traumatisme uretère, avec plaie pénétrante'),('8674','Uterus injury-closed','Traumatisme utérus, sans mention de plaie pénétrante'),('8675','Uterus injury-open','Traumatisme utérus, avec plaie pénétrante'),('8676','Pelvic organ inj NEC-cl','Traumatisme autres org.pelviens, sans mention de plaie pénétrant'),('8677','Pelvic organ inj NEC-opn','Traumatisme autres org.pelviens, avec plaie pénétrante'),('8678','Pelvic organ inj NOS-cl','Traumatisme org.pelviens, partie non précisée, sans mention plai'),('8679','Pelvic organ inj NOS-opn','Traumatisme org.pelviens, partie non précisée, avec plaie pénétr'),('8690','Internal inj NOS-closed','Traumatisme interne organe non précisé ou mal déf., sans mention'),('8691','Internal injury NOS-open','Traumatisme interne d\'organe non précisé ou mal défini, avec pla'),('8700','Lac eyelid skn/perioculr','Déchirure de la peau de la paupière et de la région périoculaire'),('8701','Full-thicknes lac eyelid','Déchirure profonde de la paupière sans atteinte des voies lacrym'),('8702','Lac eyelid inv lacrm pas','Déchirure de la paupière avec atteinte des voies lacrymales'),('8703','Penetr wnd orbit w/o FB','Plaie pénétrante de l\'orbite sans mention de corps étranger'),('8704','Penetrat wnd orbit w FB','Plaie pénétrante de l\'orbite avec corps étranger'),('8708','Opn wnd ocular adnex NEC','Plaie des annexes de l\'oeil - autres'),('8709','Opn wnd ocular adnex NOS','Plaie des annexes de l\'oeil - sans précision'),('8710','Ocular lac w/o prolapse','Déchirure de l\'oeil sans protursion des tissus intra-oculaires'),('8711','Ocular lacera w prolapse','Déchirure de l\'oeil avec protursion des tissus intra-oculaires'),('8712','Rupture eye w tissu loss','Rupture de l\'oeil avec perte partielle du tissu intra-oculaire'),('8713','Avulsion of eye','Arrachement de l\'oeil'),('8714','Laceration of eye NOS','Déchirure non précisée de l\'oeil'),('8715','Penetrat magnet FB eye','Pénétration du globe oculaire par corps étranger magnétique, sau'),('8716','Penetrat FB NEC eye','Pénétration du globe oculaire par corps étranger non magnétique,'),('8717','Ocular penetration NOS','Pénétration du globe oculaire - sans précision'),('8719','Opn wound of eyeball NOS','Plaie du globe oculaire - sans précision'),('8728','Open wound of ear NOS','Plaie oreille partie non précisée, sans mention de complication'),('8729','Open wound ear NOS-compl','Plaie oreille partie non précisée, avec complication'),('8730','Open wound of scalp','Plaie cuir chevelu, sans mention de complication'),('8731','Open wound scalp-compl','Plaie cuir chevelu, avec complication'),('8738','Open wound of head NEC','Plaies de la tête autres et sans précision, sans mention de comp'),('8739','Open wnd head NEC-compl','Plaies de la tête autres et sans précision, avec complication'),('8742','Open wound thyroid gland','Plaie, glande thyroïde, sans mention de complication'),('8743','Open wound thyroid-compl','Plaie, glande thyroïde, avec complication'),('8744','Open wound of pharynx','Plaie, pharynx, sans mention de complication'),('8745','Open wound pharynx-compl','Plaie, pharynx, avec complication'),('8748','Open wound of neck NEC','Plaie du cou, parties autres et non précisées, sans mention de c'),('8749','Opn wound neck NEC-compl','Plaie du cou, parties autres et non précisées, avec complication'),('8750','Open wound of chest','Plaie de la paroi antérieure du thorax, sans mention de complica'),('8751','Open wound chest-compl','Plaie de la paroi antérieure du thorax, avec complication'),('8760','Open wound of back','Plaies du dos et des lombes, sans mention de complication'),('8761','Open wound back-compl','Plaies du dos et des lombes, avec complication'),('8770','Open wound of buttock','Plaie de la région fessière, sans mention de complication'),('8771','Open wound buttock-compl','Plaie de la région fessière, avec complication'),('8780','Open wound of penis','Plaie/amputation traumatique pénis, sans mention complication'),('8781','Open wound penis-compl','Plaie/amputation traumatique pénis, avec complication'),('8782','Opn wound scrotum/testes','Plaie/amputation traumat. scrotum et testicules, sans mention de'),('8783','Opn wnd scrot/test-compl','Plaie/amputation traumat. scrotum et testicules, avec complicati'),('8784','Open wound of vulva','Plaie, vulve, sans mention de complication'),('8785','Open wound vulva-compl','Plaie, vulve, avec complication'),('8786','Open wound of vagina','Plaie, vagin, sans mention de complication'),('8787','Open wound vagina-compl','Plaie, vagin, avec complication'),('8788','Open wound genital NEC','Plaie organes génitaux, parties autres et non précis., sans ment'),('8789','Opn wnd genital NEC-comp','Plaie organes génitaux, parties autres et non précisées, avec co'),('8790','Open wound of breast','Plaies du sein, sans mention de complication'),('8791','Open wound breast-compl','Plaies du sein, avec complication'),('8792','Opn wnd anterior abdomen','Plaies paroi antérieure de l\'abdomen, sans mention de complicati'),('8793','Opn wnd ant abdomen-comp','Plaies paroi antérieure de l\'abdomen, avec complication'),('8794','Opn wnd lateral abdomen','Plaies paroi latérale de l\'abdomen, sans mention de complication'),('8795','Opn wnd lat abdomen-comp','Plaies paroi latérale de l\'abdomen, avec complication'),('8796','Open wound of trunk NEC','Plaies du tronc, parties autres ou non précis., sans mention com'),('8797','Open wnd trunk NEC-compl','Plaies du tronc, parties autres ou non précisées, avec complicat'),('8798','Open wound site NOS','Plaies (multiples) à localisations non précisées, sans mention d'),('8799','Opn wound site NOS-compl','Plaies multiples à localisations non précisées, avec complicatio'),('8820','Open wound of hand','Plaie de la main'),('8821','Opn wound hand-complicat','Plaie de la main'),('8822','Open wound hand w tendon','Plaie de la main'),('8830','Open wound of finger','Plaie des doigts, sans mention de complication'),('8831','Open wound finger-compl','Plaie des doigts, avec complication'),('8832','Open wnd finger w tendon','Plaie des doigts, avec atteinte des tendons'),('8840','Open wound arm mult/NOS','Plaies membre supérieur, multiples ou non précisées, sans mentio'),('8841','Open wound arm NOS-compl','Plaies membre supérieur, multiples ou non précisées, avec compli'),('8842','Opn wnd arm NOS w tendon','Plaies membre supér., mult. ou non précis., avec atteinte des te'),('8850','Amputation thumb','Amputation traumatique du pouce (complète)(partielle), sans ment'),('8851','Amputation thumb-compl','Amputation traumatique du pouce (complète) (partielle), avec com'),('8860','Amputation finger','Amputation traumatique d\'autres doigts (comp.)(part.), sans ment'),('8861','Amputation finger-compl','Amputation traumatique d\'autres doigts (comp.)(part.), avec comp'),('8870','Amput below elb, unilat','Amputation traumat.unilat.au-dessous du coude, sans mention de c'),('8871','Amp below elb, unil-comp','Amputation traumat.unilat.au-dessous du coude, avec complication'),('8872','Amput abv elbow, unilat','Amputation traumat.unilat.coude et au-dessus coude, sans mention'),('8873','Amput abv elb, unil-comp','Amputation traumat.unilat.coude et au-dessus du coude, avec comp'),('8874','Amputat arm, unilat NOS','Amputation traumat. bras, main, unilat., niveau n. précis., sans'),('8875','Amput arm, unil NOS-comp','Amputation traumat. bras, main, unilatérale, niveau non précisé,'),('8876','Amputation arm, bilat','Amputation traumat. bras, main, bilatér. (tout niveau), sans men'),('8877','Amputat arm, bilat-compl','Amputation traumat. bras, main, bilatér. (tout niveau), avec com'),('8900','Open wound of hip/thigh','Plaie de la hanche et de la cuisse, sans mention de complication'),('8901','Open wnd hip/thigh-compl','Plaie de la hanche et de la cuisse, avec complication'),('8902','Opn wnd hip/thigh w tend','Plaie de la hanche et de la cuisse, avec atteinte des tendons'),('8910','Open wnd knee/leg/ankle','Plaie du genou, jambe (sauf cuisse), cheville, sans mention de c'),('8911','Open wnd knee/leg-compl','Plaie du genou, jambe (sauf cuisse), cheville, avec complication'),('8912','Opn wnd knee/leg w tendn','Plaie du genou, jambe (sauf cuisse), cheville, avec atteinte des'),('8920','Open wound of foot','Plaie du pied'),('8921','Open wound foot-compl','Plaie du pied'),('8922','Open wound foot w tendon','Plaie du pied'),('8930','Open wound of toe','Plaie des orteils, sans mention de complication'),('8931','Open wound toe-compl','Plaie des orteils, avec complication'),('8932','Open wound toe w tendon','Plaie des orteils, avec atteinte des tendons'),('8940','Open wound of leg NEC','Plaies membre inférieur, multiples ou non précisées, sans mentio'),('8941','Open wound leg NEC-compl','Plaies membre inférieur, multiples ou non précisées, avec compli'),('8942','Opn wnd leg NEC w tendon','Plaies membre inférieur, multiples ou non précisées, avec attein'),('8950','Amputation toe','Amputation traumatique orteils (complète)(partielle), sans menti'),('8951','Amputation toe-complicat','Amputation traumatique d\'orteils (complète) (partielle), avec co'),('8960','Amputation foot, unilat','Amputation traumat. pied (compl.)(partiel.), unilatér., sans men'),('8961','Amput foot, unilat-compl','Amputation traumat. pied (compl.)(partiel.), unilatérale, avec c'),('8962','Amputation foot, bilat','Amput.trauma.pied (comp.)(partielle),bilatérale sans mention com'),('8963','Amputat foot, bilat-comp','Amputation traumat. pied (comp.)(partielle) bilatérale, avec com'),('8970','Amput below knee, unilat','Amput.trauma.jambe(compl./part.),unilat., au-dessous genou, sans'),('8971','Amputat bk, unilat-compl','Amputation traum.jambe(compl./part.),unilat.,au-dessous genou, a'),('8972','Amput above knee, unilat','Amputation traumat.jambe,unilat.genou,au-dessus genou, sans ment'),('8973','Amput abv kn, unil-compl','Amputation traumat.jambe,unilat.genou et au-dessus genou, avec c'),('8974','Amputat leg, unilat NOS','Amput.traum.jambe(compl./part.),unil.,niveau non précis., sans m'),('8975','Amput leg, unil NOS-comp','Amputation traum.jambe(compl./part.), unilat., niveau non précis'),('8976','Amputation leg, bilat','Amput. traum. jambe(compl./part.), bilat.(tout niveau), sans men'),('8977','Amputat leg, bilat-compl','Amputation traum. jambe(compl./partielle), bilat., tout niveau, '),('9001','Inj internl jugular vein','Traumatisme veine jugulaire interne'),('9009','Inj head/neck vessel NOS','Traumatisme des vaisseaux sanguins de la tête et du cou - sans p'),('9010','Injury thoracic aorta','Traumatisme de l\'aorte thoracique'),('9011','Inj innomin/subclav art','Traumat.du tronc artériel brachio-céphalique et de l\'artère sous'),('9012','Inj superior vena cava','Traumatisme veine cave supérieure'),('9013','Inj innomin/subclav vein','Traum. du tronc veineux brachio-céphalique et de la veine sous-c'),('9019','Inj thoracic vessel NOS','Traumatisme des vaisseaux sanguins du thorax - sans précision'),('9020','Injury abdominal aorta','Traumatisme de l\'aorte abdominale'),('9029','Inj abdominal vessel NOS','Traumatisme des vaisseaux sanguins de l\'abdomen et du bassin - s'),('9031','Injury brachial vessels','Traumatisme des vaisseaux sanguins brachiaux'),('9032','Injury radial vessels','Traumatisme des vaisseaux sanguins radiaux'),('9033','Injury ulnar vessels','Traumatisme des vaisseaux sanguins cubitaux'),('9034','Injury palmar artery','Traumatisme des vaisseaux sanguins palmaires'),('9035','Injury finger vessels','Traumatisme des vaisseaux sanguins digitaux'),('9038','Injury arm vessels NEC','Traumatisme des vaisseaux sanguins du membre supérieur - autres'),('9039','Injury arm vessel NOS','Traumatisme des vaisseaux sanguins du membre supérieur - sans pr'),('9040','Inj common femoral arter','Traumatisme artère fémorale commune'),('9041','Inj superfic femoral art','Traumatisme artère fémorale superficielle'),('9042','Injury femoral vein','Traumatisme veines fémorales'),('9043','Injury saphenous vein','Traumatisme veines saphènes'),('9046','Inj deep plantar vessel','Traumatisme vaisseaux sanguins plantaires profonds'),('9047','Injury leg vessels NEC','Traumatisme autres vaisseaux sanguins du membre inférieur'),('9048','Injury leg vessel NOS','Traumatisme vaisseaux sanguins du membre inférieur - sans précis'),('9049','Blood vessel injury NOS','Traumatisme vaisseaux sanguins du membre inférieur, siège non pr'),('9050','Late effec skull/face fx','Séquelles des fractures des os du crâne et de la face'),('9051','Late eff spine/trunk fx','Séquelles fractures colonne vertébrale et tronc, sans mention lé'),('9052','Late effect arm fx','Séquelles des fractures du membre supérieur'),('9053','Late eff femoral neck fx','Séquelles des fractures du col du fémur'),('9054','Late effect leg fx','Séquelles des fractures du membre inférieur'),('9055','Late effect fracture NEC','Séquelles des fractures, multiples et non précisées, des os'),('9056','Late effect dislocation','Séquelles des luxations'),('9057','Late effec sprain/strain','Séquelles des entorses, sans mention de lésion des tendons'),('9058','Late effec tendon injury','Séquelles des lésions traumatiques des tendons'),('9059','Late eff traumat amputat','Séquelles d\'amputation traumatique'),('9060','Lt eff opn wnd head/trnk','Séquelles des plaies de la tête, du cou et du tronc'),('9061','Late eff open wnd extrem','Séquelles des plaies des membres, sans mention de lésion des ten'),('9062','Late eff superficial inj','Séquelles des traumatismes superficiels'),('9063','Late effect of contusion','Séquelles des contusions'),('9064','Late effect of crushing','Séquelles des écrasements'),('9065','Late eff head/neck burn','Séquelles des brûlures de l\'oeil, de la face, de la tête et du c'),('9066','Late eff wrist/hand burn','Séquelles des brûlures du poignet et de la main'),('9067','Late eff burn extrem NEC','Séquelles des brûlures des autres parties des membres'),('9068','Late effect of burns NEC','Séquelles des brûlures d\'autres sièges précisés'),('9069','Late effect of burn NOS','Séquelles des brûlures de sièges non précisés'),('9070','Lt eff intracranial inj','Séquelles des traumatismes intracrâniens, sans mention de fractu'),('9071','Late eff cran nerve inj','Séquelles des traumatismes des nerfs crâniens'),('9072','Late eff spinal cord inj','Séquelles des traumatismes de la moelle épinière'),('9073','Lt eff nerv inj trnk NEC','Séquelles traumatism. racines et plexus nerfs rachidiens et autr'),('9074','Lt eff nerv inj shld/arm','Séquelles traumatismes nerfs périphériques ceinture scapulaire e'),('9075','Lt eff nerv inj pelv/leg','Séquelles traumatismes nerfs périphériques ceinture pelvienne et'),('9079','Late eff nerve inj NEC','Séquelles des traumatismes des nerfs - autres et sans précision'),('9080','Late eff int injur chest','Séquelles des traumatismes internes du thorax'),('9081','Late eff int inj abdomen','Séquelles des traumatismes internes de l\'abdomen'),('9082','Late eff int injury NEC','Séquelles des traumatismes internes d\'autres organes'),('9083','Late eff inj periph vess','Séquelles traumatismes vaisseaux sanguins de la tête, du cou et '),('9084','Lt eff inj thor/abd vess','Séquelles traumatismes vaisseaux sanguins du thorax, de l\'abdome'),('9085','Late eff FB in orifice','Séquelles de la pénétration d\'un corps étranger par un orifice n'),('9086','Late eff complic trauma','Séquelles de certaines complications des traumatismes'),('9089','Late effect injury NOS','Séquelles de traumatismes non précisés'),('9090','Late eff drug poisoning','Séquelles des intoxications par médicaments et produits biologiq'),('9091','Late eff nonmed substanc','Séquelles des effets toxiques de substances non médicinales'),('9092','Late effect of radiation','Séquelles des radiations'),('9093','Late eff surg/med compl','Séquelles des complications des soins médicaux et chirurgicaux'),('9094','Late eff cert ext cause','Séquelles d\'autres atteintes externes'),('9099','Late eff exter cause NEC','Séquelles d\'atteintes externes non classées ailleurs ou non préc'),('9100','Abrasion head','Traum.superf.face,cou,cuir chev.,égrat. ou brûl. par frict.,sans'),('9101','Abrasion head-infected','Traum.super.face, cou, cuir chev., égrat. ou brûl. par friction,'),('9102','Blister head','Traumat. superf. face(sauf oeil), cou, cuir chevelu,ampoule,sans'),('9103','Blister head-infected','Traumatisme superfic. face(sauf oeil), cou, cuir chevelu, ampoul'),('9104','Insect bite head','Traum.super. face,cou,cuir chev.,piqûre insecte non venim., sans'),('9105','Insect bite head-infect','Traum.super.face, cou, cuir chev., piqûre insecte non venimeux, '),('9106','Foreign body head','Traum.super.face,cou,cuir chev.,corps étr.(esq.)sans plaie maj.,'),('9107','Foreign body head-infect','Traum.super.face,cou,cuir chev.,corps étr.(esq.)sans plaie maj.,'),('9108','Superfic inj head NEC','Traum.superf. face, cou, cuir chev., aut. et non précis., sans m'),('9109','Superf inj head NEC-inf','Traum. superf. face, cou, cuir chevelu, aut. et non précis., ave'),('9110','Abrasion trunk','Traumat. superf. du tronc, égrat. ou brûl. par friction, sans me'),('9111','Abrasion trunk-infected','Traumatisme superficiel du tronc, égratig. ou brûl. par friction'),('9112','Blister trunk','Traumatisme superficiel du tronc, ampoule, sans mention d\'infect'),('9113','Blister trunk-infected','Traumatisme superficiel du tronc, ampoule, avec infection'),('9114','Insect bite trunk','Traumat. superfic. du tronc, piqûre insectes non venimeux, sans '),('9115','Insect bite trunk-infec','Traumatisme superficiel du tronc, piqûre insecte non venimeux, a'),('9116','Foreign body trunk','Traum. superf.tronc,corps étrang.(esquil.),sans plaie maj., sans'),('9117','Foreign body trunk-infec','Traumat. superf. tronc,corps étrang.(esquil.), sans plaie maj., '),('9118','Superfic inj trunk NEC','Traumatismes superf. épaule et bras, aut. et non précis., sans m'),('9119','Superf inj trnk NEC-inf','Traumatismes superficiels tronc, autres et non précisés, avec in'),('9120','Abrasion shoulder/arm','Traumat. superf. épaule,bras,égrat.ou brûl. par friction, sans m'),('9121','Abrasion shldr/arm-infec','Traumat. superf. épaule, bras, égrat. ou brûl. par friction, ave'),('9122','Blister shoulder & arm','Traum. superf. épaule, bras, ampoule, sans mention d\'infection'),('9123','Blister shoulder/arm-inf','Traumatisme superficiel épaule, bras, ampoule, avec infection'),('9124','Insect bite shoulder/arm','Traumat. superf. épaule, bras, piqûre insecte non venimeux, sans'),('9125','Insect bite shld/arm-inf','Traumat. superf. épaule, bras, piqûre insecte non venimeux, avec'),('9126','Foreign body shouldr/arm','Traum.superf.épaule,bras,corps étr.(esquil.)sans plaie maj.,sans'),('9127','FB shoulder/arm-infect','Traum. superf. épaule,bras,corps étrang.(esquil.),sans plaie maj'),('9128','Superf inj shldr/arm NEC','Traum. superf. épaule, bras, autres et non précis., sans mention'),('9129','Superf inj shldr NEC-inf','Traumatisme superficiel épaule et bras, aut. et non précis., ave'),('9130','Abrasion forearm','Traum.superf.coude,avant-bras,poignet,égrat.ou brûl.par frict.,s'),('9131','Abrasion forearm-infect','Traum.superf.coude,avant-bras,poignet,égrat.ou brûl. par frict.,'),('9132','Blister forearm','Traum.superf.coude, avant-bras, poignet, ampoule, sans mention d'),('9133','Blister forearm-infected','Traum. superf. coude, avant-bras, poignet, ampoule, avec infecti'),('9134','Insect bite forearm','Traum.superf.coude,avant-bras,poignet,piqûre insec.non venim.,sa'),('9135','Insect bite forearm-inf','Traum.superf.coude,avant-bras,poignet,piqûre insecte non venimeu'),('9136','Foreign body forearm','Traum.super.coude,av.-bras,poig.,corps étr.sans plaie maj.,sans '),('9137','Foreign body forearm-inf','Traum.super.coude,avant-bras,poignet,corps étrang. sans plaie ma'),('9138','Superf inj forearm NEC','Traum.superf.coude,avant-bras,poignet,aut. et non précis., sans '),('9139','Suprf inj forarm NEC-inf','Traum. superf. coude, avant-bras, poignet, aut. et non précis., '),('9140','Abrasion hand','Traum.superf.main'),('9141','Abrasion hand-infected','Traum.superf.main'),('9142','Blister hand','Traum.superf.main'),('9143','Blister hand-infected','Traum. superf. main'),('9144','Insect bite hand','Traum.superf.main,sauf doigts seuls,piqûre ins. non venim.,sans '),('9145','Insect bite hand-infect','Traum.superf.main,sauf doigts seuls, piqûre insecte non venimeux'),('9146','Foreign body hand','Traum.superf.main,sauf doigts seuls,corps étr.,sans plaie maj.,s'),('9147','Foreign body hand-infect','Traum.superf.main'),('9148','Superficial inj hand NEC','Traum.superf. main sauf doigts seuls, aut. et non précis., sans '),('9149','Superf inj hand NEC-inf','Traum. superf.main sauf doigts seuls, aut. et non précisés, avec'),('9150','Abrasion finger','Traumat. superf. doigts, égrat. ou brûl. par friction, sans ment'),('9151','Abrasion finger-infected','Traumat. superf. doigts, égrat. ou brûlures par friction, avec i'),('9152','Blister finger','Traumatisme superficiel des doigts, ampoule, sans mention d\'infe'),('9153','Blister finger-infected','Traumatisme superficiel des doigts, ampoule, avec infection'),('9154','Insect bite finger','Traumat. superf. doigts, piqûre d\'insecte non venimeux, sans men'),('9155','Insect bite finger-infec','Traumat. superf. doigts, piqûre d\'insecte non venimeux, avec inf'),('9156','Foreign body finger','Traumat.superf.doigts, corps étr.(esquil.) sans plaie maj., sans'),('9157','Foreign body finger-inf','Traumat.superf.des doigts, corps étr.(esquille) sans plaie maj.,'),('9158','Superfic inj finger-NEC','Traumat. superf. doigts, autres et non précisés, sans mention d\''),('9159','Suprf inj finger NEC-inf','Traumatismes superficiels doigts, autres et non précisés, avec i'),('9160','Abrasion hip & leg','Traumat.superf.hanche,cuisse,jambe,chev.,égrat.ou brûl.frict., s'),('9161','Abrasion hip/leg-infect','Traumat.superf.hanche,cuisse,jambe,cheville,égrat.ou brûl. frict'),('9162','Blister hip & leg','Traumat.superf.hanche, cuisse, jambe, cheville, ampoule, sans me'),('9163','Blister hip & leg-infect','Traumat.superf.hanche, cuisse, jambe, cheville, ampoule, avec in'),('9164','Insect bite hip & leg','Traumat.sup.hanche,cuisse,jambe,chev.,piqûre insect. n.venim.,sa'),('9165','Insect bite hip/leg-inf','Traumat.superf.hanche,cuisse,jambe,cheville,piqûre ins. n. venim'),('9166','Foreign body hip/leg','Traum.sup.hanche,cuisse,jambe,chev.,corps étr. sans plaie maj.,s'),('9167','Foreign bdy hip/leg-inf','Traum.sup.hanche,cuisse,jambe,chev.,corps étr. sans plaie maj., '),('9168','Superfic inj hip/leg NEC','Traum.sup.hanche,cuisse,jambe,chev., aut. et non précis., sans m'),('9169','Superf inj leg NEC-infec','Traum.superf.hanche,cuisse,jambe,chev., aut. et non précis., ave'),('9170','Abrasion foot & toe','Traum.superf. pied et orteils, égrat. ou brûlure friction, sans '),('9171','Abrasion foot/toe-infec','Traum.superf. pied et orteils, égrat. ou brûlure friction, avec '),('9172','Blister foot & toe','Traumatisme superficiel pied et orteils, ampoule, sans mention d'),('9173','Blister foot & toe-infec','Traumatisme superficiel du pied et des orteils, ampoule, avec in'),('9174','Insect bite foot/toe','Traum. superf. pied et orteils, piqûre insecte non venim., sans '),('9175','Insect bite foot/toe-inf','Traum.superf.du pied et des orteils, piqûre insecte non venimeux'),('9176','Foreign body foot & toe','Traum.superf.pied,orteils,corps étrang.(esq.) sans plaie maj.,sa'),('9177','Foreign bdy foot/toe-inf','Traum.superf. pied et orteils, corps étrang.(esq.) sans plaie ma'),('9178','Superf inj foot/toe NEC','Traumatisme superf. pied, orteils, aut. et non précis., sans men'),('9179','Superf inj foot NEC-inf','Traumatisme superficiel pied, orteils, aut. et non précis., avec'),('9180','Superfic inj periocular','Traumatisme superficiel, paupières et région périoculaire'),('9181','Superficial inj cornea','Traumatisme superficiel, cornée'),('9182','Superfic inj conjunctiva','Traumatisme superficiel. conjonctive'),('9189','Superficial inj eye NEC','Traumatisme superficiel de l\'oeil et de ses annexes - autres et '),('9190','Abrasion NEC','Traum.sup.sièges aut.,mult.ou n.préc.,égrat.ou brûl.friction, sa'),('9191','Abrasion NEC-infected','Traum.sup.sièges aut.,mult.ou n. précis.,égrat. ou brûl. frict.,'),('9192','Blister NEC','Traum. superf. sièges aut., mult. ou non précis., ampoule, sans '),('9193','Blister NEC-infected','Traumatisme superf. sièges aut., multiples ou non précis.,ampoul'),('9194','Insect bite NEC','Traum.sup.sièges aut.,mult.ou n.précis.,piqûre ins. n.venim., sa'),('9195','Insect bite NEC-infected','Traum.sup.sièges aut.,mult.ou non précis.,piqûre ins. n.venimeux'),('9196','Superfic foreign bdy NEC','Traum.sup.sièg.aut.,mult.ou n.précis.,corps étr.sans plaie maj.,'),('9197','Superficial FB NEC-infec','Traum.sup.sièges aut.,mult. ou n.préc.,corps étr. sans plaie maj'),('9198','Superficial injury NEC','Traum. superf. sièges autres, multiples ou non précisés, sans me'),('9199','Superfic inj NEC-infect','Traum. superf. sièges autres, multiples ou non précisés, avec me'),('920','Contusion face/scalp/nck','Contusion de la face, du cuir chevelu et du cou'),('9210','Black eye NOS','Ecchymose oculaire sans autre précision'),('9211','Contusion periocular','Contusion de la paupière et de la région périoculaire'),('9212','Contusion orbital tissue','Contusion de tissus de l\'orbite'),('9213','Contusion of eyeball','Contusion du globe oculaire'),('9219','Contusion of eye NOS','Contusion de l\'oeil - sans précision'),('9220','Contusion of breast','Contusion du sein'),('9221','Contusion of chest wall','Contusion de la paroi antérieure du thorax'),('9222','Contusion abdominal wall','Contusion de la paroi abdominale'),('9224','Contusion genital organs','Contusion des organes génitaux'),('9228','Multiple contusion trunk','Contusion du tronc, localisations multiples'),('9229','Contusion trunk NOS','Contusion du tronc, localisation non précisée'),('9233','Contusion of finger','Contusion, doigts'),('9238','Multiple contusion arm','Contusion, localisations multiples du membre supérieur'),('9239','Contusion upper limb NOS','Contusion, localisation non précisée du membre supérieur'),('9243','Contusion of toe','Contusions du membre inférieur et de sièges autres ou non précis'),('9244','Multiple contusion leg','Contusions membre inf. et sièges autres ou non précis., localisa'),('9245','Contusion leg NOS','Contusions membre inf. et sièges aut. ou non précis., localisati'),('9248','Multiple contusions NEC','Contusions membre inf. et sièges aut. ou non précis., sièges mul'),('9249','Contusion NOS','Contusions du membre inférieur, siège non précisé'),('9260','Crush inj ext genitalia','Écrasement du tronc, organes génitaux externes'),('9268','Mult crushing inj trunk','Écrasement du tronc, localisations multiples'),('9269','Crushing inj trunk NOS','Écrasement du tronc, localisation non précisée'),('9273','Crushing injury finger','Écrasement du membre supérieur, doigts'),('9278','Mult crushing injury arm','Écrasement du membre supérieur, localisations multiples'),('9279','Crushing injury arm NOS','Écrasement du membre supérieur, localisation non précisée'),('9283','Crushing injury toe','Écrasement du membre inférieur, orteils'),('9288','Mult crushing injury leg','Écrasement du membre inférieur, localisations multiples'),('9289','Crushing injury leg NOS','Écrasement du membre inférieur, localisation non précisée'),('9290','Crush inj mult site NEC','Écrasement, sièges multiples non classés ailleurs'),('9299','Crushing injury NOS','Écrasement, siège non précisé'),('9300','Corneal foreign body','Corps étranger de l\'oeil, cornée'),('9301','FB in conjunctival sac','Corps étranger de l\'oeil, sac conjonctival'),('9302','FB in lacrimal punctum','Corps étranger de l\'oeil, points lacrymaux'),('9308','Foreign bdy ext eye NEC','Corps étranger de l\'oeil, sièges autres et multiples'),('9309','Foreign bdy ext eye NOS','Corps étranger de l\'oeil - sans précision'),('931','Foreign body in ear','Aortite syphilitique'),('932','Foreign body in nose','Corps étranger du nez'),('9330','Foreign body in pharynx','Corps étranger, pharynx'),('9331','Foreign body in larynx','Corps étranger, larynx'),('9340','Foreign body in trachea','Corps étranger, trachée'),('9341','Foreign body bronchus','Corps étranger, bronche souche'),('9348','FB trach/bronch/lung NEC','Corps étranger, autres parties précisées de l\'appareil respirato'),('9349','FB respiratory tree NOS','Corps étranger, partie non précisée de l\'appareil respiratoire'),('9350','Foreign body in mouth','Corps étranger, bouche'),('9351','Foreign body esophagus','Corps étranger, oesophage'),('9352','Foreign body in stomach','Corps étranger, estomac'),('936','FB in intestine & colon','Corps étranger de l\'intestin et du côlon'),('937','Foreign body anus/rectum','Corps étranger de l\'anus et du rectum'),('938','Foreign body GI NOS','Corps étranger de l\'appareil digestif - sans précision'),('9390','FB bladder & urethra','Corps étranger, vessie et urètre'),('9391','Foreign body uterus','Corps étranger, utérus, toute partie'),('9392','Foreign bdy vulva/vagina','Corps étranger, vulve et vagin'),('9393','Foreign body penis','Corps étranger, pénis'),('9399','Foreign bdy gu tract NOS','Corps étranger de l\'appareil génito-urinaire - sans précision'),('9400','Chemical burn periocular','Brûlure des paupières et de la région périoculaire, par substanc'),('9401','Burn periocular area NEC','Autres brûlures des paupières et de la région périoculaire'),('9402','Alkal burn cornea/conjun','Brûlure de la cornée et du sac conjonctival, par alcali'),('9403','Acid burn cornea/conjunc','Brûlure de la cornée et du sac conjonctival, par acide'),('9404','Burn cornea/conjunct NEC','Autres brûlures de la cornée et du sac conjonctival'),('9405','Burn w eyeball destruct','Brûlures provoquant la rupture et la destruction du globe oculai'),('9409','Burn eye & adnexa NOS','Brûlure non précisée de l\'oeil et de ses annexes'),('9460','Burn NOS multiple site','Brûlures localisations multiples précisées, degré non précisé'),('9461','1st deg burn mult site','Brûlures localisations multiples précisées, érythème (premier de'),('9462','2nd deg burn mult site','Brûlures localisations multiples précisées, phlyctènes (deuxième'),('9463','3rd deg burn mult site','Brûlures local.mult.précisées, atteinte toutes couches peau (deu'),('9464','Deep 3 deg brn mult site','Brûlures localis. mult. précis., nécrose prof. tissus s.-jacents'),('9470','Burn of mouth & pharynx','Brûlure, bouche et pharynx'),('9471','Burn larynx/trachea/lung','Brûlure, larynx, trachée et poumon'),('9472','Burn of esophagus','Brûlure, oesophage'),('9473','Burn of GI tract','Brûlure, tractus gastro-intestinal'),('9474','Burn of vagina & uterus','Brûlure, vagin et utérus'),('9478','Burn internal organ NEC','Brûlure des organes internes - autres'),('9479','Burn internal organ NOS','Brûlure des organes internes - sans précision'),('9490','Burn NOS','Brûlure, sans précision, degré non précisé'),('9491','1st degree burn NOS','Brûlure, sans précision, érythème (premier degré)'),('9492','2nd degree burn NOS','Brûlure, sans précision, phlyctènes (deuxième degré).'),('9493','3rd degree burn NOS','Brûlure, sans précision, atteinte de toutes couches peau (deuxiè'),('9494','Deep 3rd deg burn NOS','Brûlure, sans précision, nécrose profonde tissus sous-jacents (t'),('9500','Optic nerve injury','Traumatisme nerf optique'),('9501','Injury to optic chiasm','Traumatisme chiasma optique'),('9502','Injury to optic pathways','Traumatisme voies optiques'),('9503','Injury to visual cortex','Traumatisme cortex visuel'),('9509','Inj optic nerv/path NOS','Traumatisme du nerf et des voies optiques - sans précision'),('9510','Injury oculomotor nerve','Traumatisme nerf moteur oculaire commun'),('9511','Injury trochlear nerve','Traumatisme nerf pathétique'),('9512','Injury trigeminal nerve','Traumatisme nerf trijumeau'),('9513','Injury abducens nerve','Traumatisme nerf moteur oculaire externe'),('9514','Injury to facial nerve','Traumatisme nerf facial'),('9515','Injury to acoustic nerve','Traumatisme nerf auditif'),('9516','Injury accessory nerve','Traumatisme nerf spinal'),('9517','Injury hypoglossal nerve','Traumatisme nerf grand hypoglosse'),('9518','Injury cranial nerve NEC','Traumatisme, autres nerfs crâniens précisés'),('9519','Injury cranial nerve NOS','Traumatisme, nerf crânien - sans précision'),('9522','Lumbar spinal cord injur','Traumatisme moelle épinière, sans signes lésion vertébrale, lomb'),('9523','Sacral spinal cord injur','Traumatisme moelle épinière, sans signes lésion vertébrale, sacr'),('9524','Cauda equina injury','Traumatisme moelle épinière, sans signes lésion vertébrale, queu'),('9528','Spin cord inj-mult site','Traumatisme moelle épinière, sans signes lésion vertébrale, loca'),('9529','Spinal cord injury NOS','Traumatisme moelle épinière, sans signes lésion vertébrale, loca'),('9530','Cervical root injury','Traumatisme racine cervicale'),('9531','Dorsal root injury','Traumatisme racine thoracique'),('9532','Lumbar root injury','Traumatisme racine lombaire'),('9533','Sacral root injury','Traumatisme racine sacrée'),('9534','Brachial plexus injury','Traumatisme plexus brachial'),('9535','Lumbosacral plex injury','Traumatisme plexus lombo-sacré'),('9538','Mult nerve root/plex inj','Traumatisme des racines et des plexus rachidiens, localisations '),('9539','Inj nerve root/plex NOS','Traumatisme des racines et des plexus rachidiens, localisation n'),('9540','Inj cerv sympath nerve','Traumatisme du nerf sympathique cervical'),('9541','Inj sympath nerve NEC','Traumat. aut. nerfs tronc'),('9548','Injury trunk nerve NEC','Trauma. aut. nerfs tronc'),('9549','Injury trunk nerve NOS','Trauma. aut. nerfs tronc'),('9550','Injury axillary nerve','Traumatisme, nerf circonflexe'),('9551','Injury median nerve','Traumatisme, nerf médian'),('9552','Injury ulnar nerve','Traumatisme, nerf cubital'),('9553','Injury radial nerve','Traumatisme, nerf radial'),('9554','Inj musculocutan nerve','Traumatisme, nerf muculo-cutané du bras'),('9555','Inj cutan senso nerv/arm','Traumatisme, nerfs cutanés du membre supérieur'),('9556','Injury digital nerve','Traumatisme, nerfs collatéraux palmaires'),('9557','Inj nerve shldr/arm NEC','Traumatisme, aut. nerfs précisés ceinture scapulaire et membre s'),('9558','Inj mult nerve shldr/arm','Traumatisme nerfs multiples ceinture scapulaire et membre supéri'),('9559','Inj nerve shldr/arm NOS','Traum. nerfs périphér. ceinture scapulaire et membre sup. - sans'),('9560','Injury sciatic nerve','Traumatisme nerf grand sciatique'),('9561','Injury femoral nerve','Traumatisme nerf crural'),('9562','Inj posterior tib nerve','Traumatisme nerf tibial postérieur'),('9563','Injury peroneal nerve','Traumatisme nerf sciatique poplité externe'),('9564','Inj cutan senso nerv/leg','Traumatisme nerfs cutanés du membre inférieur'),('9565','Inj nerve pelv/leg NEC','Traumatisme autres nerfs précisés ceinture pelvienne et membre i'),('9568','Inj mult nerve pelv/leg','Traumatisme nerfs multiples ceinture pelvienne et membre inférie'),('9569','Inj nerve pelv/leg NOS','Traum. nerfs périphér. ceinture pelvienne et membre inférieur - '),('9570','Inj superf nerv head/nck','Traumatisme des nerfs superficiels de la tête et du cou'),('9571','Injury to nerve NEC','Traumatisme autres nerfs précisés'),('9578','Injury to mult nerves','Traumatisme de nerfs multiples dans plusieurs parties du corps'),('9579','Injury to nerve NOS','Traumatisme de nerfs autres et sans précision, localisation non '),('9580','Air embolism','Embolie gazeuse'),('9581','Fat embolism','Embolie graisseuse'),('9582','Secondary/recur hemorr','Hémorragie secondaire ou récidivante'),('9583','Posttraum wnd infec NEC','Infection post-traumatique d\'une plaie, non classée ailleurs'),('9584','Traumatic shock','Choc traumatique'),('-',NULL,NULL),('9585','Traumatic anuria','Anurie traumatique'),('9586','Volkmann\'s isch contract','Contracture ischémique de volkmann'),('9587','Traum subcutan emphysema','Emphysème sous-cutané d\'origine traumatique'),('9588','Early complic trauma NEC','Autres complications précoces des traumatismes'),('9592','Shldr/upper arm inj NOS','Traumatismes, autres et sans précision, épaule et bras'),('9593','Elb/forearm/wrst inj NOS','Traumatismes, autres et sans précision, coude, avant-bras et poi'),('9594','Hand injury NOS','Traumatismes, autres et sans précision, main'),('9595','Finger injury NOS','Traumatismes, autres et sans précision, doigt'),('9596','Hip & thigh injury NOS','Traumatismes, autres et sans précision, hanche et cuisse'),('9597','Lower leg injury NOS','Traumatismes, autres et sans précision, genou, jambe, cheville e'),('9598','Injury mlt site/site NEC','Traum.aut.et sai aut.local.précis., y compris local.mult. sauf 9'),('9599','Injury-site NOS','Traumatismes, autres et sans précision, localisation non précisé'),('9600','Poisoning-penicillins','Intoxication, pénicillines'),('9601','Pois-antifungal antibiot','Intoxication, antibiotiques antifongiques'),('9602','Poison-chloramphenicol','Intoxication, groupe du chloramphénicol'),('9603','Pois-erythromyc/macrolid','Intoxication, érythromycine et autres macrolides'),('9604','Poisoning-tetracycline','Intoxication, groupe de la tétracycline'),('9605','Pois-cephalosporin group','Intoxication, groupe de la céphalosporine'),('9606','Pois-antimycobac antibio','Intoxication, antibiotiques antimycobactériens'),('9607','Pois-antineop antibiotic','Intoxication, antibiotiques antinéoplasiques'),('9608','Poisoning-antibiotic NEC','Intoxication par antibiotiques - autres'),('9609','Poisoning-antibiotic NOS','Intoxication par antibiotiques - sans précision'),('9610','Poisoning-sulfonamides','Intoxication, sulfamides'),('9611','Pois-arsenic anti-infec','Intoxication, arsénicaux anti-infectieux'),('9612','Pois-heav met anti-infec','Intoxication, métaux lourds anti-infectieux'),('9613','Pois-quinoline/hydroxyqu','Intoxication, quinoléine et hydroxyquinoléine et leurs dérivés, '),('9614','Poisoning-antimalarials','Intoxication, antipaludiques et médicam. agissant sur aut. proto'),('9615','Pois-antiprotoz drug NEC','Intoxication, autres médicaments antiprotozoaires'),('9616','Poisoning-anthelmintics','Intoxication, anthelmintiques'),('9617','Poisoning-antiviral drug','Intoxication, médicament antiviral'),('9618','Pois-antimycobac drg NEC','Intoxication, autres médicaments antimycobactériens'),('9619','Pois-anti-infect NEC/NOS','Intoxication, médicaments anti-infectieux - autres et sans préci'),('9620','Pois-corticosteroids','Intoxication, corticosteroïdes'),('9621','Poisoning-androgens','Intoxication, androgènes et substances anabolisantes apparentées'),('9622','Poisoning-ovarian hormon','Intoxication, hormones ovariennes et dérivés synthétiques'),('9623','Poison-insulin/antidiab','Intoxication, insuline et autres agents antidiabétiques'),('9624','Pois-ant pituitary horm','Intoxication, hormones antéhypophysaires'),('9625','Pois-post pituitary horm','Intoxication, hormones posthypophysaires'),('9626','Poisoning-parathyroids','Intoxication, hormones et dérivés parathyroïdiens'),('9627','Poisoning-thyroid/deriv','Intoxication, hormones et dérivés thyroïdiens'),('9628','Poison-antithyroid agent','Intoxication, agents antithyroïdiens'),('9629','Poisoning hormon NEC/NOS','Intoxication, hormones et substituts synthétiques - autres et sa'),('9630','Pois-antiallrg/antiemet','Intoxication par médicaments antiallergiques et antiémétiques, s'),('9631','Pois-antineopl/immunosup','Intoxication par médicaments antinéoplasiques et immunosuppresse'),('9632','Poisoning-acidifying agt','Intoxication par agents acidifiants'),('9633','Poisoning-alkalizing agt','Intoxication par agents alcalisants'),('9634','Poisoning-enzymes NEC','Intoxication par enzymes, non classés ailleurs'),('9635','Poisoning-vitamins NEC','Intoxication par vitamines, non classées ailleurs'),('9638','Poisoning-system agt NEC','Intoxication par agents à action générale - autres'),('9639','Poisoning-system agt NOS','Intoxication par agents à action générale - sans précision'),('9640','Poisoning-iron/compounds','Intoxication par le fer et ses composés'),('9641','Poison-liver/antianemics','Intoxication par extraits hépatiques et autres agents antianémiq'),('9642','Poisoning-anticoagulants','Intoxication par anticoagulants'),('9643','Poisoning-vitamin k','Intoxication par vitamine k (ménadione)'),('9644','Poison-fibrinolysis agnt','Intoxication par médicaments affectant la fibrinolyse'),('9645','Poisoning-coagulants','Intoxication par antagonistes des anticoagulants et autres coagu'),('9646','Poisoning-gamma globulin','Intoxication par gammaglobulines'),('9647','Poisoning-blood product','Intoxication par agents agissant sur le sang naturel et ses cons'),('9648','Poisoning-blood agt NEC','Intoxication par agents agissant principal. sur constituants san'),('9649','Poisoning-blood agt NOS','Intoxication par agents agissant principal. sur constituants san'),('9651','Poisoning-salicylates','Intoxication par salicylés'),('9654','Pois-arom analgesics NEC','Intoxication par analgésiques aromatiques, non classés ailleurs'),('9655','Poisoning-pyrazole deriv','Intoxication par dérivés pyrazolés'),('9657','Pois-no-narc analges NEC','Intoxication par autres analgésiques non narcotiques'),('9658','Pois-analges/antipyr NEC','Intoxication par analgésiques, antipyrétiques et antirhumatismau'),('9659','Pois-analges/antipyr NOS','Intox. par analgésiques, antipyrétiques, antirhumatismaux - sans'),('9660','Poison-oxazolidine deriv','Intoxication par dérivés de l\'oxazolidine'),('9661','Poison-hydantoin derivat','Intoxication par dérivés de l\'hydantoine'),('9662','Poisoning-succinimides','Intoxication par succinimides'),('9663','Pois-anticonvul NEC/NOS','Intoxication par anticonvulsivants - autres ou non précisés, sau'),('9664','Pois-anti-parkinson drug','Intoxication par médicaments antiparkinsoniens'),('9670','Poisoning-barbiturates','Intoxication par barbituriques'),('9671','Poisoning-chloral hydrat','Intoxication par groupe de l\'hydrate de chloral'),('9672','Poisoning-paraldehyde','Intoxication par paraldéhyde'),('9673','Poisoning-bromine compnd','Intoxication par composés bromés'),('9674','Poisoning-methaqualone','Intoxication par méthaqualone et ses composés'),('9675','Poisoning-glutethimide','Intoxication groupe du glutéthimide'),('9676','Poison-mix sedative NEC','Intoxication par sédatifs mixtes, non classés ailleurs'),('9678','Pois-sedative/hypnot NEC','Intoxication par sédatifs et hypnotiques - autres'),('9679','Pois-sedative/hypnot NOS','Intoxication par sédatifs et hypnotiques - sans précision'),('9680','Pois-cns muscle depress','Intoxication par dépresseurs syst.nerv.centr. agissant sur tonus'),('9681','Poisoning-halothane','Intoxication halothane'),('9682','Poison-gas anesthet NEC','Intoxication par autres gaz anesthésiques'),('9683','Poison-intraven anesthet','Intoxication par anesthésiques intraveineux'),('9684','Pois-gen anesth NEC/NOS','Intoxication par anesthésiques généraux - autres et non précisés'),('9685','Surfce-topic/infilt anes','Intoxication par anesthésiques surface ou utilisés en infiltrati'),('9686','Pois-nerve/plex-blk anes','Intoxication par anesthésiques agissant sur plexus nerveux/nerfs'),('9687','Poison-spinal anesthetic','Intoxication par rachianesthésie'),('9689','Pois-local anest NEC/NOS','Intoxication par anesthésies locales - autres ou non précisées'),('9691','Pois-phenothiazine tranq','Intoxication par tranquillisants à base de phénothiazine'),('9692','Pois-butyrophenone tranq','Intoxication par tranquillisants à base de butyrophénone'),('9693','Poison-antipsychotic NEC','Intoxication par aut. psycholeptiques, neuroleptiques et tranqui'),('9694','Pois-benzodiazepine tran','Intoxication par tranquillisants à base de benzodiazépine'),('9695','Poison-tranquilizer NEC','Intoxication par agents psychotropes, autres tranquillisants'),('9696','Poisoning-hallucinogens','Intoxication par psychodysleptiques (hallucinogènes)'),('9698','Poison-psychotropic NEC','Intoxication par autres produits psychotropes'),('9699','Poison-psychotropic NOS','Intoxication par agents psychotropes - sans précision'),('9700','Poisoning-analeptics','Intoxication par analeptiques'),('9701','Poison-opiate antagonist','Intoxication par antagonistes des opiacés'),('9709','Pois-cns stimulant NOS','Intoxication par stimulants du système nerveux central - sans pr'),('9710','Pois-parasympathomimetic','Intoxication par parasymphatomimétiques (cholinergiques)'),('9711','Pois-parasympatholytics','Intox.par parasymphatol.(anticholinerg.et antimusc.) et spasmoly'),('9712','Poison-sympathomimetics','Intoxication par sympathomimétiques (adrénergiques)'),('9713','Poisoning-sympatholytics','Intoxication par sympatholytiques (antiadrénergiques)'),('9719','Pois-autonomic agent NOS','Intox. par médicaments agissant essent. sur syst. nerv. végét. -'),('9720','Pois-card rhythm regulat','Intoxication par régulateurs du rythme cardiaque'),('9721','Poisoning-cardiotonics','Intoxication par glucosides cardiotoniques et drogues d\'action s'),('9722','Poisoning-antilipemics','Intoxication par médicaments antilipémiants et antisclérosants'),('9723','Pois-ganglion block agt','Intoxication par produits ganglioplégiques'),('9724','Pois-coronary vasodilat','Intoxication par vasodilatateurs coronariens'),('9725','Poison-vasodilator NEC','Intoxication par autres vasodilateurs'),('9726','Pois-antihyperten agent','Intoxication par autres agents hypotenseurs'),('9727','Poison-antivaricose drug','Intoxication par médicaments antivariqueux, y compris les agents'),('9728','Poison-capillary act agt','Intoxication par médicaments agissant sur les capillaires'),('9729','Pois-cardiovasc agt NEC','Intox. produits agiss. essent. sur app. cardio-vasc. - autres et'),('9730','Pois-antacid/antigastric','Intoxication par médicaments antiacides et inhibant la sécrétion'),('9731','Pois-irritant cathartics','Intoxication par laxatifs irritants'),('9732','Pois-emollient cathartic','Intoxication par laxatifs émollients'),('9733','Poisoning-cathartic NEC','Intoxication par autres laxatifs, y compris médic. pour l\'atonie'),('9734','Poisoning-digestants','Intoxication par produits facilitant la digestion'),('9735','Poisoning-antidiarrh agt','Intoxication par médicaments antidiarrhéiques'),('9736','Poisoning-emetics','Intoxication par produits émétiques'),('9738','Poisoning-gi agents NEC','Intox. par agents agissant essentiel. sur l\'appareil gastro-inte'),('9739','Poisoning-gi agent NOS','Intox. agents agissant essentiellement sur app. gastro-intestina'),('9740','Pois-mercurial diuretics','Intoxication par diurétiques mercuriels'),('9741','Pois-purine diuretics','Intoxication par diurétiques xanthiques'),('9742','Pois-h2co3 anhydra inhib','Intoxication par médicaments inhibiteurs de l\'anhydrase carboniq'),('9743','Poisoning-saluretics','Intoxication par salidiurétiques'),('9744','Poisoning-diuretics NEC','Intoxication par autres diurétiques'),('9745','Pois-electro/cal/wat agt','Intoxication pr prod.agissant sur l\'équilibre électrolytique,cal'),('9746','Poison-mineral salts NEC','Intoxication par autres sels minéraux, non classés ailleurs'),('9747','Pois-uric acid metabol','Intoxication par médicaments agissant sur métabolisme de l\'acide'),('9750','Poisoning-oxytocic agent','Intoxication par produits ocytociques'),('9751','Pois-smooth muscle relax','Intoxication par produits spasmolytiques'),('9752','Pois-skelet muscle relax','Intoxication par produits myorelaxants'),('9753','Poison-muscle agent NEC','Intoxication par produits autres et non précisés, agissant sur l'),('9754','Poisoning-antitussives','Intoxication par produits antitussifs'),('9755','Poisoning-expectorants','Intoxication par produits expectorants'),('9756','Pois-anti-cold drugs','Intoxication par médicaments contre le rhume banal'),('9757','Poisoning-antiasthmatics','Intoxication par médicaments antiasthmatiques'),('9758','Pois-respir drug NEC/NOS','Intoxication par médic. aut. et non précis., agissant sur app. r'),('9760','Pois-local anti-infect','Intox. par produits anti-infectieux et anti-inflammat. locaux (p'),('9761','Poisoning-antipruritics','Intoxication par produits antiprurigineux (peau, muqueuses)'),('9762','Pois-loc astring/deterg','Intoxication par produits astringents et détergents locaux (peau'),('9763','Pois-emol/demul/protect','Intoxication par produits émollients, calmants et protecteurs (p'),('9764','Poison-hair/scalp prep','Intox. par kératolytiques, kératoplastiques, aut. médicam. et pr'),('9765','Pois-eye anti-infec/drug','Intoxication par médic. anti-infectieux et autres utilisés en op'),('9766','Poison-ent preparation','Intoxication par prépar. anti-infectieuses et autres utilisées e'),('9767','Pois-topical dental drug','Intoxication par produits topiques dentaires'),('9768','Pois-skin/membr agnt NEC','Intox. produits agissant essentiellement sur la peau et les muqu'),('9769','Pois-skin/membr agnt NOS','Intoxi.produits agissant essentiel. sur la peau et muqueuses - s'),('9770','Poisoning-dietetics','Intoxication par médicaments diététiques'),('9771','Poison-lipotropic drugs','Intoxication par médicaments lipotropes'),('9772','Poisoning-antidotes NEC','Intoxication par médicaments antidotes, chélateurs non classés a'),('9773','Poison-alcohol deterrent','Intoxication par produits de dissuasion de l\'alcool'),('9774','Pois-pharmaceut excipien','Intoxication par médicaments auxiliaires pharmaceutiques'),('9778','Poison-medicinal agt NEC','Intoxication par autres produits et médicaments'),('9779','Poison-medicinal agt NOS','Intoxication par médicaments - sans précision'),('9780','Poisoning-bcg vaccine','Intoxication par vaccin bcg'),('9781','Pois-typh/paratyph vacc','Intoxication par vaccin antityphoïdique et paratyphoïdique'),('9782','Poisoning-cholera vaccin','Intoxication par vaccin anticholérique'),('9783','Poisoning-plague vaccine','Intoxication par vaccin antipesteux'),('9784','Poisoning-tetanus vaccin','Intoxication par vaccin antitétanique'),('9785','Pois-diphtheria vaccine','Intoxication par vaccin antidiphtérique'),('9786','Pois-pertussis vaccine','Intox. par vaccin anticoquelucheux, et ass. vaccinales à composa'),('9788','Pois-bact vaccin NEC/NOS','Intoxication par vaccins antibactériens - autres et non précisés'),('9789','Pois-mix bacter vaccines','Intox. par vaccin avec associations vaccinales bactér.'),('9790','Poison-smallpox vaccine','Intoxication par vaccin antivariolique'),('9791','Poison-rabies vaccine','Intoxication par vaccin antirabique'),('9792','Poison-typhus vaccine','Intoxication par vaccin antityphique'),('9793','Pois-yellow fever vaccin','Intoxication par vaccin anti-amaril'),('9794','Poisoning-measles vaccin','Intoxication par vaccin antirougeoleux'),('9795','Pois-poliomyelit vaccine','Intoxication par vaccin antipoliomyélitique'),('9796','Pois-viral/rick vacc NEC','Intoxication par antivirus et antirickettsies - autres et non pr'),('9797','Poisoning-mixed vaccine','Intox. vaccins mixtes, antivir., antiricketts., antibact.'),('9799','Pois-vaccine/biolog NEC','Intoxication par vaccins et substances biologiques - autres et n'),('9800','Toxic eff ethyl alcohol','Effets toxiques de l\'alcool éthylique'),('9801','Toxic eff methyl alcohol','Effets toxiques de l\'alcool méthylique'),('9802','Toxic eff isopropyl alc','Effets toxiques de l\'alcool isopropylique'),('9803','Toxic effect fusel oil','Effets toxiques de l\'huile de fusel'),('9808','Toxic effect alcohol NEC','Effets toxiques de l\'alcool - autres'),('9809','Toxic effect alcohol NOS','Effets toxiques de l\'alcool - sans précision'),('981','Toxic eff petroleum prod','Effets toxiques du pétrole et ses dérivés'),('9820','Toxic effect benzene','Effets toxiques du benzène et homologues'),('9821','Toxic eff carbon tetrach','Effets toxiques du tétrachlorure de carbone'),('9822','Toxic eff carbon disulfi','Effets toxiques du sulfure de carbone'),('9823','Tx ef cl-hydcarb slv NEC','Effets toxiques d\'aut.hydrocarbures chlorés utilisés comme solva'),('9824','Toxic effect nitroglycol','Effets toxiques du nitroglycérol'),('9828','Toxic eff nonpetrol solv','Effets toxiques de solvants non dérivés du pétrole - autres'),('9830','Tox eff corrosive aromat','Effets toxiques des produits aromatiques corrosifs'),('9831','Toxic effect acids','Effets toxiques des acides'),('9832','Toxic eff caustic alkali','Effets toxiques des bases caustiques'),('9839','Toxic effect caustic NOS','Effets toxiques de produit caustique - sans précision'),('9840','Tx eff inorg lead compnd','Effets toxiques de composés inorganiques du plomb'),('9841','Tox eff org lead compnd','Effets toxiques de composés organiques du plomb'),('9848','Tox eff lead compnd NEC','Effets toxiques du plomb et ses composés (y compris les fumées) '),('9849','Tox eff lead compnd NOS','Effets toxiques du plomb et ses composés (y compris fumées) - sa'),('9850','Toxic effect mercury','Effets toxiques du mercure et ses composés'),('9851','Toxic effect arsenic','Effets toxiques de l\'arsenic et ses composés'),('9852','Toxic effect manganese','Effets toxiques de manganèse et ses composés'),('9853','Toxic effect beryllium','Effets toxiques du béryllium et ses composés'),('9854','Toxic effect antimony','Effets toxiques de l\'antimoine et ses composés'),('9855','Toxic effect cadmium','Effets toxiques du cadmium et ses composés'),('9856','Toxic effect chromium','Effets toxiques du chrome'),('9858','Toxic effect metals NEC','Effets toxiques d\'autres métaux - autres'),('9859','Toxic effect metal NOS','Effets toxiques d\'autres métaux - sans précision'),('986','Tox eff carbon monoxide','Effets toxiques de l\'oxyde de carbone'),('9870','Toxic eff liq petrol gas','Effets toxiques de gaz liquéfiés du pétrole'),('9871','Tox ef hydrocarb gas NEC','Effets toxiques d\'autres hydrocarbures gazeux'),('9872','Toxic eff nitrogen oxide','Effets toxiques d\'oxyde azotique'),('9873','Toxic eff sulfur dioxide','Effets toxiques d\'anhydride sulfureux'),('9874','Toxic effect freon','Effets toxiques du fréon'),('9875','Tox eff lacrimogenic gas','Effets toxiques de gaz lacrymogène'),('9876','Toxic eff chlorine gas','Effets toxiques du chlore gazeux'),('9877','Tox eff hydrocyan acd gs','Effets toxiques de l\'acide cyanhydrique (gaz)'),('9878','Toxic eff gas/vapor NEC','Effets toxiques d\'autres gaz, fumées ou vapeurs - autres'),('9879','Toxic eff gas/vapor NOS','Effets toxiques d\'autres gaz, fumées ou vapeurs - sans précision'),('9880','Toxic eff fish/shellfish','Effets toxiques de poissons et coquillages'),('9881','Toxic effect mushrooms','Effets toxiques de champignons'),('9882','Tox eff berry/plant NEC','Effets toxiques de baies et autres plantes'),('9888','Tox eff noxious food NEC','Effets toxiques de substances nocives utilisées comme aliments -'),('9889','Tox eff noxious food NOS','Effets tox. de substances nocives utilisées comme aliments - san'),('9890','Toxic effect cyanides','Effets tox.aut.subst.essent.n-médicin.orig.acide cyanhydr.et cya'),('9891','Toxic effect strychnine','Effets tox. aut. subst. essent. n. médicin. origine, strychnine '),('9892','Tox eff chlor hydrocarb','Effets tox. aut. subst. essent. non médicin. origine, hydrocarbu'),('9893','Tox eff organphos/carbam','Effets tox. aut. subst. essent. non médicin. origine, organoph. '),('9894','Toxic eff pesticides NEC','Effets tox. aut. subst. essent. non médicin. origine,aut. pestic'),('9895','Toxic effect venom','Effets toxiques autres substances essentiell. non médicinales à '),('9896','Toxic eff soap/detergent','Effets tox. aut. subst. essent. non médicinales, savons et déter'),('9897','Tox eff aflatox/mycotox','Effets tox. aut. subst. essent. n.médicinales, aflatoxine et aut'),('9899','Tox eff nonmed subst NOS','Effets tox. aut. subst. essent. non médicinales à l\'origine - sa'),('990','Effects radiation NOS','Autres maladies vénériennes, chancre mou'),('9910','Frostbite of face','Gelure du visage'),('9911','Frostbite of hand','Gelure des mains'),('9912','Frostbite of foot','Gelure des pieds'),('9913','Frostbite NEC/NOS','Gelure de sièges autres ou non précisés'),('9914','Immersion foot','Effets du froid, pieds de tranchées'),('9915','Chilblains','Engelures'),('9916','Hypothermia','Hypothermie'),('9918','Effect reduced temp NEC','Effets du froid - autres'),('9919','Effect reduced temp NOS','Effets du froid - sans précision'),('9920','Heat stroke & sunstroke','Coup de chaleur et coup de soleil'),('9921','Heat syncope','Syncope due à la chaleur'),('9922','Heat cramps','Crampes dues à la chaleur'),('9923','Heat exhaust-anhydrotic','Épuisement dû à la chaleur et à la perte hydrique'),('9924','Heat exhaust-salt deple','Épuisement dû à la chaleur et à la perte saline'),('9925','Heat exhaustion NOS','Épuisement dû à la chaleur - sans précision'),('9926','Heat fatigue, transient','Fatigue transitoire due à la chaleur'),('9927','Heat edema','Oedème dû à la chaleur'),('9928','Heat effect NEC','Autres effets de la chaleur'),('9929','Heat effect NOS','Effets de la chaleur et de la lumière - sans précision'),('9930','Barotrauma, otitic','Barotraumatisme de l\'oreille'),('9931','Barotrauma, sinus','Barotraumatisme des sinus'),('9932','Eff high altitud NEC/NOS','Effets de l\'altitude - autres et non précisés'),('9933','Caisson disease','Maladie des caissons'),('9934','Eff air press by explos','Effets de la pression provoquée par une explosion'),('9938','Effect air pressure NEC','Effets de la pression atmosphérique - autres'),('9939','Effect air pressure NOS','Effets de la pression atmosphérique - sans précision'),('9940','Effects of lightning','Effets de la foudre'),('9941','Drowning/nonfatal submer','Submersion non mortelle et noyade'),('9942','Effects of hunger','Effets de la faim'),('9943','Effects of thirst','Effets de la soif'),('9944','Exhaustion-exposure','Épuisement dû aux intempéries'),('9945','Exhaustion-excess exert','Épuisement dû à un effort excessif'),('9946','Motion sickness','Mal des transports'),('9947','Asphyxiation/strangulat','Asphyxie et strangulation'),('9948','Effects electric current','Électrocution et effets non mortels du courant électrique, 940-9'),('9949','Effect external caus NEC','Effets d\'autres agents extérieurs - autres'),('9950','Other anaphylactic react','Choc anaphylactique'),('9951','Angioneurotic edema','Oedème angioneurotique'),('9953','Allergy, unspecified','Allergie - sans précision'),('9954','Shock due to anesthesia','Choc du à une anesthésie'),('9961','Malfunc vasc device/graf','Complic. de nature mécanique d\'autre prothèse, implantation ou g'),('9962','Malfun neuro device/graf','Complic. de nature mécanique de prothèse, implantation ou greffe'),('9971','Surg compl-heart','Complications cardiaques'),('9972','Surg comp-peri vasc syst','Complications vasculaires périphériques'),('9975','Surg compl-urinary tract','Complications urinaires'),('9982','Accidental op laceration','Perf.ou déchirure acc.relative à intervention chirurgicale sf 62'),('9984','FB left during procedure','Corps étranger laissé par erreur dans une plaie op.ou cavité du '),('9986','Persist postop fistula','Fistule postopératoire persistante'),('9987','Postop forgn subst react','Réaction tissulaire aiguë aux subs. étrang. laiss. accident. au '),('9989','Surgical complicat NOS','Compl.dues à des actes chirurgicaux, sai, non cl.aill.sauf 6694'),('9990','Generalized vaccinia','Complications dues à des soins médicaux, non cl. aill., vaccine '),('9991','Air embol comp med care','Compli.dues soins méd.nca embolie gaz.sauf 634à638-6346-6386-639'),('9992','Vasc comp med care NEC','Compli.dues à des soins méd.non cl.aill.aut.compli.vascul.sauf 9'),('9999','Complic med care NEC/NOS','Complic.dues à des soins méd.non classées ailleurs-sai sauf 990'),('V010','Cholera contact','Sujets en contact ou exposés aux maladies transmissibles - cholé'),('V011','Tuberculosis contact','Sujets en contact ou exposés aux maladies transmissibles - tuber'),('V012','Poliomyelitis contact','Sujets en contact ou exposés aux maladies transmissibles - polyo'),('V013','Smallpox contact','Sujets en contact ou exposés aux maladies transmissibles - vario'),('V014','Rubella contact','Sujets en contact ou exposés aux maladies transmissibles - rubéo'),('V015','Rabies contact','Sujets en contact ou exposés aux maladies transmissibles - rage'),('V016','Venereal dis contact','Sujets en contact ou exposés aux maladies transmissibles - malad'),('V019','Communic dis contact NOS','Sujets en contact ou exposés aux maladies transmissibles, sans p'),('V020','Cholera carrier','Sujets porteurs de germes ou susceptibles de l\'être - choléra'),('V021','Typhoid carrier','Sujets porteurs de germes ou susceptibles de l\'être - fièvre typ'),('V022','Amebiasis carrier','Sujets porteurs de germes ou susceptibles de l\'être - amibiase'),('V023','GI pathogen carrier NEC','Sujets porteurs de germes ou suscept.de l\'être-autres infections'),('V024','Diphtheria carrier','Sujets porteurs de germes ou susceptibles de l\'être - diphtérie'),('V027','Gonorrhea carrier','Sujets porteurs de germes ou susceptibles de l\'être - gonorrhée'),('V028','Venereal dis carrier NEC','Sujets porteurs de germes ou susceptibles de l\'être-autres-malad'),('V029','Carrier NEC','Sujets porteurs de germes ou susceptibles de l\'être-autres-infec'),('V030','Vaccin for cholera','Nécess. vaccin. et inocul.prophyl. contre mal. bact.-choléra san'),('V031','Vacc-typhoid-paratyphoid','Nécess. vaccin. et inocul.prophyl. contre mal. bact.-tab, sans a'),('V032','Vaccin for tuberculosis','Nécess. vaccin. et inocul.prophyl. contre mal. bact.-tuberculose'),('V033','Vaccin for plague','Nécess. vaccin. et inocul.prophyl. contre mal. bact.-peste'),('V034','Vaccin for tularemia','Nécess. vaccin. et inocul.prophyl. contre mal. bact.-tularémie'),('V035','Vaccin for diphtheria','Nécess. vaccin. et inocul.prophyl. contre mal. bact.-diphtérie, '),('V036','Vaccin for pertussis','Nécess. vaccin. et inocul.prophyl. contre mal. bact.-coqueluche,'),('V037','Tetanus toxoid inoculat','Nécess. vaccin. et inocul.prophyl. contre mal. bact.-anatoxine t'),('V039','Vaccin for bact dis NOS','Nécess. vaccin. et inocul.prophyl. contre mal. bact.-sans précis'),('V040','Vaccin for poliomyelitis','Nécess. vaccin. et inocul.prophyl. contre cert. mal. viral.-poli'),('V041','Vaccin for smallpox','Nécess. vaccin. et inocul.prophyl. contre cert. mal. viral.-vari'),('V042','Vaccin for measles','Nécess. vaccin. et inocul.prophyl. contre cert. mal. viral.-roug'),('V043','Vaccin for rubella','Nécess. vaccin. et inocul.prophyl. contre cert. mal. viral.-rubé'),('V044','Vaccin for yellow fever','Nécess. vaccin. et inocul.prophyl. contre cert. mal. viral.-fièv'),('V045','Vaccin for rabies','Nécess. vaccin. et inocul.prophyl. contre cert. mal. viral.-rage'),('V046','Vaccin for mumps','Nécess. vaccin. et inocul.prophyl. contre cert. mal. viral.-orei'),('V047','Vaccin for common cold','Nécess. vaccin. et inocul.prophyl. contre cert. mal. viral.-rhum'),('V050','Arbovirus enceph vaccin','Nécess. vaccin. inocul.prophyl.contre une seule mal.-encéph.vir.'),('V051','Vacc arboviral dis NEC','Nécess. vaccin. inocul.prophyl. contre une seule mal.-aut.mal.vi'),('V052','Vaccin for leishmaniasis','Nécess. vaccin. et inocul.prophyl. contre une seule mal.-leishma'),('V058','Vaccin for disease NEC','Nécess. vaccin. et inocul.prophyl. contre une seule mal.-autr. m'),('V059','Vaccin for singl dis NOS','Nécess. vaccin. et inocul.prophyl. contre une seule mal.-sans pr'),('V060','Vaccin for cholera + tab','Nécess. vaccin. et inocul.prophyl. ass.-choléra en ass. avec tab'),('V061','Vaccination for DTP-DTaP','Nécess. vaccin. et inocul.prophyl. ass.-diphtérie-tétanos-coquel'),('V062','Vaccin for dtp + tab','Nécess. vaccin. et inocul.prophyl. ass.-diphtérie-tétanos-coquel'),('V063','Vaccin for dtp + polio','Nécess. vaccin. inocul.prophyl. ass.-diphtérie-tétanos-coquel. a'),('V064','Vac-measle-mumps-rubella','Nécess. vaccin. et inocul.prophyl. ass.-rougeole-oreillons-rubéo'),('V068','Vac-dis combinations NEC','Nécess. vaccin. et inocul.prophyl. ass.-autres associations'),('V069','Vac-dis combinations NOS','Nécess. vaccin. et inocul.prophyl. ass.-vaccinations ass.- sans '),('V070','Prophylactic isolation','Isolement'),('V071','Desensitiza to allergens','Désensibilisation aux allergènes'),('V072','Prophylact immunotherapy','Immunothérapie prophylactique'),('V078','Prophyl or tx meas NEC','Autres mesures prophylactiques précisées'),('V079','Prophyl or tx meas NOS','Nécessité d\'isolement et d\'autres mesures prophylactiques - sans'),('V103','Hx of breast malignancy','Antécédents personnels de tumeurs malignes du sein'),('V119','Hx-mental disorder NOS','Antécédents personnels de troubles mentaux - sans précision'),('V121','Hx-nutrition deficiency','Antécédents personnels de troubles nutritionnels'),('V123','Hx-blood diseases','Antécédents personnels de maladies du sang et des organes hémato'),('V131','Hx-trophoblastic disease','Antécédents personnels d\'autres maladies, maladies trophoblastiq'),('V133','Hx-skin/subcutan tis dis','Antécédents personnels d\'autres maladies peau et tissu sous-cuta'),('V134','Hx of arthritis','Antécédents personnels d\'autres maladies, arthrite'),('V137','Hx-perinatal problems','Antécédents personnels d\'autres maladies, problèmes périnataux'),('V139','Hx of disease NOS','Antécédents personnels d\'autres maladies - sans précision'),('V140','Hx-penicillin allergy','Antécédents personnels d\'allergie aux agents médicinaux, pénicil'),('V141','Hx-antibiot allergy NEC','Antécédents personnels d\'allergie aux agents médicinaux, autres '),('V142','Hx-sulfonamides allergy','Antécédents personnels d\'allergie aux agents médicinaux, sulfami'),('V143','Hx-anti-infect allergy','Antécédents personnels d\'allergie aux agents médicinaux, aut.age'),('V144','Hx-anesthetic allergy','Antécédents personnels d\'allergie aux agents médicinaux, anesthé'),('V145','Hx-narcotic allergy','Antécédents personnels d\'allergie aux agents médicinaux, narcoti'),('V146','Hx-analgesic allergy','Antécédents personnels d\'allergie aux agents médicinaux, analgés'),('V147','Hx-vaccine allergy','Antécédents personnels d\'allergie aux agents médicinaux, sérum o'),('V148','Hx-drug allergy NEC','Antécédents personnels d\'allergie aux agents médicinaux - autres'),('V149','Hx-drug allergy NOS','Antécédents personnels d\'allergie aux agents médicinaux - sans p'),('V151','Hx-major cardiovasc surg','Aut.antéc.pers.pouvant affect.santé-chir.coeur et gros vaisseaux'),('V153','Hx of irradiation','Autres antécédents personnels pouvant affecter la santé, irradia'),('V156','Hx of poisoning','Autres antécédents personnels pouvant affecter la santé, empoiso'),('V157','Hx of contraception','Aut.antéc.pers.pouvant affecter la santé, contraception'),('V159','Hx-health hazard NOS','Autres antécédents personnels pouvant affecter la santé - sans p'),('V160','Family hx-gi malignancy','Antécédents familiaux de tumeurs malignes, appareil digestif'),('V161','Fm hx-trach/bronchog mal','Antécédents familiaux de tumeurs malignes, trachée, bronches et '),('V162','Fam hx-intrathoracic mal','Antéc.familiaux de tumeurs malignes, autr.organes resp.et intrat'),('V163','Family hx-breast malig','Antécédents familiaux de tumeurs malignes du sein'),('V166','Family hx-leukemia','Antécédents familiaux de tumeurs malignes, leucémies'),('V167','Fam hx-lymph neoplas NEC','Autres tumeurs malignes du syst. lymphatique et des org. hématop'),('V168','Family hx-malignancy NEC','Antécédents familiaux de tumeurs malignes - autres'),('V169','Family hx-malignancy NOS','Antécédents familiaux de tumeurs malignes - sans précision'),('V170','Fam hx-psychiatric cond','Antéc.famil.certaines maladies chroniques entraînant invalidité,'),('V171','Family hx-stroke','Antéc.famil.certaines mal.chroniques/invalidité, attaque apoplec'),('V172','Fam hx-neurolog dis NEC','Antéc.famil.certaines mal.chroniques/invalidité, autres maladies'),('V173','Fam hx-ischem heart dis','Antéc.famil.certaines mal.chroniques/invalidité, maladies ischém'),('V175','Family hx-asthma','Antéc.famil.certaines maladies chroniques entraînant invalidité,'),('V176','Fam hx-chr resp cond NEC','Antéc.famil.certaines maladies chroniques/invalidité, autres aff'),('V177','Family hx-arthritis','Antéc.famil.certaines maladies chroniques entraînant invalidité,'),('V180','Fam hx-diabetes mellitus','Antécédents familiaux, diabète sucré'),('V182','Family hx-anemia','Antécédents familiaux, anémie'),('V183','Fam hx-blood disord NEC','Antécédents familiaux, autres troubles sanguins'),('V184','Fm hx-intellect disablty','Antécédents familiaux, retard intellectuel (mental)'),('V187','Family hx-gu disease NEC','Antécédents familiaux, autres maladies génito-urinaires'),('V188','Fm hx-infect/parasit dis','Antécédents familiaux, maladies infectieuses'),('V189','Fam hx genet dis carrier','Antécédents familiaux de certaines autres affections précisées -'),('V190','Family hx-blindness','Antécédents familiaux, cécité ou perte de vision'),('V192','Family hx-deafness','Antécédents familiaux, surdité ou perte de l\'audition'),('V193','Family hx-ear disord NEC','Antécédents familiaux, autres atteintes de l\'oreille'),('V194','Family hx-skin condition','Antécédents familiaux, maladies de la peau'),('V195','Fam hx-congen anomalies','Antécédents familiaux, anomalies congénitales'),('V196','Family hx-allergic dis','Antécédents familiaux, troubles allergiques'),('V197','Consanguinity','Antécédents familiaux, consanguinité'),('V198','Family hx-condition NEC','Antécédents familiaux d\'autres affections - autres'),('V200','Foundling health care','Surveillance du nouveau-né ou de l\'enfant, nouveau-né abandonné'),('V201','Care of healthy chld NEC','Soins dispensés à un autre nouveau-né bien portant'),('V202','Routin child health exam','Surveillance du nouveau-né ou de l\'enfant, examen de santé de ro'),('V210','Rapid childhood growth','Période de croissance rapide de l\'enfance'),('V211','Puberty','États constitutionnels au cours du développement, puberté'),('V212','Adolescence growth NEC','Autres états constitutionnels de l\'adolescence'),('V218','Constit state in dev NEC','États constitutionnels au cours du développement - autres'),('V219','Constit state in dev NOS','États constitutionnels au cours du développement - sans précisio'),('V220','Supervis normal 1st preg','Surveillance d\'une première grossesse normale'),('V221','Supervis oth normal preg','Surveillance d\'autres grossesses normales'),('V222','Preg state, incidental','État de grossesse sai'),('V230','Preg w hx of infertility','Grossesse avec antécédents de stérilité'),('V231','Preg w hx-trophoblas dis','Grossesse avec antécédents de maladies trophoblastiques'),('V232','Preg w hx of abortion','Grossesse avec antécédents d\'avortement'),('V233','Grand multiparity','Surveillance de grossesse à haut risque, grande multipare'),('V235','Preg w poor reproduct hx','Grossesse avec d\'autres antécédents de problèmes procréatifs'),('V239','Suprv high-risk preg NOS','Grossesse à haut risque - sans précision'),('V240','Postpart care after del','Examen et soins du post-partum, immédiatement après l\'accoucheme'),('V241','Postpart care-lactation','Surveillance de l\'allaitement'),('V242','Rout postpart follow-up','Surveillance post-partum de routine'),('V252','Sterilization','Stérilisation'),('V253','Menstrual extraction','Extraction cataméniale'),('V258','Contraceptive mangmt NEC','Mesures contraceptives - autres'),('V259','Contraceptive mangmt NOS','Mesures contraceptives - sans précision'),('V260','Tuboplasty or vasoplasty','Tuboplastie ou vasoplastie après stérilisation'),('V261','Artificial insemination','Insémination artificielle'),('V269','Procreative mangmt NOS','Mesures procréatives - sans précision'),('V270','Deliver-single liveborn','Naissance unique, enfant vivant'),('V271','Deliver-single stillborn','Naissance unique, enfant mort-né'),('V272','Deliver-twins, both live','Naissance gémellaire, les jumeaux nés vivants'),('V273','Del-twins, 1 nb, 1 sb','Naissance gémellaire, l\'un des jumeaux né vivant, l\'autre mort-n'),('V274','Deliver-twins, both sb','Naissance gémellaire, les jumeaux mort-nés'),('V275','Del-mult birth, all live','Autre naissance multiple, tous les enfants nés vivants'),('V276','Del-mult brth, some live','Autre naissance multiple, certains enfants nés vivants'),('V277','Del-mult birth, all sb','Autre naissance multiple, tous les enfants morts-nés'),('V279','Outcome of delivery NOS','Résultat de l\'accouchement - sans précision'),('V280','Screening-chromosom anom','Dépistage d\'anomalies chromosomiques par amniocentèse'),('V281','Screen-alphafetoprotein','Dépistage d\'un taux élevé d\'alphafoetoprotéines dans le liquide '),('V282','Screen by amniocent NEC','Autres dépistages par amniocentèse'),('V283','Scr fetl malfrm-ultrasnd','Dépistages prénataux - dépistage de malformations par ultra-sons'),('V284','Screen-fetal retardation','Dépistage de retard de croissance foetale par ultra-sons'),('V285','Screen-isoimmunization','Dépistages prénataux - dépistage d\'iso-immunisation'),('V289','Antenatal screening NOS','Dépistages prénataux - sans précision'),('V301','Singl livebrn-before adm','Naissance unique, né avant l\'admission à l\'hôpital'),('V302','Single liveborn-nonhosp','Naissance unique, né hors du milieu hospitalier et non hospitali'),('V311','Twin, mate lb-before adm','Naissance gémellaire, autre jumeau étant né vivant, né avant adm'),('V312','Twin, mate lb-nonhosp','Naiss.gemell.autre jumeau né vivant, né hors milieu hospit.non h'),('V321','Twin, mate sb-before adm','Naissance gémellaire, autre jumeau étant mort-né, né avant admis'),('V322','Twin, mate sb-nonhosp','Naiss.gémell.autre jumeau mort-né, né hors milieu hospt.et non h'),('V331','Twin NOS-before admissn','Naissance gémellaire, sans précision, né avant admission à l\'hôp'),('V332','Twin NOS-nonhosp','Naiss.gémellaire, sans précision, né hors milieu hosp. et non ho'),('V341','Oth mult nb-before adm','Autres naiss.multipl.autres enfants nés vivants - né avant admis'),('V342','Oth multiple nb-nonhosp','Aut.naiss.mult.tous aut.enfants nés viv.-né hors milieu hosp.et '),('V351','Oth mult sb-before adm','Autre naiss.mult.autres enfants mort-nés, né avant admission à l'),('V352','Oth multiple sb-nonhosp','Autre naiss.mult.autres enfants mort-nés, né hors mil.hosp.non h'),('V361','Mult nb/sb-before adm','Aut.naiss.mult.cert. autres enfants nés vivants, aut.mort-nés, n'),('V362','Multiple nb/sb-nonhosp','Aut.nais.mult.cert.enfants n.vivants,aut.m-nés,nés hors hôp.et n'),('V371','Mult brth NOS-before adm','Autre naiss.multiple, sans précision, né avant admission à l\'hôp'),('V372','Mult birth NOS-nonhosp','Autre naiss.multiple, sans précis., né hors milieu hosp. et non '),('V391','Liveborn NOS-before adm','Enfants nés vivants en bonne santé, sans précis., né avant admis'),('V392','Liveborn NOS-nonhosp','Enf.nés vivants bonne santé,sans précis.,né hors mil.hosp.et non'),('V400','Problems with learning','Problèmes de l\'apprentissage'),('V401','Prob with communication','Problèmes de relation (langage y compris)'),('V402','Mental problems NEC','Autres problèmes mentaux'),('V409','Mental/behavior prob NOS','Problèmes mentaux ou problèmes du comportement - sans précision'),('V410','Problems with sight','Problèmes de la vue'),('V411','Eye problems NEC','Autres problèmes oculaires'),('V412','Problems with hearing','Problèmes de l\'audition'),('V413','Ear problems NEC','Autres problèmes de l\'oreille'),('V414','Voice production problem','Problèmes phoniques'),('V415','Smell and taste problem','Problèmes du goût et de l\'odorat'),('V416','Problem w swallowing','Problèmes de déglutition et de mastication'),('V417','Sexual function problem','Problèmes de la vie sexuelle'),('V418','Probl w special func NEC','Autres problèmes en rapport avec des fonctions spéciales'),('V419','Probl w special func NOS','Problèmes en rapport avec organes des sens et aut. fonct. spéc. '),('V420','Kidney transplant status','Organes et tissus remplacés par transplantation du rein'),('V421','Heart transplant status','Organes et tissus remplacés par transplantation du coeur'),('V422','Heart valve transplant','Organes et tissus remplacés par transplantation de la valvule ca'),('V423','Skin transplant status','Organes et tissus remplacés par transplantation de la peau'),('V424','Bone transplant status','Organes et tissus remplacés par transplantation des os'),('V425','Cornea transplant status','Organes et tissus remplacés par transplantation de la cornée'),('V426','Lung transplant status','Organes et tissus remplacés par transplantation du poumon'),('V427','Liver transplant status','Organes et tissus remplacés par transplantation du foie'),('V429','Transplant status NOS','Organes et tissus remplacés par transplantation - sans précision'),('V430','Eye replacement NEC','Organes ou tissus remplacés par d\'autres moyens, oeil'),('V431','Lens replacement NEC','Organes ou tissus remplacés par d\'autres moyens, cristallin'),('V433','Heart valve replac NEC','Organes ou tissus remplacés par d\'autres moyens, valvule cardiaq'),('V434','Blood vessel replac NEC','Organes ou tissus remplacés par d\'autres moyens, vaisseaux sangu'),('V435','Bladder replacement NEC','Organes ou tissus remplacés par d\'autres moyens, vessie'),('V437','Limb replacement NEC','Organes ou tissus remplacés par d\'autres moyens, membre(s)'),('V440','Tracheostomy status','Trachéostomie'),('V441','Gastrostomy status','Gastrostomie'),('V442','Ileostomy status','Iléostomie'),('V443','Colostomy status','Colostomie'),('V444','Enterostomy status NEC','Autres ouvertures artificielles du tube digestif'),('V446','Urinostomy status NEC','Autres ouvertures artificielles de l\'appareil urinaire'),('V447','Artificial vagina status','Vagin artificiel'),('V448','Artif open status NEC','Personne chez laquelle a été pratiqué un orifice artificiel - au'),('V449','Artif open status NOS','Personne chez laquelle a été pratiqué un orifice artificiel - sa'),('V452','Ventricular shunt status','Aut.états postop.présence moyen drainage du liq.céphalo-rachidie'),('V453','Intestinal bypass status','Aut. états postopérat., dérivation intestinale ou présence d\'une'),('V454','Arthrodesis status','Autres états postopératoires, arthrodèse'),('V460','Dependence on aspirator','Autres dépendances d\'appareils, aspirateur'),('V468','Machine dependence NEC','Autres dépendances d\'appareils, autres appareils'),('V469','Machine dependence NOS','Autres dépendances d\'appareils - sans précision'),('V470','Intern organ deficiency','Déficiences d\'organes internes'),('V471','Mech prob w internal org','Problèmes mécaniques et moteurs en rapport avec les organes inte'),('V472','Cardiorespirat probl NEC','Autres problèmes cardio-respiratoires'),('V473','Digestive problems NEC','Autres problèmes digestifs'),('V474','Urinary problems NEC','Autres problèmes urinaires'),('V475','Genital problems NEC','Autres problèmes génitaux'),('V479','Probl w internal org NOS','Autres problèmes en rapport avec les organes internes - sans pré'),('V480','Deficiencies of head','Déficiences en rapport avec la tête'),('V481','Deficiencies neck/trunk','Déficiences en rapport avec le cou et le tronc'),('V482','Mechanical prob w head','Problèmes mécaniques et moteurs en rapport avec la tête'),('V483','Mech prob w neck & trunk','Problèmes mécaniques et moteurs en rapport avec le cou et le tro'),('V484','Sensory problem w head','Problèmes sensoriels en rapport avec la tête'),('V485','Sensor prob w neck/trunk','Problèmes sensoriels en rapport avec le cou et le tronc'),('V486','Disfigurements of head','Défiguration'),('V487','Disfigurement neck/trunk','Détérioration du cou et du tronc'),('V488','Prob-head/neck/trunk NEC','Autres problèmes en rapport avec la tête, le cou et le tronc'),('V489','Prob-head/neck/trunk NOS','Problèmes en rapport avec la tête, le cou et le tronc - sans pré'),('V490','Deficiencies of limbs','Déficiences des membres'),('V491','Mechanical prob w limbs','Problèmes mécaniques en rapport avec les membres'),('V492','Motor problems w limbs','Problèmes moteurs en rapport avec les membres'),('V493','Sensory problems w limbs','Problémes sensoriels en rapport avec les membres'),('V494','Disfigurements of limbs','Détérioration des membres'),('V495','Limb problems NEC','Autres problèmes en rapport avec les membres'),('V499','Probl influ health NOS','Problèmes en rapport avec les membres, ou d\'autre type - sans pr'),('V500','Hair transplant','Intervention chirurgicale sans raison médicale, implant de cheve'),('V501','Plastic surgery NEC','Autres chirurgies plastiques pour des raisons esthétiques'),('V502','Routine circumcision','Circoncision rituelle et de routine'),('V503','Ear piercing','Intervention chirurgicale sans raison médicale, perçage du lobe '),('V508','Elective surgery NEC','Intervention chirurgicale sans raison médicale - autres'),('V509','Elective surgery NOS','Intervention chirurgicale sans raison médicale - sans précision'),('V520','Fitting artificial arm','Mise en place/ajust.appa.de prothèse, bras artificiel (total)(pa'),('V521','Fitting artificial leg','Mise en place/ajust.appa.de prothèse, jambe artificielle (totale'),('V522','Fitting artificial eye','Mise en place/ajust.appa.de prothèse, oeil artificiel'),('V523','Fitting dental prosthes','Mise en place/ajust.appa.de prothèse, prothèse dentaire'),('V524','Fit/adj breast pros/impl','Mise en place/ajust.appa.de prothèse, prothèse du sein'),('V528','Fitting prosthesis NEC','Mise en place/ajust.appa.de prothèse, autres appareils de prothè'),('V529','Fitting prosthesis NOS','Mise en place et ajustement d\'appareils de prothèse - sans préci'),('V531','Fit contact lens/glasses','Mise en place/ajust.autres appareils, lunettes et verres de cont'),('V532','Adjustment hearing aid','Mise en place et ajustements autres appareils, appareil auditif'),('V534','Fit orthodontic device','Mise en place et ajustement autres appareils - appareils orthodo'),('V536','Fitting urinary devices','Mise en place et ajustement autres appareils, prothèse urinaire'),('V537','Fit orthopedic devices','Mise en place et ajustement autres appareils - appareil orthopéd'),('V538','Adjustment of wheelchair','Mise en place et ajustement autres appareils, fauteuil roulant'),('V549','Orthopedic aftercare NOS','Autres surveillances orthopédiques - sans précision'),('V550','Atten to tracheostomy','Surveillance des orifices artificiels, trachéostomie'),('V551','Atten to gastrostomy','Surveillance des orifices artificiels, gastrostomie'),('V552','Atten to ileostomy','Surveillance des orifices artificiels, iléostomie'),('V553','Atten to colostomy','Surveillance des orifices artificiels, colostomie'),('V554','Atten to enterostomy NEC','Surveillance des orifices artificiels, aut. orifices artificiels'),('V555','Atten to cystostomy','Surveillance des orifices artificiels, cystostomie'),('V556','Atten to urinostomy NEC','Surveillance des orifices artificiels, aut. orifices artif. appa'),('V557','Atten artificial vagina','Surveillance des orifices artificiels, vagin artificiel'),('V558','Attn to artif open NEC','Surveillance des orifices artificiels - autres'),('V559','Attn to artif open NOS','Surveillance des orifices artificiels - sans précision'),('V560','Renal dialysis encounter','Surveillance, dialyse extra-corporelle'),('V568','Dialysis encounter, NEC','Surveillance de dialyse intermittente, autres dialyses'),('V570','Breathing exercises','Surveillance impliquant la rééducation, exercices de respiration'),('V571','Physical therapy NEC','Surveillance impliquant la rééducation, autres thérapies physiqu'),('V573','Speech-language therapy','Surveillance impliquant la rééducation, rééducation du langage'),('V574','Orthoptic training','Surveillance impliquant la rééducation, éducation de la vision'),('V579','Rehabilitation proc NOS','Surveillance impliquant la rééducation - sans précision'),('V580','Radiotherapy encounter','Surveillance, séance de radiothérapie'),('V582','Blood transfusion, no dx','Surveillance, transfusion sanguine sans mention de diagnostic'),('V585','Orthodontics aftercare','Surveillance, orthodontie'),('V589','Aftercare NOS','Surveillance - sans précision'),('V591','Skin donor','Donneurs, peau'),('V592','Bone donor','Donneurs, os'),('V593','Bone marrow donor','Donneurs, moelle osseuse'),('V594','Kidney donor','Donneurs, rein'),('V595','Cornea donor','Donneurs, cornée'),('V598','Org or tissue donor NEC','Donneurs, autres organes ou tissus précisés'),('V599','Org or tissue donor NOS','Donneurs - sans précision'),('V600','Lack of housing','Absence de domicile fixe'),('V601','Inadequate housing','Domicile inadéquat'),('V602','Economic problem','Ressources matérielles insuffisantes'),('V603','Person living alone','Personne vivant seule'),('V604','No family able to care','Sit.où aucun aut.membre famille ne peut s\'occuper pers.conc., sa'),('V605','Holiday relief care','Soins dispensés pour aider les familles pendant les vacances'),('V606','Person in resident inst','Personne vivant dans une institution'),('V609','Housing/econo circum NOS','Raisons ménagères et économiques, conditions de l\'habitat - sans'),('V613','Problem w aged parent','Problèmes avec parents âgés ou parenté par alliance'),('V615','Multiparity','Multiparité'),('V617','Unwanted pregnancy NEC','Autres grossesses non désirées'),('V618','Family circumstances NEC','Autres raisons familiales - autres'),('V619','Family circumstance NOS','Autres raisons familiales - sans précision'),('V620','Unemployment','Chômage'),('V621','Adverse eff-work environ','Effets nocifs du milieu professionnel'),('V623','Educational circumstance','Problème de l\'éducation'),('V624','Social maladjustment','Inadaptation sociale'),('V625','Legal circumstances','Circonstances juridiques'),('V629','Psychosocial circum NOS','Autres raisons psycho-sociales - sans précision'),('V630','Home remote from hospitl','Domicile éloigné d\'un hôpital ou d\'un autre service de santé'),('V631','No medical serv in home','Impossibilité de soins médicaux à domicile'),('V632','Wait adm to oth facility','Personne sur la liste d\'attente pour admission dans un autre éta'),('V638','No med facilities NEC','Absence de conditions permettant les soins - autres'),('V639','No med facilities NOS','Absence de conditions permettant les soins - sans précision'),('V641','No proc/contraindication','Acte chirurgical ou autre non réalisé en raison d\'une contre-ind'),('V642','No proc/patient decision','Acte chirurgical ou autre non réalisé en raison d\'une décision d'),('V643','No proc for reasons NEC','Actes médicaux non réalisés pour d\'autres raisons'),('V650','Healthy person w sick','Personne accompagnant un malade'),('V652','Person feigning illness','Simulateur'),('V653','Dietary surveil/counsel','Surveillance et conseils diététiques'),('V655','Persn w feared complaint','Personnes inquiètes de leur état de santé (sans diagnostic)'),('V658','Reason for consult NEC','Autres motifs de recours aux services de santé - autres'),('V659','Reason for consult NOS','Autres motifs de recours aux services de santé - sans précision'),('V660','Surgical convalescence','Convalescence consécutive à intervention chirurgicale'),('V661','Radiotherapy convalescen','Convalescence consécutive à radiothérapie'),('V662','Chemotherapy convalescen','Convalescence consécutive à chimiothérapie'),('V663','Mental dis convalescence','Convalescence consécutive à psychothérapie et aut.trait.pour tro'),('V664','Fracture treatmnt conval','Convalescence consécutive à traitement de fracture'),('V665','Convalescence NEC','Convalescence consécutive à autres traitements'),('V666','Comb treatment convales','Convalescence consécutive à association de traitements'),('V669','Convalescence NOS','Convalescence consécutive à intervention ou traitement - sans pr'),('V671','Radiotherapy follow-up','Examen de surveillance, radiothérapie'),('V672','Chemotherapy follow-up','Examen de surveillance, chimiothérapie'),('V673','Psychiatric follow-up','Examen de surveillance, psychothérapie et autres trait.pour trou'),('V674','FU exam treatd healed fx','Examen de surveillance, traitement de fracture'),('V676','Comb treatment follow-up','Examen de surveillance, association de traitements'),('V679','Follow-up exam NOS','Examen de surveillance - sans précision'),('V681','Issue repeat prescript','Renouvellement d\'ordonnance'),('V682','Request expert evidence','Demande d\'expertise'),('V689','Administrtve encount NOS','Visites à des fins administratives - sans précision'),('V700','Routine medical exam','Examen médical général de routine'),('V701','Psych exam-authority req','Examen psychiatrique général demandé par l\'administration'),('V702','Gen psychiatric exam NEC','Examens psychiatriques généraux - autres et sans précision'),('V703','Med exam NEC-admin purp','Autres examens médicaux pour raisons administratives'),('V704','Exam-medicolegal reasons','Examen pour des raisons médico-légales'),('V705','Health exam-group survey','Examen de santé de groupes de population'),('V706','Health exam-pop survey','Examen de santé au cours des enquêtes dans la population'),('V707','Exam-clincal trial','Examen de témoin ou de contrôle en vue de recherches cliniques'),('V708','General medical exam NEC','Examens médicaux généraux - autres'),('V709','General medical exam NOS','Examens médicaux généraux - sans précision'),('V711','Obsv-suspct mal neoplasm','Observations et expertises pour affections suspectées - suspicio'),('V712','Observ-suspect TB','Observations et expertises pour affections suspectées - suspicio'),('V713','Observ-work accident','Observations et expertises pour affections suspectées - suites a'),('V714','Observ-accident NEC','Observations et expertises pour affections suspectées - suites a'),('V715','Observ following rape','Observations et expert. pour affect. suspectées-suites prétendus'),('V716','Observ-inflicted inj NEC','Observ.et expert.pour affect.suspectées-suite autres blessures d'),('V717','Obs-susp cardiovasc dis','Observations et expert.pour affections suspectées-suspicion mala'),('V719','Observ-suspect cond NOS','Observations et expertises pour des affections suspectées - sans'),('V720','Eye & vision examination','Examen de l\'oeil et de la vision'),('V722','Dental examination','Examen dentaire'),('V725','Radiological exam NEC','Examen radiologique non classé ailleurs'),('V727','Skin/sensitization tests','Tests cutanés diagnostiques et de sensibilisation'),('V729','Examination NOS','Investigations et examens spéciaux - sans précision'),('V730','Screening-poliomyelitis','Examen spécial de dépistage des maladies virales, poliomyélite'),('V731','Screening for smallpox','Examen spécial de dépistage des maladies virales, variole'),('V732','Screening for measles','Examen spécial de dépistage des maladies virales, rougeole'),('V733','Screening for rubella','Examen spécial de dépistage des maladies virales, rubéole'),('V734','Screening-yellow fever','Examen spécial de dépistage des maladies virales, fièvre jaune'),('V735','Screening-arbovirus dis','Examen spécial de dépistage des maladies virales, autres mal.due'),('V736','Screening for trachoma','Examen spécial de dépistage des maladies virales, trachome'),('V740','Screening for cholera','Examen spécial de dépistage maladies bactériennes spirochétoses,'),('V741','Screening-pulmonary TB','Examen spéc.de dépistage maladies bactér./spirochétoses, tubercu'),('V742','Screening for leprosy','Examen spécial de dépistage maladies bactériennes/spirochétoses,'),('V743','Screening for diphtheria','Examen spécial de dépistage maladies bactériennes/spirochétoses,'),('V744','Screen-bact conjunctivit','Examen spéc.de dépistage maladies bactér./spirochétoses, conjonc'),('V745','Screen for veneral dis','Examen spéc.de dépistage maladies bactér./spirochétoses, maladie'),('V746','Screening for yaws','Examen spéciale de dépistage maladies bactériennes/spirochétoses'),('V748','Screen-bacterial dis NEC','Examen spécial dépistage maladies bactériennes et spirochétoses '),('V749','Screen-bacterial dis NOS','Examen spéc.dépistage maladies bactériennes et spirochétoses - s'),('V750','Screen-rickettsial dis','Examen spécial dépistage autres maladies infectieuse, rickettsio'),('V751','Screening for malaria','Examen spécial dépistage autres maladies infectieuses, paludisme'),('V752','Screen for leishmaniasis','Examen spécial dépistage autres maladies infectieuses, leishmani'),('V753','Screen-trypanosomiasis','Examen spécial dépistage autres maladies infectieuses, trypanoso'),('V754','Screen-mycotic infect','Examen spécial dépistage autres maladies infectieuses, infection'),('V755','Screen-schistosomiasis','Examen spécial dépistage autres maladies infectieuses, schistoso'),('V756','Screen for filariasis','Examen spécial dépistage autres maladies infectieuses, filariose'),('V757','Screen for helminthiasis','Examen spécial dépistage autres maladies infectieuses, helminthi'),('V758','Screen-parasitic dis NEC','Exam.spéc.dépistage autres mala.infectieuses, aut.infections par'),('V759','Screen for infec dis NOS','Examen spéc.dépistage autres maladies infectieuses-maladies infe'),('V760','Screen mal neop-resp org','Examen spécial dépistage tumeurs malignes, appareil respiratoire'),('V762','Screen mal neop-cervix','Examen spécial de dépistage tumeurs malignes, col utérin'),('V763','Screen mal neop-bladder','Examen spécial de dépistage tumeurs malignes, vessie'),('V769','Screen-neoplasm NOS','Examen spécial de dépistage des tumeurs malignes - sans précisio'),('V770','Screen-thyroid disorder','Examen spécial dépistage, troubles thyroïdiens'),('V771','Screen-diabetes mellitus','Examen spécial dépistage, diabète sucré'),('V772','Screen for malnutrition','Examen spécial dépistage, malnutrition'),('V773','Screen-phenylketonuria','Examen spécial dépistage, phénylcétonurie'),('V774','Screen for galactosemia','Examen spécial dépistage, galactosémie'),('V775','Screening for gout','Examen spécial dépistage, goutte'),('V776','Screen-cystic fibrosis','Examen spécial dépistage, fibrose kystique du pancréas'),('V777','Screen-inborn err metab','Examen spécial dépistage, autres troubles congénitaux de métabol'),('V778','Screening for obesity','Examen spécial dépistage, obésité'),('V780','Screen-iron defic anemia','Examen spécial dépistage, anémie par carence en fer'),('V781','Screen-defic anemia NEC','Examen spécial dépistage, anémie par carence - autre et sans pré'),('V782','Screen-sickle cell dis','Examen spécial dépistage, drépanocytose'),('V783','Scrn-hemoglobinopath NEC','Examen spécial dépistage, autres hémoglobinopathies'),('V788','Screen-blood dis NEC','Examen spéc.dépistage troubles du sang et des organes hématopoïé'),('V789','Screen-blood dis NOS','Exam.spéc.dépistage troubles du sang et des organes hématopoïéti'),('V790','Screening for depression','Examen spécial dépistage, dépression'),('V791','Screening for alcoholism','Examen spécial dépistage, alcoolisme'),('V792','Scrn intellect disabilty','Examen spécial dépistage, retard mental'),('V793','Screen-development prob','Examen spécial dépistage, handicaps du premier âge'),('V798','Screen-mental dis NEC','Examen spécial de dépistage des troubles mentaux et handicaps - '),('V799','Screen-mental dis NOS','Examen spécial de dépistage des troubles mentaux et handicaps - '),('V801','Screening for glaucoma','Examen spécial de dépistage, glaucome'),('V802','Screening-eye cond NEC','Examen spéc.dépist.maladies neurol., aut.affect.oeil'),('V803','Screening for ear dis','Examen spécial de dépistage de maladies de l\'oreille'),('V810','Scrn-ischemic heart dis','Examen spécial de dépistage, maladies ischémiques du coeur'),('V811','Screen for hypertension','Examen spécial de dépistage, hypertension'),('V812','Screen-cardiovasc NEC','Examen spécial dépistage-affections cardio-vasculaires-autres et'),('V813','Screen-bronch/emphysema','Examen spécial de dépistage, bronchite chronique et emphysème'),('V814','Screen-respir cond NEC','Examen spéc.dépist.affect.respir.-sai'),('V815','Screen for nephropathy','Examen spécial de dépistage, néphropathies'),('V816','Screen for gu cond NEC','Examen spécial dépistage, affections génito-urinaires - autres e'),('V820','Screen for skin cond','Examen spécial de dépistage, affections de la peau'),('V821','Screen-rheumatoid arthr','Examen spécial de dépistage, arthrite rhumatismale'),('V822','Screen-rheumat dis NEC','Examen spécial de dépistage, autres affections rhumatismales'),('V823','Screen-cong hip dislocat','Examen spécial de dépistage, luxation congénitale de la hanche'),('V824','Mat pstntl scr-chrm anom','Examen spécial de dépistage post-natal d\'anomalies chromosomique'),('V825','Screen-contamination NEC','Examen spécial de dépistage, intoxication par produits chimiques'),('V826','Multiphasic screening','Examen spécial de dépistage à objectifs multiples'),('V829','Screen for condition NOS','Examen spécial de dépistage d\'autres affections - sans précision'),('V909','Retain FB, mat NOS','État normal');
/*!40000 ALTER TABLE `cim9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text,
  KEY `idx_config_cat` (`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('notify','fromaddress','do_not_reply@example.com'),('notify','fromname','SuiteCRM'),('notify','send_by_default','1'),('notify','on','1'),('notify','send_from_assigning_user','0'),('info','sugar_version','6.5.25'),('MySettings','tab','YToxOTp7czo0OiJIb21lIjtzOjQ6IkhvbWUiO3M6ODoiQWNjb3VudHMiO3M6ODoiQWNjb3VudHMiO3M6ODoiQ29udGFjdHMiO3M6ODoiQ29udGFjdHMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6NToiTGVhZHMiO3M6NToiTGVhZHMiO3M6ODoiQ2FsZW5kYXIiO3M6ODoiQ2FsZW5kYXIiO3M6OToiRG9jdW1lbnRzIjtzOjk6IkRvY3VtZW50cyI7czo2OiJFbWFpbHMiO3M6NjoiRW1haWxzIjtzOjk6IkNhbXBhaWducyI7czo5OiJDYW1wYWlnbnMiO3M6NToiQ2FsbHMiO3M6NToiQ2FsbHMiO3M6ODoiTWVldGluZ3MiO3M6ODoiTWVldGluZ3MiO3M6NToiTm90ZXMiO3M6NToiTm90ZXMiO3M6MTI6IkFPU19JbnZvaWNlcyI7czoxMjoiQU9TX0ludm9pY2VzIjtzOjk6IlByb3NwZWN0cyI7czo5OiJQcm9zcGVjdHMiO3M6OToiRlBfZXZlbnRzIjtzOjk6IkZQX2V2ZW50cyI7czoxMToiQU9SX1JlcG9ydHMiO3M6MTE6IkFPUl9SZXBvcnRzIjtzOjEzOiJlbnRfRW50cmV2dWVzIjtzOjEzOiJlbnRfRW50cmV2dWVzIjtzOjE2OiJwYXRfUGFydGVuYXJpYXRzIjtzOjE2OiJwYXRfUGFydGVuYXJpYXRzIjtzOjEyOiJwYXRfUGF0aWVudHMiO3M6MTI6InBhdF9QYXRpZW50cyI7fQ=='),('portal','on','0'),('tracker','Tracker','1'),('system','skypeout_on','1'),('sugarfeed','enabled','1'),('sugarfeed','module_UserFeed','1'),('sugarfeed','module_Cases','1'),('sugarfeed','module_Contacts','1'),('sugarfeed','module_Leads','1'),('sugarfeed','module_Opportunities','1'),('Update','CheckUpdates','manual'),('system','name','SuiteCRM'),('MySettings','disable_useredit','no'),('MySettings','hide_subpanels','YToyNjp7czoxMToiY2FtcGFpZ25sb2ciO3M6MTE6ImNhbXBhaWdubG9nIjtzOjEzOiJvcHBvcnR1bml0aWVzIjtzOjEzOiJvcHBvcnR1bml0aWVzIjtzOjg6ImNvbnRhY3RzIjtzOjg6ImNvbnRhY3RzIjtzOjU6ImxlYWRzIjtzOjU6ImxlYWRzIjtzOjQ6ImJ1Z3MiO3M6NDoiYnVncyI7czoxMjoiYW9zX2ludm9pY2VzIjtzOjEyOiJhb3NfaW52b2ljZXMiO3M6OToiZnBfZXZlbnRzIjtzOjk6ImZwX2V2ZW50cyI7czoxNDoic2VjdXJpdHlncm91cHMiO3M6MTQ6InNlY3VyaXR5Z3JvdXBzIjtzOjc6InByb2plY3QiO3M6NzoicHJvamVjdCI7czoxMzoiYW9zX2NvbnRyYWN0cyI7czoxMzoiYW9zX2NvbnRyYWN0cyI7czo5OiJkb2N1bWVudHMiO3M6OToiZG9jdW1lbnRzIjtzOjU6ImNhc2VzIjtzOjU6ImNhc2VzIjtzOjEzOiJwcm9zcGVjdGxpc3RzIjtzOjEzOiJwcm9zcGVjdGxpc3RzIjtzOjU6Im5vdGVzIjtzOjU6Im5vdGVzIjtzOjEyOiJqandnX21hcmtlcnMiO3M6MTI6Impqd2dfbWFya2VycyI7czoxMDoiYW9zX3F1b3RlcyI7czoxMDoiYW9zX3F1b3RlcyI7czo5OiJwcm9zcGVjdHMiO3M6OToicHJvc3BlY3RzIjtzOjg6Im1lZXRpbmdzIjtzOjg6Im1lZXRpbmdzIjtzOjIyOiJhb3NfcHJvZHVjdF9jYXRlZ29yaWVzIjtzOjIyOiJhb3NfcHJvZHVjdF9jYXRlZ29yaWVzIjtzOjE5OiJhbV9wcm9qZWN0dGVtcGxhdGVzIjtzOjE5OiJhbV9wcm9qZWN0dGVtcGxhdGVzIjtzOjE3OiJhb2tfa25vd2xlZGdlYmFzZSI7czoxNzoiYW9rX2tub3dsZWRnZWJhc2UiO3M6OToiamp3Z19tYXBzIjtzOjk6Impqd2dfbWFwcyI7czoyOToiYW9rX2tub3dsZWRnZV9iYXNlX2NhdGVnb3JpZXMiO3M6Mjk6ImFva19rbm93bGVkZ2VfYmFzZV9jYXRlZ29yaWVzIjtzOjIxOiJhb3Jfc2NoZWR1bGVkX3JlcG9ydHMiO3M6MjE6ImFvcl9zY2hlZHVsZWRfcmVwb3J0cyI7czoxMDoiamp3Z19hcmVhcyI7czoxMDoiamp3Z19hcmVhcyI7czoxMjoiYW9zX3Byb2R1Y3RzIjtzOjEyOiJhb3NfcHJvZHVjdHMiO30='),('system','adminwizard','1'),('notify','allow_default_outbound','0'),('proxy','on','0'),('proxy','host',''),('proxy','port',''),('proxy','auth','0'),('proxy','username','ss342'),('proxy','password','3NT5YHKFHmY=');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `joomla_account_id` varchar(255) DEFAULT NULL,
  `portal_account_disabled` tinyint(1) DEFAULT NULL,
  `portal_user_type` varchar(100) DEFAULT 'Single',
  PRIMARY KEY (`id`),
  KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  KEY `idx_reports_to_id` (`reports_to_id`),
  KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  KEY `idx_cont_assigned` (`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_audit`
--

DROP TABLE IF EXISTS `contacts_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_contacts_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_audit`
--

LOCK TABLES `contacts_audit` WRITE;
/*!40000 ALTER TABLE `contacts_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_bugs`
--

DROP TABLE IF EXISTS `contacts_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_bug_con` (`contact_id`),
  KEY `idx_con_bug_bug` (`bug_id`),
  KEY `idx_contact_bug` (`contact_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_bugs`
--

LOCK TABLES `contacts_bugs` WRITE;
/*!40000 ALTER TABLE `contacts_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cases`
--

DROP TABLE IF EXISTS `contacts_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_case_con` (`contact_id`),
  KEY `idx_con_case_case` (`case_id`),
  KEY `idx_contacts_cases` (`contact_id`,`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cases`
--

LOCK TABLES `contacts_cases` WRITE;
/*!40000 ALTER TABLE `contacts_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_cstm`
--

DROP TABLE IF EXISTS `contacts_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_cstm`
--

LOCK TABLES `contacts_cstm` WRITE;
/*!40000 ALTER TABLE `contacts_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts_users`
--

DROP TABLE IF EXISTS `contacts_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_users_con` (`contact_id`),
  KEY `idx_con_users_user` (`user_id`),
  KEY `idx_contacts_users` (`contact_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts_users`
--

LOCK TABLES `contacts_users` WRITE;
/*!40000 ALTER TABLE `contacts_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cron_remove_documents`
--

DROP TABLE IF EXISTS `cron_remove_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  KEY `idx_cron_remove_document_stamp` (`date_modified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cron_remove_documents`
--

LOCK TABLES `cron_remove_documents` WRITE;
/*!40000 ALTER TABLE `cron_remove_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `cron_remove_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_currency_name` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_beanid_set_num` (`bean_id`,`set_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_revisions`
--

DROP TABLE IF EXISTS `document_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documentrevision_mimetype` (`file_mime_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_revisions`
--

LOCK TABLES `document_revisions` WRITE;
/*!40000 ALTER TABLE `document_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_doc_cat` (`category_id`,`subcategory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_accounts`
--

DROP TABLE IF EXISTS `documents_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  KEY `documents_accounts_document_id` (`document_id`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_accounts`
--

LOCK TABLES `documents_accounts` WRITE;
/*!40000 ALTER TABLE `documents_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_bugs`
--

DROP TABLE IF EXISTS `documents_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  KEY `documents_bugs_document_id` (`document_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_bugs`
--

LOCK TABLES `documents_bugs` WRITE;
/*!40000 ALTER TABLE `documents_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_cases`
--

DROP TABLE IF EXISTS `documents_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_cases_case_id` (`case_id`,`document_id`),
  KEY `documents_cases_document_id` (`document_id`,`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_cases`
--

LOCK TABLES `documents_cases` WRITE;
/*!40000 ALTER TABLE `documents_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_contacts`
--

DROP TABLE IF EXISTS `documents_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  KEY `documents_contacts_document_id` (`document_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_contacts`
--

LOCK TABLES `documents_contacts` WRITE;
/*!40000 ALTER TABLE `documents_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents_opportunities`
--

DROP TABLE IF EXISTS `documents_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents_opportunities`
--

LOCK TABLES `documents_opportunities` WRITE;
/*!40000 ALTER TABLE `documents_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eapm`
--

DROP TABLE IF EXISTS `eapm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eapm`
--

LOCK TABLES `eapm` WRITE;
/*!40000 ALTER TABLE `eapm` DISABLE KEYS */;
/*!40000 ALTER TABLE `eapm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addr_bean_rel`
--

DROP TABLE IF EXISTS `email_addr_bean_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_email_address_id` (`email_address_id`),
  KEY `idx_bean_id` (`bean_id`,`bean_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addr_bean_rel`
--

LOCK TABLES `email_addr_bean_rel` WRITE;
/*!40000 ALTER TABLE `email_addr_bean_rel` DISABLE KEYS */;
INSERT INTO `email_addr_bean_rel` VALUES ('5cd1d383-65bc-6f7b-c3e5-5ba560a131ae','5cd1dc5f-37e8-e620-0419-5ba56029bd57','1','Users',1,0,'2018-09-21 21:19:10','2018-09-21 21:19:10',0);
/*!40000 ALTER TABLE `email_addr_bean_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses`
--

DROP TABLE IF EXISTS `email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `confirm_opt_in` varchar(255) DEFAULT 'not-opt-in',
  `confirm_opt_in_date` datetime DEFAULT NULL,
  `confirm_opt_in_sent_date` datetime DEFAULT NULL,
  `confirm_opt_in_fail_date` datetime DEFAULT NULL,
  `confirm_opt_in_token` varchar(255) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses`
--

LOCK TABLES `email_addresses` WRITE;
/*!40000 ALTER TABLE `email_addresses` DISABLE KEYS */;
INSERT INTO `email_addresses` VALUES ('5cd1dc5f-37e8-e620-0419-5ba56029bd57','dmarg666@yahoo.com.au','DMARG666@YAHOO.COM.AU',0,0,'confirmed-opt-in',NULL,NULL,NULL,NULL,'2018-09-21 21:19:00','2018-11-15 21:11:54',0);
/*!40000 ALTER TABLE `email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_addresses_audit`
--

DROP TABLE IF EXISTS `email_addresses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_addresses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_email_addresses_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_addresses_audit`
--

LOCK TABLES `email_addresses_audit` WRITE;
/*!40000 ALTER TABLE `email_addresses_audit` DISABLE KEYS */;
INSERT INTO `email_addresses_audit` VALUES ('aea80bd2-0fbe-a210-0b9d-5ba562cc36e4','5cd1dc5f-37e8-e620-0419-5ba56029bd57','2018-09-21 21:28:38','1','confirm_opt_in','enum','not-opt-in','confirmed-opt-in',NULL,NULL);
/*!40000 ALTER TABLE `email_addresses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_cache`
--

DROP TABLE IF EXISTS `email_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) unsigned DEFAULT NULL,
  `imap_uid` int(10) unsigned DEFAULT NULL,
  `msgno` int(10) unsigned DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL,
  KEY `idx_ie_id` (`ie_id`),
  KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  KEY `idx_mail_subj` (`subject`),
  KEY `idx_mail_to` (`toaddr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_cache`
--

LOCK TABLES `email_cache` WRITE;
/*!40000 ALTER TABLE `email_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing`
--

DROP TABLE IF EXISTS `email_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `outbound_email_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emmkt_name` (`name`),
  KEY `idx_emmkit_del` (`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing`
--

LOCK TABLES `email_marketing` WRITE;
/*!40000 ALTER TABLE `email_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_marketing_prospect_lists`
--

DROP TABLE IF EXISTS `email_marketing_prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_marketing_prospect_lists`
--

LOCK TABLES `email_marketing_prospect_lists` WRITE;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_marketing_prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` longtext,
  `body_html` longtext,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_template_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES ('3aa3de6a-58c1-2d5a-fa37-5ba56081cb65','2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','off','System-generated password email','This template is used when the System Administrator sends a new password to a user.','New account information','\r\nHere is your account username and temporary password:\r\nUsername : $contact_user_user_name\r\nPassword : $contact_user_user_hash\r\n\r\n$config_site_url\r\n\r\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.','<div><table width=\"550\"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,'system'),('461d57e6-ce93-c3c8-c064-5ba560cd0bf1','2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','off','Forgot Password email','This template is used to send a user a link to click to reset the user\'s account password.','Reset your account password','\r\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\r\n\r\nClick on the link below to reset your password:\r\n\r\n$contact_user_link_guid','<div><table width=\"550\"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,'system'),('5119d28e-682a-a0dc-989c-5ba560420a81','2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','off','Two Factor Authentication email','This template is used to send a user a code for Two Factor Authentication.','Two Factor Authentication Code','Two Factor Authentication code is $code.','<div><table width=\"550\"><tbody><tr><td><p>Two Factor Authentication code is <b>$code</b>.</p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>',0,NULL,0,'system'),('8076d587-2853-e4c4-3907-5ba560c4e485','2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','off','Case Closure','Template for informing a contact that their case has been closed.','$acase_name [CASE:$acase_case_number] closed','Hi $contact_first_name $contact_last_name,\r\n\r\n					   Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered\r\n					   Status:				$acase_status\r\n					   Reference:			$acase_case_number\r\n					   Resolution:			$acase_resolution','<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>Your case $acase_name (# $acase_case_number) has been closed on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Resolution</td><td>$acase_resolution</td></tr></tbody></table>',0,NULL,NULL,'system'),('8c2ed86c-2dd8-9397-035c-5ba560fdefc9','2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','off','Joomla Account Creation','Template used when informing a contact that they\'ve been given an account on the joomla portal.','Support Portal Account Created','Hi $contact_name,\r\n					   An account has been created for you at $portal_address.\r\n					   You may login using this email address and the password $joomla_pass','<p>Hi $contact_name,</p>\r\n					    <p>An account has been created for you at <a href=\"$portal_address\">$portal_address</a>.</p>\r\n					    <p>You may login using this email address and the password $joomla_pass</p>',0,NULL,NULL,'system'),('972b5f1f-301f-923a-2047-5ba5602fc602','2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','off','Case Creation','Template to send to a contact when a case is received from them.','$acase_name [CASE:$acase_case_number]','Hi $contact_first_name $contact_last_name,\r\n\r\n					   We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered\r\n					   Status:		$acase_status\r\n					   Reference:	$acase_case_number\r\n					   Description:	$acase_description','<p> Hi $contact_first_name $contact_last_name,</p>\r\n					    <p>We\'ve received your case $acase_name (# $acase_case_number) on $acase_date_entered</p>\r\n					    <table border=\"0\"><tbody><tr><td>Status</td><td>$acase_status</td></tr><tr><td>Reference</td><td>$acase_case_number</td></tr><tr><td>Description</td><td>$acase_description</td></tr></tbody></table>',0,NULL,NULL,'system'),('bb4d530c-456f-9ddb-b8a1-5ba560518080','2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','off','Contact Case Update','Template to send to a contact when their case is updated.','$acase_name update [CASE:$acase_case_number]','Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description','<p>Hi $contact_first_name $contact_last_name,</p>\r\n					    <p> </p>\r\n					    <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					    <p><strong>$user_first_name $user_last_name said:</strong></p>\r\n					    <p style=\"padding-left:30px;\">$aop_case_updates_description</p>',0,NULL,NULL,'system'),('c68859e0-1b6f-cacf-7fa0-5ba560f99b08','2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','off','User Case Update','Email template to send to a Sugar user when their case is updated.','$acase_name (# $acase_case_number) update','Hi $user_first_name $user_last_name,\r\n\r\n					   You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:\r\n					       $contact_first_name $contact_last_name, said:\r\n					               $aop_case_updates_description\r\n                        You may review this Case at:\r\n                            $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;','<p>Hi $user_first_name $user_last_name,</p>\r\n					     <p> </p>\r\n					     <p>You\'ve had an update to your case $acase_name (# $acase_case_number) on $aop_case_updates_date_entered:</p>\r\n					     <p><strong>$contact_first_name $contact_last_name, said:</strong></p>\r\n					     <p style=\"padding-left:30px;\">$aop_case_updates_description</p>\r\n					     <p>You may review this Case at: $sugarurl/index.php?module=Cases&action=DetailView&record=$acase_id;</p>',0,NULL,NULL,'system'),('e683db59-b1f2-2033-9c3d-5ba560536768','2013-05-24 14:31:45','2018-09-21 21:19:10','1','1','off','Event Invite Template','Default event invite template.','You have been invited to $fp_events_name','Dear $contact_name,\r\nYou have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end\r\n$fp_events_description\r\nYours Sincerely,\r\n','\r\n<p>Dear $contact_name,</p>\r\n<p>You have been invited to $fp_events_name on $fp_events_date_start to $fp_events_date_end</p>\r\n<p>$fp_events_description</p>\r\n<p>If you would like to accept this invititation please click accept.</p>\r\n<p> $fp_events_link or $fp_events_link_declined</p>\r\n<p>Yours Sincerely,</p>\r\n',0,NULL,NULL,'system'),('144f5d57-77ab-cc64-8a9d-5ba560231ed8','2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','off','Confirmed Opt In','Email template to send to a contact to confirm they have opted in.','Confirm Opt In','Hi $contact_first_name $contact_last_name, \\n Please confirm that you have opted in by selecting the following link: $sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_email_address','<p>Hi $contact_first_name $contact_last_name,</p>\r\n             <p>\r\n                Please confirm that you have opted in by selecting the following link:\r\n                <a href=\"$sugarurl/index.php?entryPoint=ConfirmOptIn&from=$emailaddress_confirm_opt_in_token\">Opt In</a>\r\n             </p>',0,NULL,NULL,'system');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailman`
--

DROP TABLE IF EXISTS `emailman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `related_confirm_opt_in` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  KEY `idx_eman_campaign_id` (`campaign_id`),
  KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailman`
--

LOCK TABLES `emailman` WRITE;
/*!40000 ALTER TABLE `emailman` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `orphaned` tinyint(1) DEFAULT NULL,
  `last_synced` datetime DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_email_name` (`name`),
  KEY `idx_message_id` (`message_id`),
  KEY `idx_email_parent_id` (`parent_id`),
  KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`),
  KEY `idx_email_cat` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_beans`
--

DROP TABLE IF EXISTS `emails_beans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_emails_beans_bean_id` (`bean_id`),
  KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_beans`
--

LOCK TABLES `emails_beans` WRITE;
/*!40000 ALTER TABLE `emails_beans` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_beans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_email_addr_rel`
--

DROP TABLE IF EXISTS `emails_email_addr_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  KEY `idx_eearl_address_id` (`email_address_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_email_addr_rel`
--

LOCK TABLES `emails_email_addr_rel` WRITE;
/*!40000 ALTER TABLE `emails_email_addr_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_email_addr_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails_text`
--

DROP TABLE IF EXISTS `emails_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`email_id`),
  KEY `emails_textfromaddr` (`from_addr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails_text`
--

LOCK TABLES `emails_text` WRITE;
/*!40000 ALTER TABLE `emails_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `emails_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ent_entrevues`
--

DROP TABLE IF EXISTS `ent_entrevues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ent_entrevues` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `date_entrevue` date DEFAULT NULL,
  `comment_refere` varchar(255) DEFAULT NULL,
  `org_ref_recrut` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ent_entrevues`
--

LOCK TABLES `ent_entrevues` WRITE;
/*!40000 ALTER TABLE `ent_entrevues` DISABLE KEYS */;
INSERT INTO `ent_entrevues` VALUES ('436d0e53-60b5-4fac-2d1f-5bc0f78a6e1d','','2018-10-12 19:36:07','2018-10-12 20:49:09','1','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4',NULL,0,'66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','2018-10-12',NULL,NULL),('a772d68a-c045-c139-17ac-5bc10e3b5ebc','','2018-10-12 21:12:57','2018-10-12 21:20:03','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4',NULL,0,'66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','2018-10-12',NULL,NULL),('5af20162-b7e5-fbfe-3544-5bc10f488bf6','','2018-10-12 21:19:24','2018-10-12 21:19:24','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4',NULL,0,NULL,'2018-10-12',NULL,NULL);
/*!40000 ALTER TABLE `ent_entrevues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ent_entrevues_accounts_c`
--

DROP TABLE IF EXISTS `ent_entrevues_accounts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ent_entrevues_accounts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `ent_entrevues_accountsaccounts_ida` varchar(36) DEFAULT NULL,
  `ent_entrevues_accountsent_entrevues_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ent_entrevues_accounts_ida1` (`ent_entrevues_accountsaccounts_ida`),
  KEY `ent_entrevues_accounts_alt` (`ent_entrevues_accountsent_entrevues_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ent_entrevues_accounts_c`
--

LOCK TABLES `ent_entrevues_accounts_c` WRITE;
/*!40000 ALTER TABLE `ent_entrevues_accounts_c` DISABLE KEYS */;
INSERT INTO `ent_entrevues_accounts_c` VALUES ('b7522fe5-63d4-5dc9-a761-5bc10e38f682','2018-10-12 21:12:57',0,'e9ee4d41-7a49-544c-c2c7-5ba56a95b3fb','a772d68a-c045-c139-17ac-5bc10e3b5ebc'),('1261740e-60a8-0c68-a218-5bc10fe88133','2018-10-12 21:19:24',0,'e9ee4d41-7a49-544c-c2c7-5ba56a95b3fb','5af20162-b7e5-fbfe-3544-5bc10f488bf6');
/*!40000 ALTER TABLE `ent_entrevues_accounts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ent_entrevues_audit`
--

DROP TABLE IF EXISTS `ent_entrevues_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ent_entrevues_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_ent_entrevues_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ent_entrevues_audit`
--

LOCK TABLES `ent_entrevues_audit` WRITE;
/*!40000 ALTER TABLE `ent_entrevues_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `ent_entrevues_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ent_entrevues_users_c`
--

DROP TABLE IF EXISTS `ent_entrevues_users_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ent_entrevues_users_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `ent_entrevues_usersent_entrevues_ida` varchar(36) DEFAULT NULL,
  `ent_entrevues_usersusers_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ent_entrevues_users_ida1` (`ent_entrevues_usersent_entrevues_ida`),
  KEY `ent_entrevues_users_idb2` (`ent_entrevues_usersusers_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ent_entrevues_users_c`
--

LOCK TABLES `ent_entrevues_users_c` WRITE;
/*!40000 ALTER TABLE `ent_entrevues_users_c` DISABLE KEYS */;
INSERT INTO `ent_entrevues_users_c` VALUES ('5a0c0f39-4811-fcdb-4eb5-5bc108ef3af7','2018-10-12 21:19:24',1,'436d0e53-60b5-4fac-2d1f-5bc0f78a6e1d','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4'),('7262020d-d43f-76b8-a912-5bc10ffc5527','2018-10-12 21:19:24',0,'5af20162-b7e5-fbfe-3544-5bc10f488bf6','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4'),('8c4e0412-cbb2-a912-9c47-5bc11054c097','2018-10-12 21:20:03',0,'a772d68a-c045-c139-17ac-5bc10e3b5ebc','79fc5856-a7ba-a277-8f30-5ba5661ee5d2');
/*!40000 ALTER TABLE `ent_entrevues_users_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorites` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields_meta_data`
--

DROP TABLE IF EXISTS `fields_meta_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text,
  PRIMARY KEY (`id`),
  KEY `idx_meta_id_del` (`id`,`deleted`),
  KEY `idx_meta_cm_del` (`custom_module`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields_meta_data`
--

LOCK TABLES `fields_meta_data` WRITE;
/*!40000 ALTER TABLE `fields_meta_data` DISABLE KEYS */;
INSERT INTO `fields_meta_data` VALUES ('Accountsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Accounts','float',11,0,'0.00000000','2018-09-21 21:19:10',0,0,0,0,1,'true','8','','',''),('Accountsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Accounts','float',10,0,'0.00000000','2018-09-21 21:19:10',0,0,0,0,1,'true','8','','',''),('Accountsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Accounts','varchar',255,0,NULL,'2018-09-21 21:19:10',0,0,0,0,1,'true',NULL,'','',''),('Accountsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Accounts','varchar',255,0,NULL,'2018-09-21 21:19:10',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Cases','float',11,0,'0.00000000','2018-09-21 21:19:10',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Cases','float',10,0,'0.00000000','2018-09-21 21:19:10',0,0,0,0,1,'true','8','','',''),('Casesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Cases','varchar',255,0,NULL,'2018-09-21 21:19:10',0,0,0,0,1,'true',NULL,'','',''),('Casesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Cases','varchar',255,0,NULL,'2018-09-21 21:19:10',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Contacts','float',11,0,'0.00000000','2018-09-21 21:19:10',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Contacts','float',10,0,'0.00000000','2018-09-21 21:19:10',0,0,0,0,1,'true','8','','',''),('Contactsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Contacts','varchar',255,0,NULL,'2018-09-21 21:19:10',0,0,0,0,1,'true',NULL,'','',''),('Contactsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Contacts','varchar',255,0,NULL,'2018-09-21 21:19:10',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Leads','float',11,0,'0.00000000','2018-09-21 21:19:10',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Leads','float',10,0,'0.00000000','2018-09-21 21:19:10',0,0,0,0,1,'true','8','','',''),('Leadsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Leads','varchar',255,0,NULL,'2018-09-21 21:19:10',0,0,0,0,1,'true',NULL,'','',''),('Leadsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Leads','varchar',255,0,NULL,'2018-09-21 21:19:10',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Meetings','float',11,0,'0.00000000','2018-09-21 21:19:10',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Meetings','float',10,0,'0.00000000','2018-09-21 21:19:10',0,0,0,0,1,'true','8','','',''),('Meetingsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Meetings','varchar',255,0,NULL,'2018-09-21 21:19:10',0,0,0,0,1,'true',NULL,'','',''),('Meetingsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Meetings','varchar',255,0,NULL,'2018-09-21 21:19:10',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Opportunities','float',11,0,'0.00000000','2018-09-21 21:19:10',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Opportunities','float',10,0,'0.00000000','2018-09-21 21:19:10',0,0,0,0,1,'true','8','','',''),('Opportunitiesjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Opportunities','varchar',255,0,NULL,'2018-09-21 21:19:10',0,0,0,0,1,'true',NULL,'','',''),('Opportunitiesjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Opportunities','varchar',255,0,NULL,'2018-09-21 21:19:10',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Project','float',11,0,'0.00000000','2018-09-21 21:19:10',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Project','float',10,0,'0.00000000','2018-09-21 21:19:10',0,0,0,0,1,'true','8','','',''),('Projectjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Project','varchar',255,0,NULL,'2018-09-21 21:19:10',0,0,0,0,1,'true',NULL,'','',''),('Projectjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Project','varchar',255,0,NULL,'2018-09-21 21:19:10',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_lng_c','jjwg_maps_lng_c','LBL_JJWG_MAPS_LNG','','Longitude','Prospects','float',11,0,'0.00000000','2018-09-21 21:19:10',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_lat_c','jjwg_maps_lat_c','LBL_JJWG_MAPS_LAT','','Latitude','Prospects','float',10,0,'0.00000000','2018-09-21 21:19:10',0,0,0,0,1,'true','8','','',''),('Prospectsjjwg_maps_geocode_status_c','jjwg_maps_geocode_status_c','LBL_JJWG_MAPS_GEOCODE_STATUS','Geocode Status','Geocode Status','Prospects','varchar',255,0,NULL,'2018-09-21 21:19:10',0,0,0,0,1,'true',NULL,'','',''),('Prospectsjjwg_maps_address_c','jjwg_maps_address_c','LBL_JJWG_MAPS_ADDRESS','Address','Address','Prospects','varchar',255,0,NULL,'2018-09-21 21:19:10',0,0,0,0,1,'true',NULL,'','',''),('Accountsexperience_maladie_c','experience_maladie_c','LBL_EXPERIENCE_MALADIE',NULL,NULL,'Accounts','text',NULL,0,NULL,'2018-10-10 16:04:02',0,0,0,0,1,'true',NULL,'6','80',NULL),('Accountsdomaine_soin_c','domaine_soin_c','LBL_DOMAINE_SOIN','Spécialité de soins que le PP a le plus d\'expérience','','Accounts','varchar',255,0,'','2018-10-10 15:51:48',0,0,0,0,1,'true','','','',''),('Accountsdomaine_soin_2_c','domaine_soin_2_c','LBL_DOMAINE_SOIN_2','Spécialité de soins que le PP a le plus d\'expérience','','Accounts','varchar',255,0,'','2018-10-10 15:56:01',0,0,0,0,1,'true','','','',''),('Accountsdomaine_soin_3_c','domaine_soin_3_c','LBL_DOMAINE_SOIN_3','Spécialité de soins que le PP a le plus d\'expérience','','Accounts','varchar',255,0,'','2018-10-10 15:56:33',0,0,0,0,1,'true','','','',''),('Accountsmed_1_c','med_1_c','LBL_MED_1','Le pp prend-il des médicaments? Si oui, lesquels? ','','Accounts','enum',100,0,NULL,'2018-10-10 16:36:51',0,0,0,0,1,'true','cim9_list','','',''),('Accountsmed_2_c','med_2_c','LBL_MED_2','Le pp prend-il des médicaments? Si oui, lesquels? ','','Accounts','enum',100,0,NULL,'2018-10-10 20:37:51',0,0,0,0,1,'true','cim9_list','','',''),('Accountsmed_3_c','med_3_c','LBL_MED_3','Le pp prend-il des médicaments? Si oui, lesquels? ','','Accounts','enum',100,0,NULL,'2018-10-10 20:38:44',0,0,0,0,1,'true','cim9_list','','',''),('Accountsdoul_chron_c','doul_chron_c','LBL_DOUL_CHRON','','Le pp a-t-il des douleurs chroniques?','Accounts','radioenum',100,0,NULL,'2018-10-11 14:33:01',0,0,0,0,1,'true','yes_no_list','','',''),('Accountsprob_somm_c','prob_somm_c','LBL_PROB_SOMM','','Le pp a-t-il des proiblèmes de sommeil?','Accounts','radioenum',100,0,NULL,'2018-10-11 16:02:39',0,0,0,0,1,'true','yes_no_list','','',''),('Accountsprob_resp_c','prob_resp_c','LBL_PROB_RESP',NULL,'Le pp a-t-il des problèmes de respiration?','Accounts','radioenum',100,0,NULL,'2018-10-11 19:25:21',0,0,0,0,1,'true','yes_no_list',NULL,NULL,NULL),('Accountsetabl_sante_c','etabl_sante_c','LBL_ETABL_SANTE',NULL,'Dans quel établissement de santé le pp se fait-il principalement traiter?','Accounts','enum',100,0,NULL,'2018-11-15 17:51:03',0,0,0,0,1,'true','etab_sante_list',NULL,NULL,NULL),('Accountsetabl_prem_ligne_c','etabl_prem_ligne_c','LBL_ETABL_PREM_LIGNE',NULL,'Dans quel établissement de santé le pp se fait-il principalement traiter en première ligne?','Accounts','enum',100,0,NULL,'2018-11-15 17:54:53',0,0,0,0,1,'true','etab_sante_list',NULL,NULL,NULL),('Accountsexp_decision_c','exp_decision_c','LBL_EXP_DECISION','','Le PP démontre une expérience dans la prise de décision dans ses soins?','Accounts','radioenum',100,0,NULL,'2018-10-11 17:10:35',0,0,0,0,1,'true','yes_no_list','','',''),('Accountsexprience_maladie_proche_c','exprience_maladie_proche_c','LBL_EXPRIENCE_MALADIE_PROCHE','','Le PA parle de son expérience avec la maladie de votre proche? (à remplir avec info de l\'entrevue)','Accounts','text',NULL,0,'','2018-10-11 19:28:54',0,0,0,0,1,'true','','6','80',''),('Accountsrel_patient_c','rel_patient_c','LBL_REL_PATIENT','','Relation avec le patient','Accounts','enum',100,0,NULL,'2018-10-11 20:30:17',0,0,0,0,1,'true','relation_patient_list','','',''),('Accountsrel_patient_autre__precision_c','rel_patient_autre__precision_c','LBL_REL_PATIENT_AUTRE__PRECISION','','Précision d\'autre type de relation entretenue avec le patient','Accounts','varchar',255,0,'','2018-10-11 20:31:55',0,0,0,0,1,'true','','','',''),('Accountsdomaine_soin_pa_c','domaine_soin_pa_c','LBL_DOMAINE_SOIN_PA','','Spécialité domaine de soins #1','Accounts','enum',100,0,NULL,'2018-10-11 20:42:49',0,0,0,0,1,'true','spec_domaine_soins_list','','',''),('Accountsdomaine_soin_pa_2_c','domaine_soin_pa_2_c','LBL_DOMAINE_SOIN_PA_2','','','Accounts','enum',100,0,NULL,'2018-10-11 20:44:32',0,0,0,0,1,'true','spec_domaine_soins_list','','',''),('Accountsdomaine_soin_pa_3_c','domaine_soin_pa_3_c','LBL_DOMAINE_SOIN_PA_3','','','Accounts','enum',100,0,NULL,'2018-10-11 20:45:02',0,0,0,0,1,'true','spec_domaine_soins_list','','',''),('Accountsprob_sant_pa_c','prob_sant_pa_c','LBL_PROB_SANT_PA','','','Accounts','enum',100,0,NULL,'2018-10-11 20:50:00',0,0,0,0,1,'true','cim9_list','','',''),('Accountsprob_sant_pa_2_c','prob_sant_pa_2_c','LBL_PROB_SANT_PA_2','','','Accounts','enum',100,0,NULL,'2018-10-11 20:50:32',0,0,0,0,1,'true','cim9_list','','',''),('Accountsprob_sant_pa_3_c','prob_sant_pa_3_c','LBL_PROB_SANT_PA_3','','','Accounts','enum',100,0,NULL,'2018-10-11 20:51:00',0,0,0,0,1,'true','cim9_list','','',''),('Accountsetabl_sante_pa_c','etabl_sante_pa_c','LBL_ETABL_SANTE_PA',NULL,NULL,'Accounts','enum',100,0,NULL,'2018-11-15 17:52:55',0,0,0,0,1,'true','etab_sante_list',NULL,NULL,NULL),('Accountsetabl_prem_ligne_pa_c','etabl_prem_ligne_pa_c','LBL_ETABL_PREM_LIGNE_PA',NULL,NULL,'Accounts','enum',100,0,NULL,'2018-11-15 17:53:59',0,0,0,0,1,'true','etab_sante_list',NULL,NULL,NULL),('Accountsetabl_sante_pa_autre__prec_c','etabl_sante_pa_autre__prec_c','LBL_ETABL_SANTE_PA_AUTRE__PREC',NULL,NULL,'Accounts','varchar',255,0,NULL,'2018-11-15 17:51:34',0,0,0,0,1,'true',NULL,NULL,NULL,NULL),('Accountsetabl_prem_ligne_pa_autre__p_c','etabl_prem_ligne_pa_autre__p_c','LBL_ETABL_PREM_LIGNE_PA_AUTRE__P',NULL,NULL,'Accounts','varchar',255,0,NULL,'2018-11-15 17:54:23',0,0,0,0,1,'true',NULL,NULL,NULL,NULL),('Accountsconsentement_dcpp_recrut_c','consentement_dcpp_recrut_c','LBL_CONSENTEMENT_DCPP_RECRUT','','Est-ce que vous consentez à vous impliquer en tant que patient partenaire? ','Accounts','radioenum',100,0,NULL,'2018-10-12 21:27:49',0,0,0,0,1,'true','yes_no_list','','',''),('Accountsconsentement_recherche_c','consentement_recherche_c','LBL_CONSENTEMENT_RECHERCHE','','Acceptez-vous que vos données en lien avec votre implication en tant que patient partenaire soient potentiellement utilisées à des fins de recherche?','Accounts','radioenum',100,0,NULL,'2018-10-12 21:32:21',0,0,0,0,1,'true','yes_no_list','','',''),('Accountsconsentement_usage_donnees_c','consentement_usage_donnees_c','LBL_CONSENTEMENT_USAGE_DONNEES','','Acceptez-vous que vos données en lien avec votre implication en tant que patient partenaire soient potentiellement utilisées à des fins autre que pour le partenariat avec les patients?','Accounts','radioenum',100,0,NULL,'2018-10-12 21:33:12',0,0,0,0,1,'true','yes_no_list','','',''),('Accountsconsentement_miseajour_c','consentement_miseajour_c','LBL_CONSENTEMENT_MISEAJOUR','','Acceptez-vous qu\'on communique avec vous annuellement pour des fins de mise à jour de vos informations? ','Accounts','radioenum',100,0,NULL,'2018-10-12 21:33:54',0,0,0,0,1,'true','yes_no_list','','',''),('Accountsetabl_sante_pp_c','etabl_sante_pp_c','LBL_ETABL_SANTE_PP',NULL,'Dans quel établissement de santé le pp se fait-il principalement traiter?','Accounts','varchar',255,0,NULL,'2018-11-15 17:58:10',0,0,0,0,1,'true',NULL,NULL,NULL,NULL),('Accountsetabl_prem_ligne_pp_c','etabl_prem_ligne_pp_c','LBL_ETABL_PREM_LIGNE_PP',NULL,'Dans quel établissement de santé le pp se fait-il principalement traiter en première ligne?','Accounts','varchar',255,0,NULL,'2018-11-15 17:57:25',0,0,0,0,1,'true',NULL,NULL,NULL,NULL),('Accountsetabl_sante_pa__c','etabl_sante_pa__c','LBL_ETABL_SANTE_PA_',NULL,'Dans quel établissement de santé le pp se fait-il principalement traiter?','Accounts','varchar',255,0,NULL,'2018-11-15 17:50:15',0,0,0,0,1,'true',NULL,NULL,NULL,NULL),('Accountsetabl_prem_ligne_pa__c','etabl_prem_ligne_pa__c','LBL_ETABL_PREM_LIGNE_PA_','','Dans quel établissement de santé le pp se fait-il principalement traiter en première ligne?','Accounts','varchar',255,0,'','2018-11-15 17:48:19',0,0,0,0,1,'true','','','','');
/*!40000 ALTER TABLE `fields_meta_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders`
--

DROP TABLE IF EXISTS `folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_folder` (`parent_folder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders`
--

LOCK TABLES `folders` WRITE;
/*!40000 ALTER TABLE `folders` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_rel`
--

DROP TABLE IF EXISTS `folders_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_rel`
--

LOCK TABLES `folders_rel` WRITE;
/*!40000 ALTER TABLE `folders_rel` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folders_subscriptions`
--

DROP TABLE IF EXISTS `folders_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folders_subscriptions`
--

LOCK TABLES `folders_subscriptions` WRITE;
/*!40000 ALTER TABLE `folders_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `folders_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations`
--

DROP TABLE IF EXISTS `fp_event_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations`
--

LOCK TABLES `fp_event_locations` WRITE;
/*!40000 ALTER TABLE `fp_event_locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_audit`
--

DROP TABLE IF EXISTS `fp_event_locations_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_event_locations_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_audit`
--

LOCK TABLES `fp_event_locations_audit` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_event_locations_fp_events_1_c`
--

DROP TABLE IF EXISTS `fp_event_locations_fp_events_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_event_locations_fp_events_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_event_locations_fp_events_1fp_event_locations_ida` varchar(36) DEFAULT NULL,
  `fp_event_locations_fp_events_1fp_events_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_event_locations_fp_events_1_ida1` (`fp_event_locations_fp_events_1fp_event_locations_ida`),
  KEY `fp_event_locations_fp_events_1_alt` (`fp_event_locations_fp_events_1fp_events_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_event_locations_fp_events_1_c`
--

LOCK TABLES `fp_event_locations_fp_events_1_c` WRITE;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_event_locations_fp_events_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events`
--

DROP TABLE IF EXISTS `fp_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `budget` decimal(26,6) DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `invite_templates` varchar(100) DEFAULT NULL,
  `accept_redirect` varchar(255) DEFAULT NULL,
  `decline_redirect` varchar(255) DEFAULT NULL,
  `activity_status_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events`
--

LOCK TABLES `fp_events` WRITE;
/*!40000 ALTER TABLE `fp_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_audit`
--

DROP TABLE IF EXISTS `fp_events_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_fp_events_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_audit`
--

LOCK TABLES `fp_events_audit` WRITE;
/*!40000 ALTER TABLE `fp_events_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_contacts_c`
--

DROP TABLE IF EXISTS `fp_events_contacts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_contacts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_contactsfp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_contactscontacts_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_contacts_alt` (`fp_events_contactsfp_events_ida`,`fp_events_contactscontacts_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_contacts_c`
--

LOCK TABLES `fp_events_contacts_c` WRITE;
/*!40000 ALTER TABLE `fp_events_contacts_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_contacts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_delegates_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_delegates_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_delegates_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_delegates_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_delegates_1fp_event_delegates_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_delegates_1_ida1` (`fp_events_fp_event_delegates_1fp_events_ida`),
  KEY `fp_events_fp_event_delegates_1_alt` (`fp_events_fp_event_delegates_1fp_event_delegates_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_delegates_1_c`
--

LOCK TABLES `fp_events_fp_event_delegates_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_delegates_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_fp_event_locations_1_c`
--

DROP TABLE IF EXISTS `fp_events_fp_event_locations_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_fp_event_locations_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_fp_event_locations_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_fp_event_locations_1fp_event_locations_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fp_events_fp_event_locations_1_alt` (`fp_events_fp_event_locations_1fp_events_ida`,`fp_events_fp_event_locations_1fp_event_locations_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_fp_event_locations_1_c`
--

LOCK TABLES `fp_events_fp_event_locations_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_fp_event_locations_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_leads_1_c`
--

DROP TABLE IF EXISTS `fp_events_leads_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_leads_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_leads_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_leads_1leads_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_leads_1_alt` (`fp_events_leads_1fp_events_ida`,`fp_events_leads_1leads_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_leads_1_c`
--

LOCK TABLES `fp_events_leads_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_leads_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_leads_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fp_events_prospects_1_c`
--

DROP TABLE IF EXISTS `fp_events_prospects_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_events_prospects_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `fp_events_prospects_1fp_events_ida` varchar(36) DEFAULT NULL,
  `fp_events_prospects_1prospects_idb` varchar(36) DEFAULT NULL,
  `invite_status` varchar(25) DEFAULT 'Not Invited',
  `accept_status` varchar(25) DEFAULT 'No Response',
  `email_responded` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fp_events_prospects_1_alt` (`fp_events_prospects_1fp_events_ida`,`fp_events_prospects_1prospects_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fp_events_prospects_1_c`
--

LOCK TABLES `fp_events_prospects_1_c` WRITE;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `fp_events_prospects_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import_maps`
--

DROP TABLE IF EXISTS `import_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import_maps`
--

LOCK TABLES `import_maps` WRITE;
/*!40000 ALTER TABLE `import_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `import_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email`
--

DROP TABLE IF EXISTS `inbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email`
--

LOCK TABLES `inbound_email` WRITE;
/*!40000 ALTER TABLE `inbound_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_autoreply`
--

DROP TABLE IF EXISTS `inbound_email_autoreply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ie_autoreplied_to` (`autoreplied_to`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_autoreply`
--

LOCK TABLES `inbound_email_autoreply` WRITE;
/*!40000 ALTER TABLE `inbound_email_autoreply` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_autoreply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbound_email_cache_ts`
--

DROP TABLE IF EXISTS `inbound_email_cache_ts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbound_email_cache_ts`
--

LOCK TABLES `inbound_email_cache_ts` WRITE;
/*!40000 ALTER TABLE `inbound_email_cache_ts` DISABLE KEYS */;
/*!40000 ALTER TABLE `inbound_email_cache_ts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache`
--

DROP TABLE IF EXISTS `jjwg_address_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_address_cache` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `lat` float(10,8) DEFAULT NULL,
  `lng` float(11,8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache`
--

LOCK TABLES `jjwg_address_cache` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_address_cache_audit`
--

DROP TABLE IF EXISTS `jjwg_address_cache_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_address_cache_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_address_cache_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_address_cache_audit`
--

LOCK TABLES `jjwg_address_cache_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_address_cache_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas`
--

DROP TABLE IF EXISTS `jjwg_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_areas` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `coordinates` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas`
--

LOCK TABLES `jjwg_areas` WRITE;
/*!40000 ALTER TABLE `jjwg_areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_areas_audit`
--

DROP TABLE IF EXISTS `jjwg_areas_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_areas_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_areas_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_areas_audit`
--

LOCK TABLES `jjwg_areas_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_areas_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_areas_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps`
--

DROP TABLE IF EXISTS `jjwg_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `distance` float(9,4) DEFAULT NULL,
  `unit_type` varchar(100) DEFAULT 'mi',
  `module_type` varchar(100) DEFAULT 'Accounts',
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps`
--

LOCK TABLES `jjwg_maps` WRITE;
/*!40000 ALTER TABLE `jjwg_maps` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_audit`
--

DROP TABLE IF EXISTS `jjwg_maps_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_maps_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_audit`
--

LOCK TABLES `jjwg_maps_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_areas_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_areas_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_areas_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_5304wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_41f2g_areas_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_areas_alt` (`jjwg_maps_5304wg_maps_ida`,`jjwg_maps_41f2g_areas_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_areas_c`
--

LOCK TABLES `jjwg_maps_jjwg_areas_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_areas_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_maps_jjwg_markers_c`
--

DROP TABLE IF EXISTS `jjwg_maps_jjwg_markers_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_maps_jjwg_markers_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `jjwg_maps_b229wg_maps_ida` varchar(36) DEFAULT NULL,
  `jjwg_maps_2e31markers_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jjwg_maps_jjwg_markers_alt` (`jjwg_maps_b229wg_maps_ida`,`jjwg_maps_2e31markers_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_maps_jjwg_markers_c`
--

LOCK TABLES `jjwg_maps_jjwg_markers_c` WRITE;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_maps_jjwg_markers_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers`
--

DROP TABLE IF EXISTS `jjwg_markers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_markers` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `jjwg_maps_lat` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_lng` float(11,8) DEFAULT '0.00000000',
  `marker_image` varchar(100) DEFAULT 'company',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers`
--

LOCK TABLES `jjwg_markers` WRITE;
/*!40000 ALTER TABLE `jjwg_markers` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jjwg_markers_audit`
--

DROP TABLE IF EXISTS `jjwg_markers_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jjwg_markers_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_jjwg_markers_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jjwg_markers_audit`
--

LOCK TABLES `jjwg_markers_audit` WRITE;
/*!40000 ALTER TABLE `jjwg_markers_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `jjwg_markers_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_queue`
--

DROP TABLE IF EXISTS `job_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  KEY `idx_status_entered` (`status`,`date_entered`),
  KEY `idx_status_modified` (`status`,`date_modified`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_queue`
--

LOCK TABLES `job_queue` WRITE;
/*!40000 ALTER TABLE `job_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads`
--

DROP TABLE IF EXISTS `leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  KEY `idx_lead_assigned` (`assigned_user_id`),
  KEY `idx_lead_contact` (`contact_id`),
  KEY `idx_reports_to` (`reports_to_id`),
  KEY `idx_lead_phone_work` (`phone_work`),
  KEY `idx_leads_id_del` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads`
--

LOCK TABLES `leads` WRITE;
/*!40000 ALTER TABLE `leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_audit`
--

DROP TABLE IF EXISTS `leads_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_leads_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_audit`
--

LOCK TABLES `leads_audit` WRITE;
/*!40000 ALTER TABLE `leads_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leads_cstm`
--

DROP TABLE IF EXISTS `leads_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leads_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leads_cstm`
--

LOCK TABLES `leads_cstm` WRITE;
/*!40000 ALTER TABLE `leads_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `leads_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linked_documents`
--

DROP TABLE IF EXISTS `linked_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linked_documents`
--

LOCK TABLES `linked_documents` WRITE;
/*!40000 ALTER TABLE `linked_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `linked_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_mtg_name` (`name`),
  KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  KEY `idx_meet_date_start` (`date_start`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_contacts`
--

DROP TABLE IF EXISTS `meetings_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_mtg_mtg` (`meeting_id`),
  KEY `idx_con_mtg_con` (`contact_id`),
  KEY `idx_meeting_contact` (`meeting_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_contacts`
--

LOCK TABLES `meetings_contacts` WRITE;
/*!40000 ALTER TABLE `meetings_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_cstm`
--

DROP TABLE IF EXISTS `meetings_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_cstm`
--

LOCK TABLES `meetings_cstm` WRITE;
/*!40000 ALTER TABLE `meetings_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_leads`
--

DROP TABLE IF EXISTS `meetings_leads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_lead_meeting_meeting` (`meeting_id`),
  KEY `idx_lead_meeting_lead` (`lead_id`),
  KEY `idx_meeting_lead` (`meeting_id`,`lead_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_leads`
--

LOCK TABLES `meetings_leads` WRITE;
/*!40000 ALTER TABLE `meetings_leads` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_leads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings_users`
--

DROP TABLE IF EXISTS `meetings_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_usr_mtg_mtg` (`meeting_id`),
  KEY `idx_usr_mtg_usr` (`user_id`),
  KEY `idx_meeting_users` (`meeting_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings_users`
--

LOCK TABLES `meetings_users` WRITE;
/*!40000 ALTER TABLE `meetings_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `meetings_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_note_name` (`name`),
  KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  KEY `idx_note_contact` (`contact_id`),
  KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2clients`
--

DROP TABLE IF EXISTS `oauth2clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2clients` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `secret` varchar(4000) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `is_confidential` tinyint(1) DEFAULT '1',
  `allowed_grant_type` varchar(255) DEFAULT 'password',
  `duration_value` int(11) DEFAULT NULL,
  `duration_amount` int(11) DEFAULT NULL,
  `duration_unit` varchar(255) DEFAULT 'Duration Unit',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2clients`
--

LOCK TABLES `oauth2clients` WRITE;
/*!40000 ALTER TABLE `oauth2clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth2tokens`
--

DROP TABLE IF EXISTS `oauth2tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth2tokens` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `token_is_revoked` tinyint(1) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT NULL,
  `access_token_expires` datetime DEFAULT NULL,
  `access_token` varchar(4000) DEFAULT NULL,
  `refresh_token` varchar(4000) DEFAULT NULL,
  `refresh_token_expires` datetime DEFAULT NULL,
  `grant_type` varchar(255) DEFAULT NULL,
  `state` varchar(1024) DEFAULT NULL,
  `client` char(36) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth2tokens`
--

LOCK TABLES `oauth2tokens` WRITE;
/*!40000 ALTER TABLE `oauth2tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth2tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_consumer`
--

DROP TABLE IF EXISTS `oauth_consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ckey` (`c_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_consumer`
--

LOCK TABLES `oauth_consumer` WRITE;
/*!40000 ALTER TABLE `oauth_consumer` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_nonce`
--

DROP TABLE IF EXISTS `oauth_nonce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`conskey`,`nonce`),
  KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_nonce`
--

LOCK TABLES `oauth_nonce` WRITE;
/*!40000 ALTER TABLE `oauth_nonce` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_nonce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_tokens`
--

DROP TABLE IF EXISTS `oauth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`,`deleted`),
  KEY `oauth_state_ts` (`tstate`,`token_ts`),
  KEY `constoken_key` (`consumer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_tokens`
--

LOCK TABLES `oauth_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities`
--

DROP TABLE IF EXISTS `opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`name`),
  KEY `idx_opp_assigned` (`assigned_user_id`),
  KEY `idx_opp_id_deleted` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities`
--

LOCK TABLES `opportunities` WRITE;
/*!40000 ALTER TABLE `opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_audit`
--

DROP TABLE IF EXISTS `opportunities_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_opportunities_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_audit`
--

LOCK TABLES `opportunities_audit` WRITE;
/*!40000 ALTER TABLE `opportunities_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_contacts`
--

DROP TABLE IF EXISTS `opportunities_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_con_opp_con` (`contact_id`),
  KEY `idx_con_opp_opp` (`opportunity_id`),
  KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_contacts`
--

LOCK TABLES `opportunities_contacts` WRITE;
/*!40000 ALTER TABLE `opportunities_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opportunities_cstm`
--

DROP TABLE IF EXISTS `opportunities_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `opportunities_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opportunities_cstm`
--

LOCK TABLES `opportunities_cstm` WRITE;
/*!40000 ALTER TABLE `opportunities_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `opportunities_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email`
--

DROP TABLE IF EXISTS `outbound_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `smtp_from_name` varchar(255) DEFAULT NULL,
  `smtp_from_addr` varchar(255) DEFAULT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` varchar(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email`
--

LOCK TABLES `outbound_email` WRITE;
/*!40000 ALTER TABLE `outbound_email` DISABLE KEYS */;
INSERT INTO `outbound_email` VALUES ('a64e558b-9590-b76c-d13b-5ba560552f19','system','system','1','SuiteCRM','do_not_reply@example.com','SMTP','yahoomail','smtp.mail.yahoo.com',465,'dmarg666','V8sDVNRnSvQ=',1,'1',NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `outbound_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `outbound_email_audit`
--

DROP TABLE IF EXISTS `outbound_email_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `outbound_email_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_outbound_email_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `outbound_email_audit`
--

LOCK TABLES `outbound_email_audit` WRITE;
/*!40000 ALTER TABLE `outbound_email_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `outbound_email_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pat_partenariats`
--

DROP TABLE IF EXISTS `pat_partenariats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pat_partenariats` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pat_partenariats`
--

LOCK TABLES `pat_partenariats` WRITE;
/*!40000 ALTER TABLE `pat_partenariats` DISABLE KEYS */;
/*!40000 ALTER TABLE `pat_partenariats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pat_partenariats_audit`
--

DROP TABLE IF EXISTS `pat_partenariats_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pat_partenariats_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_pat_partenariats_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pat_partenariats_audit`
--

LOCK TABLES `pat_partenariats_audit` WRITE;
/*!40000 ALTER TABLE `pat_partenariats_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `pat_partenariats_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pat_partenariats_pat_patients_c`
--

DROP TABLE IF EXISTS `pat_partenariats_pat_patients_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pat_partenariats_pat_patients_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `pat_partenariats_pat_patientspat_partenariats_ida` varchar(36) DEFAULT NULL,
  `pat_partenariats_pat_patientspat_patients_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pat_partenariats_pat_patients_ida1` (`pat_partenariats_pat_patientspat_partenariats_ida`),
  KEY `pat_partenariats_pat_patients_idb2` (`pat_partenariats_pat_patientspat_patients_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pat_partenariats_pat_patients_c`
--

LOCK TABLES `pat_partenariats_pat_patients_c` WRITE;
/*!40000 ALTER TABLE `pat_partenariats_pat_patients_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `pat_partenariats_pat_patients_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pat_patients`
--

DROP TABLE IF EXISTS `pat_patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pat_patients` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `nas_perso` int(255) DEFAULT NULL,
  `nas_perso_` varchar(9) DEFAULT NULL,
  `tel_dom_perso` varchar(255) DEFAULT NULL,
  `tel_travail_perso` varchar(255) DEFAULT NULL,
  `tel_mobile_perso` varchar(255) DEFAULT NULL,
  `adresse_perso_city` varchar(100) DEFAULT NULL,
  `adresse_perso_state` varchar(100) DEFAULT NULL,
  `adresse_perso_postalcode` varchar(20) DEFAULT NULL,
  `adresse_perso_country` varchar(100) DEFAULT NULL,
  `adresse_perso` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email_perso` varchar(255) DEFAULT NULL,
  `naissance_perso` date DEFAULT NULL,
  `emploi_perso` varchar(100) DEFAULT NULL,
  `education_perso` varchar(100) DEFAULT NULL,
  `education_perso_autre` varchar(255) DEFAULT NULL,
  `groupe_designe` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pat_patients`
--

LOCK TABLES `pat_patients` WRITE;
/*!40000 ALTER TABLE `pat_patients` DISABLE KEYS */;
INSERT INTO `pat_patients` VALUES ('eebdb80f-916a-7997-04e7-5ba578db29e3','2018-09-21 23:02:47','2018-10-12 23:00:44','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4',NULL,0,'66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','Mr.','Jérémie','Pillon',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'012345678',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pillon','Jérémie','foobar!!!ss',NULL,NULL,'aucun',NULL,NULL);
/*!40000 ALTER TABLE `pat_patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pat_patients_accounts_c`
--

DROP TABLE IF EXISTS `pat_patients_accounts_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pat_patients_accounts_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `pat_patients_accountspat_patients_ida` varchar(36) DEFAULT NULL,
  `pat_patients_accountsaccounts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pat_patients_accounts_ida1` (`pat_patients_accountspat_patients_ida`),
  KEY `pat_patients_accounts_idb2` (`pat_patients_accountsaccounts_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pat_patients_accounts_c`
--

LOCK TABLES `pat_patients_accounts_c` WRITE;
/*!40000 ALTER TABLE `pat_patients_accounts_c` DISABLE KEYS */;
INSERT INTO `pat_patients_accounts_c` VALUES ('367dba9f-0c9a-1e3e-5264-5ba57d96e10d','2018-09-21 23:23:50',0,'eebdb80f-916a-7997-04e7-5ba578db29e3','e9ee4d41-7a49-544c-c2c7-5ba56a95b3fb');
/*!40000 ALTER TABLE `pat_patients_accounts_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pat_patients_audit`
--

DROP TABLE IF EXISTS `pat_patients_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pat_patients_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_pat_patients_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pat_patients_audit`
--

LOCK TABLES `pat_patients_audit` WRITE;
/*!40000 ALTER TABLE `pat_patients_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `pat_patients_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pat_patients_pat_partenariats_c`
--

DROP TABLE IF EXISTS `pat_patients_pat_partenariats_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pat_patients_pat_partenariats_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `pat_patients_pat_partenariatspat_patients_ida` varchar(36) DEFAULT NULL,
  `pat_patients_pat_partenariatspat_partenariats_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pat_patients_pat_partenariats_ida1` (`pat_patients_pat_partenariatspat_patients_ida`),
  KEY `pat_patients_pat_partenariats_idb2` (`pat_patients_pat_partenariatspat_partenariats_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pat_patients_pat_partenariats_c`
--

LOCK TABLES `pat_patients_pat_partenariats_c` WRITE;
/*!40000 ALTER TABLE `pat_patients_pat_partenariats_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `pat_patients_pat_partenariats_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `override_business_hours` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_contacts_1_c`
--

DROP TABLE IF EXISTS `project_contacts_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_contacts_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_contacts_1project_ida` varchar(36) DEFAULT NULL,
  `project_contacts_1contacts_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_contacts_1_alt` (`project_contacts_1project_ida`,`project_contacts_1contacts_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_contacts_1_c`
--

LOCK TABLES `project_contacts_1_c` WRITE;
/*!40000 ALTER TABLE `project_contacts_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_contacts_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_cstm`
--

DROP TABLE IF EXISTS `project_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_cstm`
--

LOCK TABLES `project_cstm` WRITE;
/*!40000 ALTER TABLE `project_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task`
--

DROP TABLE IF EXISTS `project_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `relationship_type` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task`
--

LOCK TABLES `project_task` WRITE;
/*!40000 ALTER TABLE `project_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_task_audit`
--

DROP TABLE IF EXISTS `project_task_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_project_task_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_task_audit`
--

LOCK TABLES `project_task_audit` WRITE;
/*!40000 ALTER TABLE `project_task_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_task_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_users_1_c`
--

DROP TABLE IF EXISTS `project_users_1_c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_users_1_c` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `project_users_1project_ida` varchar(36) DEFAULT NULL,
  `project_users_1users_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_users_1_alt` (`project_users_1project_ida`,`project_users_1users_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_users_1_c`
--

LOCK TABLES `project_users_1_c` WRITE;
/*!40000 ALTER TABLE `project_users_1_c` DISABLE KEYS */;
/*!40000 ALTER TABLE `project_users_1_c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_accounts`
--

DROP TABLE IF EXISTS `projects_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_acct_proj` (`project_id`),
  KEY `idx_proj_acct_acct` (`account_id`),
  KEY `projects_accounts_alt` (`project_id`,`account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_accounts`
--

LOCK TABLES `projects_accounts` WRITE;
/*!40000 ALTER TABLE `projects_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_bugs`
--

DROP TABLE IF EXISTS `projects_bugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_bug_proj` (`project_id`),
  KEY `idx_proj_bug_bug` (`bug_id`),
  KEY `projects_bugs_alt` (`project_id`,`bug_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_bugs`
--

LOCK TABLES `projects_bugs` WRITE;
/*!40000 ALTER TABLE `projects_bugs` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_bugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_cases`
--

DROP TABLE IF EXISTS `projects_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_case_proj` (`project_id`),
  KEY `idx_proj_case_case` (`case_id`),
  KEY `projects_cases_alt` (`project_id`,`case_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_cases`
--

LOCK TABLES `projects_cases` WRITE;
/*!40000 ALTER TABLE `projects_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_contacts`
--

DROP TABLE IF EXISTS `projects_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_con_proj` (`project_id`),
  KEY `idx_proj_con_con` (`contact_id`),
  KEY `projects_contacts_alt` (`project_id`,`contact_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_contacts`
--

LOCK TABLES `projects_contacts` WRITE;
/*!40000 ALTER TABLE `projects_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_opportunities`
--

DROP TABLE IF EXISTS `projects_opportunities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_opp_proj` (`project_id`),
  KEY `idx_proj_opp_opp` (`opportunity_id`),
  KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_opportunities`
--

LOCK TABLES `projects_opportunities` WRITE;
/*!40000 ALTER TABLE `projects_opportunities` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_opportunities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_products`
--

DROP TABLE IF EXISTS `projects_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_proj_prod_project` (`project_id`),
  KEY `idx_proj_prod_product` (`product_id`),
  KEY `projects_products_alt` (`project_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_products`
--

LOCK TABLES `projects_products` WRITE;
/*!40000 ALTER TABLE `projects_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_list_campaigns`
--

DROP TABLE IF EXISTS `prospect_list_campaigns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_pro_id` (`prospect_list_id`),
  KEY `idx_cam_id` (`campaign_id`),
  KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_list_campaigns`
--

LOCK TABLES `prospect_list_campaigns` WRITE;
/*!40000 ALTER TABLE `prospect_list_campaigns` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_list_campaigns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists`
--

DROP TABLE IF EXISTS `prospect_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_prospect_list_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists`
--

LOCK TABLES `prospect_lists` WRITE;
/*!40000 ALTER TABLE `prospect_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospect_lists_prospects`
--

DROP TABLE IF EXISTS `prospect_lists_prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_plp_pro_id` (`prospect_list_id`),
  KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospect_lists_prospects`
--

LOCK TABLES `prospect_lists_prospects` WRITE;
/*!40000 ALTER TABLE `prospect_lists_prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospect_lists_prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects`
--

DROP TABLE IF EXISTS `prospects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `lawful_basis` text,
  `date_reviewed` date DEFAULT NULL,
  `lawful_basis_source` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL AUTO_INCREMENT,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prospect_auto_tracker_key` (`tracker_key`),
  KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  KEY `idx_prospects_id_del` (`id`,`deleted`),
  KEY `idx_prospects_assigned` (`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects`
--

LOCK TABLES `prospects` WRITE;
/*!40000 ALTER TABLE `prospects` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospects_cstm`
--

DROP TABLE IF EXISTS `prospects_cstm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospects_cstm` (
  `id_c` char(36) NOT NULL,
  `jjwg_maps_lng_c` float(11,8) DEFAULT '0.00000000',
  `jjwg_maps_lat_c` float(10,8) DEFAULT '0.00000000',
  `jjwg_maps_geocode_status_c` varchar(255) DEFAULT NULL,
  `jjwg_maps_address_c` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_c`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospects_cstm`
--

LOCK TABLES `prospects_cstm` WRITE;
/*!40000 ALTER TABLE `prospects_cstm` DISABLE KEYS */;
/*!40000 ALTER TABLE `prospects_cstm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(64) DEFAULT NULL,
  `join_key_lhs` varchar(64) DEFAULT NULL,
  `join_key_rhs` varchar(64) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_rel_name` (`relationship_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES ('5f7cccb8-7354-c10f-3134-5bede36f22e0','leads_modified_user','Users','users','id','Leads','leads','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5fbb4d18-7cb9-6f33-4614-5bede3ee0de9','leads_created_by','Users','users','id','Leads','leads','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5ff9c124-77c1-d609-0e97-5bede3c4e7da','leads_assigned_user','Users','users','id','Leads','leads','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6076ce30-0650-bbd7-805c-5bede3b886d8','securitygroups_leads','SecurityGroups','securitygroups','id','Leads','leads','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Leads',0,0),('60b54cef-fd29-bded-f96b-5bede3a5e047','leads_email_addresses','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Leads',0,0),('60f3cfd7-5bec-abee-e506-5bede3e098b4','leads_email_addresses_primary','Leads','leads','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('613245cc-62a5-d1b3-175e-5bede33144d8','lead_direct_reports','Leads','leads','id','Leads','leads','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6170c05e-64cf-8a69-5207-5bede3da75ba','lead_tasks','Leads','leads','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('61af4a3c-41c2-0ed4-c8a7-5bede33487d6','lead_notes','Leads','leads','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('61edc778-d863-3689-8649-5bede39b9f67','lead_meetings','Leads','leads','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('626aca8f-ad95-82bf-532b-5bede3a2919a','lead_calls','Leads','leads','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('62e7ca2d-425a-284f-b248-5bede3898175','lead_emails','Leads','leads','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('63264d2c-2732-d470-ddc1-5bede340341c','lead_campaign_log','Leads','leads','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Leads',0,0),('714f45f4-0187-ccf7-2f51-5bede302d076','cases_modified_user','Users','users','id','Cases','cases','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('718dcdfe-e900-c7bf-ae00-5bede33c4330','cases_created_by','Users','users','id','Cases','cases','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('720aceb5-4f64-4fc3-a007-5bede368d72d','cases_assigned_user','Users','users','id','Cases','cases','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72494ac3-83e5-b544-b9b2-5bede3c91896','securitygroups_cases','SecurityGroups','securitygroups','id','Cases','cases','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Cases',0,0),('7287ce66-617b-bab3-7de5-5bede3c95c68','case_calls','Cases','cases','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('7304c933-cf15-b381-1284-5bede32f02e7','case_tasks','Cases','cases','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('7343444b-d474-f329-0e39-5bede3789a48','case_notes','Cases','cases','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('7381cab9-3275-5003-b904-5bede35f76fb','case_meetings','Cases','cases','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('73c04526-aeca-8fcf-b4a4-5bede3edb3a8','case_emails','Cases','cases','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('73fecaf1-bd79-9a1e-397e-5bede3ea5e95','cases_created_contact','Contacts','contacts','id','Cases','cases','contact_created_by_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7ff54954-da5d-1932-af80-5bede3e684f7','bugs_modified_user','Users','users','id','Bugs','bugs','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8033c23f-b0c2-5dd9-c1c2-5bede32682a2','bugs_created_by','Users','users','id','Bugs','bugs','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('80724619-b8ab-a94c-f6c7-5bede3a96011','bugs_assigned_user','Users','users','id','Bugs','bugs','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('80b0c38b-4e66-02bc-38d7-5bede3a8d0ac','securitygroups_bugs','SecurityGroups','securitygroups','id','Bugs','bugs','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Bugs',0,0),('80ef46af-6b5b-794d-0743-5bede3cf765e','bug_tasks','Bugs','bugs','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('816c4f6e-8361-49ca-7674-5bede3199c11','bug_meetings','Bugs','bugs','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('81aac5ae-63fa-19c8-a814-5bede32a608c','bug_calls','Bugs','bugs','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('81e94946-fbb9-8d9f-9d99-5bede38146ec','bug_emails','Bugs','bugs','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('826649f7-ddd6-a677-c1ea-5bede3024d0e','bug_notes','Bugs','bugs','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Bugs',0,0),('82a4c047-141a-732f-774a-5bede38256ae','bugs_release','Releases','releases','id','Bugs','bugs','found_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('82e34cf1-1d29-7f49-580a-5bede3ef103e','bugs_fixed_in_release','Releases','releases','id','Bugs','bugs','fixed_in_release',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('845a43ed-f1cf-cc73-da44-5bede38ac8ed','user_direct_reports','Users','users','id','Users','users','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8498c972-1e61-566b-4933-5bede32239ac','users_email_addresses','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Users',0,0),('8515cfd8-973b-0214-a040-5bede34e7b52','users_email_addresses_primary','Users','users','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('8ab346b5-07d9-d6c2-aab7-5bede382ed84','campaignlog_contact','CampaignLog','campaign_log','related_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8af1c734-0d74-d21a-e822-5bede30449df','campaignlog_lead','CampaignLog','campaign_log','related_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8b6ec144-68e4-a131-d4b9-5bede3b4f0e1','campaignlog_created_opportunities','CampaignLog','campaign_log','related_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8bad4b3d-449f-16ad-4456-5bede378d07d','campaignlog_targeted_users','CampaignLog','campaign_log','target_id','Users','users','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8bebc3d3-a454-37db-55ec-5bede31725c8','campaignlog_sent_emails','CampaignLog','campaign_log','related_id','Emails','emails','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('94f44ed5-8c9c-06df-a45f-5bede301d740','securitygroups_project','SecurityGroups','securitygroups','id','Project','project','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Project',0,0),('9532c4a2-1c8a-081f-5158-5bede33876dc','projects_notes','Project','project','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('95714ffc-64ee-171c-129b-5bede374d206','projects_tasks','Project','project','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('95afcd89-db21-b633-2214-5bede3c1c3b5','projects_meetings','Project','project','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('962cc6da-34ca-2d19-7600-5bede342fd2f','projects_calls','Project','project','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('966b4805-48be-8ca9-0839-5bede32ada08','projects_emails','Project','project','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('96a9cc5b-996a-871e-2710-5bede3894295','projects_project_tasks','Project','project','id','ProjectTask','project_task','project_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('96e84620-9a4c-51be-6ca3-5bede329b89a','projects_assigned_user','Users','users','id','Project','project','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('97654d15-1122-44c6-6e6a-5bede36521bf','projects_modified_user','Users','users','id','Project','project','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('97e24ff5-d8be-226b-0032-5bede3010243','projects_created_by','Users','users','id','Project','project','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a2decb37-fef8-9e92-9009-5bede3ca95e5','securitygroups_projecttask','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('a31d442c-631e-e179-f11f-5bede353a604','project_tasks_notes','ProjectTask','project_task','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('a35bc682-878b-e868-e07f-5bede3459408','project_tasks_tasks','ProjectTask','project_task','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('a39a49d1-f8d8-3f55-87fb-5bede39f8df0','project_tasks_meetings','ProjectTask','project_task','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('a4174d95-e07a-dcb5-50e8-5bede3c806b3','project_tasks_calls','ProjectTask','project_task','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('a455c7f7-7127-de55-eae3-5bede3c44ac6','project_tasks_emails','ProjectTask','project_task','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','ProjectTask',0,0),('a4944a32-699c-b8de-a6d1-5bede3b0ffd4','project_tasks_assigned_user','Users','users','id','ProjectTask','project_task','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a4d2cbd7-b83d-8c41-5beb-5bede3b4bec4','project_tasks_modified_user','Users','users','id','ProjectTask','project_task','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a54fc12a-8777-86a7-bc36-5bede37b0783','project_tasks_created_by','Users','users','id','ProjectTask','project_task','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b2fbca1f-b396-07db-f0e7-5bede34a90ec','campaigns_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b3b7488b-7707-e47d-dcd2-5bede32e0367','campaigns_created_by','Users','users','id','Campaigns','campaigns','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b434414f-f21e-516a-a5bf-5bede3038bc3','campaigns_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b52e4144-40d7-4352-90fb-5bede3d9b0ed','securitygroups_campaigns','SecurityGroups','securitygroups','id','Campaigns','campaigns','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Campaigns',0,0),('b5ab4b4f-c426-80fd-babb-5bede353d95b','campaign_accounts','Campaigns','campaigns','id','Accounts','accounts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b666c485-8ced-2b2d-6372-5bede3568042','campaign_contacts','Campaigns','campaigns','id','Contacts','contacts','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b6e3c4b4-3d3e-7cc8-1adc-5bede308ae86','campaign_leads','Campaigns','campaigns','id','Leads','leads','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b760c5a0-96b2-2a07-12e6-5bede3fef32b','campaign_prospects','Campaigns','campaigns','id','Prospects','prospects','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b81c4e7d-42bb-2080-c149-5bede3b1074f','campaign_opportunities','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b8d7cf35-b852-2909-fa87-5bede31f369b','campaign_email_marketing','Campaigns','campaigns','id','EmailMarketing','email_marketing','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b954cfc3-b9e1-2d5f-de6d-5bede3ab3c05','campaign_emailman','Campaigns','campaigns','id','EmailMan','emailman','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b9d1c71d-809d-53e7-577d-5bede3e20200','campaign_campaignlog','Campaigns','campaigns','id','CampaignLog','campaign_log','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ba4ecdd7-2ba6-bf57-40ca-5bede3f8aa49','campaign_assigned_user','Users','users','id','Campaigns','campaigns','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bacbc748-b1f8-efb6-cc0a-5bede33b6196','campaign_modified_user','Users','users','id','Campaigns','campaigns','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bb874521-ce8f-c2cd-53db-5bede3d6e36f','surveyresponses_campaigns','Campaigns','campaigns','id','SurveyResponses','surveyresponses','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c73f4c6a-6b59-f250-aa2e-5bede31750d7','prospectlists_assigned_user','Users','users','id','prospectlists','prospect_lists','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c7bc4bc8-ee46-ba66-10ed-5bede3fc1726','securitygroups_prospectlists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('d911cd77-4e8d-fa77-2847-5bede35aadab','prospects_modified_user','Users','users','id','Prospects','prospects','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d9cd467a-d18e-03bb-4f61-5bede368c682','prospects_created_by','Users','users','id','Prospects','prospects','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('da88cfbe-0f17-7cb5-412b-5bede38c3402','prospects_assigned_user','Users','users','id','Prospects','prospects','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('db05c941-40c7-2dd6-3cd8-5bede3e215c0','securitygroups_prospects','SecurityGroups','securitygroups','id','Prospects','prospects','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Prospects',0,0),('dbc14f05-6a14-841e-11d0-5bede34893bb','prospects_email_addresses','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Prospects',0,0),('dc3e459d-3dc9-51e6-0189-5bede3d80d85','prospects_email_addresses_primary','Prospects','prospects','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('dcf9c556-6c51-202c-c968-5bede39316b4','prospect_tasks','Prospects','prospects','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('ddb54401-1a97-946f-8b5a-5bede30621d3','prospect_notes','Prospects','prospects','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('de32414c-08e3-4e5c-51aa-5bede3a04c14','prospect_meetings','Prospects','prospects','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('deaf4982-580e-b7e4-b0af-5bede34d9a6f','prospect_calls','Prospects','prospects','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('df2c4538-fae5-6728-2e23-5bede31bd232','prospect_emails','Prospects','prospects','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('dfe7c24b-eaa4-2103-8649-5bede323a5d1','prospect_campaign_log','Prospects','prospects','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Prospects',0,0),('e96d4699-8fdd-393b-afc6-5bede3d1a808','email_template_email_marketings','EmailTemplates','email_templates','id','EmailMarketing','email_marketing','template_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ef0ac040-c176-6d1a-8146-5bede382d086','campaign_campaigntrakers','Campaigns','campaigns','id','CampaignTrackers','campaign_trkrs','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1c97cfc5-2e40-d2f4-d35f-5bede324f096','schedulers_created_by_rel','Users','users','id','Schedulers','schedulers','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('1d14c3b2-ded1-1d67-10e5-5bede3f64ff4','schedulers_modified_user_id_rel','Users','users','id','Schedulers','schedulers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1dd04aa9-2b6c-73a3-f8ca-5bede3e47645','schedulers_jobs_rel','Schedulers','schedulers','id','SchedulersJobs','job_queue','scheduler_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1f85cd6c-4bc6-f444-f493-5bede38c8517','schedulersjobs_assigned_user','Users','users','id','SchedulersJobs','job_queue','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3407c0b3-0f1e-8845-c510-5bede36c21ab','contacts_modified_user','Users','users','id','Contacts','contacts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3484cc8f-8505-5cf1-ec01-5bede33a3cbc','contacts_created_by','Users','users','id','Contacts','contacts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('34c348cd-923d-25b3-c8ab-5bede3bb39c6','contacts_assigned_user','Users','users','id','Contacts','contacts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('354049c1-94b3-adc0-5bb8-5bede377f845','securitygroups_contacts','SecurityGroups','securitygroups','id','Contacts','contacts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Contacts',0,0),('35bd4054-f919-122b-49cf-5bede3009b39','contacts_email_addresses','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Contacts',0,0),('36b74e0e-5da8-4e3d-68f1-5bede3015d81','contacts_email_addresses_primary','Contacts','contacts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('3772ca29-9870-ea6e-e22c-5bede36a41ff','contact_direct_reports','Contacts','contacts','id','Contacts','contacts','reports_to_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('382e473b-6dad-3b66-51ed-5bede35ac059','contact_leads','Contacts','contacts','id','Leads','leads','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('38ab4b91-4d82-d1ca-8d31-5bede3d6a1e5','contact_notes','Contacts','contacts','id','Notes','notes','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('39284f07-2d5a-6235-42d8-5bede3afac1f','contact_tasks','Contacts','contacts','id','Tasks','tasks','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('39a54926-4f3a-67ce-ea94-5bede3f36c7f','contact_tasks_parent','Contacts','contacts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('3a9f4cf7-dcd5-83ed-ee37-5bede3621719','contact_notes_parent','Contacts','contacts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('3b5ac0d0-0538-25d6-2840-5bede3af5222','contact_campaign_log','Contacts','contacts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Contacts',0,0),('3c1640c3-771f-d3e5-52b8-5bede3186afb','contact_aos_quotes','Contacts','contacts','id','AOS_Quotes','aos_quotes','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3cd1ca77-73f6-0234-87b7-5bede3cf2ff2','contact_aos_invoices','Contacts','contacts','id','AOS_Invoices','aos_invoices','billing_contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3d4ec2b9-dab1-c577-965c-5bede33e0689','contact_aos_contracts','Contacts','contacts','id','AOS_Contracts','aos_contracts','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3dcbce8d-c13b-96e1-7964-5bede37e26e2','contacts_aop_case_updates','Contacts','contacts','id','AOP_Case_Updates','aop_case_updates','contact_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5868486b-2842-200f-551e-5bede3779e7a','accounts_modified_user','Users','users','id','Accounts','accounts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('58a6c0b7-02f8-cc37-d38a-5bede354fd69','accounts_created_by','Users','users','id','Accounts','accounts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('58e540fb-652c-bd9f-0f9b-5bede3fd67e9','accounts_assigned_user','Users','users','id','Accounts','accounts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('596248f7-db94-b192-bc2d-5bede37ee74e','securitygroups_accounts','SecurityGroups','securitygroups','id','Accounts','accounts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Accounts',0,0),('59df4fe1-cec7-140c-9427-5bede3ff8bf1','accounts_email_addresses','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','Accounts',0,0),('5a1dc575-99fd-6ee9-092e-5bede3397036','accounts_email_addresses_primary','Accounts','accounts','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('5ad94bfa-86c3-b519-16a4-5bede335ef87','member_accounts','Accounts','accounts','id','Accounts','accounts','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5b564950-07f2-6bed-8651-5bede3cb03c0','account_cases','Accounts','accounts','id','Cases','cases','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5bd34605-b4cf-9df9-0c29-5bede3a12449','account_tasks','Accounts','accounts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('5c11cd9d-e8f8-dfce-d60a-5bede33260af','account_notes','Accounts','accounts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('5c8ecc1a-5867-6da3-321b-5bede39e895d','account_meetings','Accounts','accounts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('5d4a45f7-d072-85ee-edd3-5bede37bc84f','account_calls','Accounts','accounts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('5e05ca9f-b56d-f115-8f43-5bede3c377e2','account_emails','Accounts','accounts','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('5e444f27-21b7-482b-53d7-5bede3c8d665','account_leads','Accounts','accounts','id','Leads','leads','account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5e82c53f-23f1-7967-12ae-5bede300712f','account_campaign_log','Accounts','accounts','id','CampaignLog','campaign_log','target_id',NULL,NULL,NULL,'one-to-many','target_type','Accounts',0,0),('5f3e4d5a-b037-6946-5990-5bede3a9f01a','account_aos_quotes','Accounts','accounts','id','AOS_Quotes','aos_quotes','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5ff9cbe9-e0f7-5404-3ece-5bede35c570b','account_aos_invoices','Accounts','accounts','id','AOS_Invoices','aos_invoices','billing_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6076c55d-b206-d7c0-f7a3-5bede39f59e2','account_aos_contracts','Accounts','accounts','id','AOS_Contracts','aos_contracts','contract_account_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('714f439f-650d-fdb1-e98e-5bede3a31be0','opportunities_modified_user','Users','users','id','Opportunities','opportunities','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('71cc436c-5b1a-3ccd-fb34-5bede3cea12b','opportunities_created_by','Users','users','id','Opportunities','opportunities','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('724947aa-85dd-e21d-7fdf-5bede3303110','opportunities_assigned_user','Users','users','id','Opportunities','opportunities','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72c64076-a850-fbff-28e3-5bede361d8cf','securitygroups_opportunities','SecurityGroups','securitygroups','id','Opportunities','opportunities','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Opportunities',0,0),('7381c549-7ff6-d5be-ec49-5bede30ecff0','opportunity_calls','Opportunities','opportunities','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('743d47f2-60a3-7817-66dc-5bede311253d','opportunity_meetings','Opportunities','opportunities','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('74ba425a-841f-7123-3f01-5bede3468b17','opportunity_tasks','Opportunities','opportunities','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('75374240-7875-0648-2b08-5bede393eaae','opportunity_notes','Opportunities','opportunities','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('75b44413-24e1-f9c1-60eb-5bede34b3cb2','opportunity_emails','Opportunities','opportunities','id','Emails','emails','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('766fce8d-152f-aad5-ae81-5bede3747dee','opportunity_leads','Opportunities','opportunities','id','Leads','leads','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('76eccaea-6c34-8d5a-3897-5bede3e25180','opportunity_currencies','Opportunities','opportunities','currency_id','Currencies','currencies','id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('77a84fe3-975a-ef56-6c8c-5bede340445c','opportunities_campaign','Campaigns','campaigns','id','Opportunities','opportunities','campaign_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('78254027-cdd7-4624-76c6-5bede359ae44','opportunity_aos_quotes','Opportunities','opportunities','id','AOS_Quotes','aos_quotes','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('78e0cdef-3a1e-15e7-4677-5bede3c6bc40','opportunity_aos_contracts','Opportunities','opportunities','id','AOS_Contracts','aos_contracts','opportunity_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('85d14c78-a497-ae95-50cd-5bede3fd95f9','securitygroups_emailtemplates','SecurityGroups','securitygroups','id','EmailTemplates','email_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','EmailTemplates',0,0),('864e494e-01cf-3f09-7e01-5bede3be4b5a','emailtemplates_assigned_user','Users','users','id','EmailTemplates','email_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('92c1c058-f03b-a88e-1109-5bede313c067','notes_assigned_user','Users','users','id','Notes','notes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('933ec4fa-2bd1-7778-53ad-5bede310c790','securitygroups_notes','SecurityGroups','securitygroups','id','Notes','notes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Notes',0,0),('93bbc11e-7382-cf54-ab0a-5bede379b4eb','notes_modified_user','Users','users','id','Notes','notes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('94774f8b-7f9f-1473-e6e0-5bede37ef841','notes_created_by','Users','users','id','Notes','notes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a1e4c66b-0ead-2840-8a0a-5bede37fcfa3','calls_modified_user','Users','users','id','Calls','calls','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a261c1ba-6374-e607-1c20-5bede3ba2fb1','calls_created_by','Users','users','id','Calls','calls','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a2dec417-e8db-dad4-7f83-5bede31a126b','calls_assigned_user','Users','users','id','Calls','calls','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a35bc274-f09e-3971-5bfe-5bede380f73a','securitygroups_calls','SecurityGroups','securitygroups','id','Calls','calls','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Calls',0,0),('a3d8cc05-d46f-7e19-9056-5bede3edc05a','calls_notes','Calls','calls','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Calls',0,0),('a494472e-67c4-e6b0-44dc-5bede3623ba1','calls_reschedule','Calls','calls','id','Calls_Reschedule','calls_reschedule','call_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ab6a435a-9134-1b5f-1db8-5bede3be1b1f','emails_modified_user','Users','users','id','Emails','emails','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ac25cc1f-7950-deec-1f6e-5bede3f5eeb7','emails_created_by','Users','users','id','Emails','emails','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aca2ce1d-e368-69f4-97f4-5bede38d3491','emails_assigned_user','Users','users','id','Emails','emails','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ad1fc3f3-5168-68db-fdb8-5bede3933cd2','securitygroups_emails','SecurityGroups','securitygroups','id','Emails','emails','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Emails',0,0),('ad9ccfcc-1217-c6fd-56ac-5bede3851c19','emails_notes_rel','Emails','emails','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ae19c2ee-b907-354e-643b-5bede367fc88','emails_contacts_rel','Emails','emails','id','Contacts','contacts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Contacts',0,0),('ae96cca2-121a-7731-adff-5bede3062d00','emails_accounts_rel','Emails','emails','id','Accounts','accounts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Accounts',0,0),('af13ce19-4eb5-bd16-435f-5bede3e249e5','emails_leads_rel','Emails','emails','id','Leads','leads','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Leads',0,0),('afcf4607-40de-5e99-ee18-5bede36d3bed','emails_aos_contracts_rel','Emails','emails','id','AOS_Contracts','aos_contracts','id','emails_beans','email_id','bean_id','many-to-many','bean_module','AOS_Contracts',0,0),('b04c4780-4c4b-c1ca-a0c8-5bede32d9722','emails_meetings_rel','Emails','emails','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bcbfc463-3878-18b8-3219-5bede3e8fcf1','meetings_modified_user','Users','users','id','Meetings','meetings','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bd3cc0c4-d18d-1d1e-7baa-5bede39047f4','meetings_created_by','Users','users','id','Meetings','meetings','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bd7b44c1-d245-c05d-f199-5bede388ce6d','meetings_assigned_user','Users','users','id','Meetings','meetings','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bdf84beb-5d94-dbd0-411f-5bede3fc452a','securitygroups_meetings','SecurityGroups','securitygroups','id','Meetings','meetings','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Meetings',0,0),('be754e50-6315-0b2a-72dc-5bede3fc51a0','meetings_notes','Meetings','meetings','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('cb274154-719b-77ce-3ab6-5bede32ec25e','tasks_modified_user','Users','users','id','Tasks','tasks','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cba44650-e15f-947d-09ef-5bede3e2c177','tasks_created_by','Users','users','id','Tasks','tasks','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cc2140cc-9215-db89-e936-5bede366f5e6','tasks_assigned_user','Users','users','id','Tasks','tasks','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cc9e4fe7-5ccf-3414-925f-5bede3703c25','securitygroups_tasks','SecurityGroups','securitygroups','id','Tasks','tasks','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Tasks',0,0),('cd1b45e4-3798-8de5-ec61-5bede3cae91a','tasks_notes','Tasks','tasks','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('239c0091-37d5-7bec-32fb-5bede30b5591','alerts_modified_user','Users','users','id','Alerts','alerts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b6c06b3-186a-b118-36d1-5bede33503d4','alerts_created_by','Users','users','id','Alerts','alerts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('37240fd4-f675-1ac3-3ef9-5bede3158ce3','alerts_assigned_user','Users','users','id','Alerts','alerts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1aa3c783-34de-78d7-f8ed-5bede3904263','documents_modified_user','Users','users','id','Documents','documents','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1ae2438b-8209-4c77-67e0-5bede3d634cb','documents_created_by','Users','users','id','Documents','documents','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1b5f491f-aecf-19d7-57f1-5bede379fdae','documents_assigned_user','Users','users','id','Documents','documents','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1bdc42dc-518a-f930-47d6-5bede33bd971','securitygroups_documents','SecurityGroups','securitygroups','id','Documents','documents','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Documents',0,0),('1c594aae-0948-5742-9780-5bede3b6c5d6','document_revisions','Documents','documents','id','DocumentRevisions','document_revisions','document_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('22f0c30a-3dc2-4636-dc2e-5bede34ebb7a','revisions_created_by','Users','users','id','DocumentRevisions','document_revisions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('36f5c043-544f-77d4-a757-5bede31d21b9','inbound_email_created_by','Users','users','id','InboundEmail','inbound_email','created_by',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('3772c678-b742-24a4-f750-5bede364c7b4','inbound_email_modified_user_id','Users','users','id','InboundEmail','inbound_email','modified_user_id',NULL,NULL,NULL,'one-to-one',NULL,NULL,0,0),('3ffe49a2-eb24-6b17-c0e9-5bede35df954','saved_search_assigned_user','Users','users','id','SavedSearch','saved_search','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('54804bc4-a84c-1fa7-1f21-5bede38ff2d7','spots_modified_user','Users','users','id','Spots','spots','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('54fd480a-0ab1-cf61-b52a-5bede382557a','spots_created_by','Users','users','id','Spots','spots','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('557a4da0-1461-1edc-686b-5bede345c99f','spots_assigned_user','Users','users','id','Spots','spots','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('55f7452b-e9f8-536e-29bd-5bede3b0b84f','securitygroups_spots','SecurityGroups','securitygroups','id','Spots','spots','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Spots',0,0),('5f3e4880-bb3e-2ed7-a5b4-5bede307af37','aobh_businesshours_modified_user','Users','users','id','AOBH_BusinessHours','aobh_businesshours','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5fbb462f-7e8a-90fc-2757-5bede3e7149a','aobh_businesshours_created_by','Users','users','id','AOBH_BusinessHours','aobh_businesshours','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('697f4714-dbc8-73c4-cff9-5bede372945b','sugarfeed_modified_user','Users','users','id','SugarFeed','sugarfeed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('69fc412e-5e03-03ad-c369-5bede3910dc3','sugarfeed_created_by','Users','users','id','SugarFeed','sugarfeed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6a794dff-67be-06be-4148-5bede3d6eb4c','sugarfeed_assigned_user','Users','users','id','SugarFeed','sugarfeed','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c0d4753-a002-786d-9ca8-5bede3067641','eapm_modified_user','Users','users','id','EAPM','eapm','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7c8a4aa2-869b-f8e5-8e44-5bede330b184','eapm_created_by','Users','users','id','EAPM','eapm','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7d07431b-36b0-8364-091f-5bede327b212','eapm_assigned_user','Users','users','id','EAPM','eapm','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8880c39e-be40-abb0-8ab5-5bede3c2ee40','oauthkeys_modified_user','Users','users','id','OAuthKeys','oauth_consumer','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('88fdc5bf-d837-94a2-f909-5bede3c106fb','oauthkeys_created_by','Users','users','id','OAuthKeys','oauth_consumer','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('897ac8f0-0dac-b30d-fc8b-5bede3bbb1a3','oauthkeys_assigned_user','Users','users','id','OAuthKeys','oauth_consumer','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('908f4f1a-1b0d-b560-c25f-5bede31c36b7','consumer_tokens','OAuthKeys','oauth_consumer','id','OAuthTokens','oauth_tokens','consumer',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('910c411d-9f19-d0ed-2657-5bede316d8cc','oauthtokens_assigned_user','Users','users','id','OAuthTokens','oauth_tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a167c64a-6813-d23c-14ff-5bede34bb512','am_projecttemplates_modified_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a1e4c0c4-11ec-4466-e158-5bede35b2bdc','am_projecttemplates_created_by','Users','users','id','AM_ProjectTemplates','am_projecttemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a261c235-0c95-dd6e-8b96-5bede3b85e8c','am_projecttemplates_assigned_user','Users','users','id','AM_ProjectTemplates','am_projecttemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ace1401e-9e92-7321-c7a2-5bede33c30cf','am_tasktemplates_modified_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ad1fcf12-ebb4-8275-ab50-5bede3e66928','am_tasktemplates_created_by','Users','users','id','AM_TaskTemplates','am_tasktemplates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ad9ccf40-83e0-5d24-9bc6-5bede34441eb','am_tasktemplates_assigned_user','Users','users','id','AM_TaskTemplates','am_tasktemplates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b184c4d8-c803-af97-a7b9-5bede3d039ca','favorites_modified_user','Users','users','id','Favorites','favorites','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b201ceac-dbe6-db7c-8577-5bede304717f','favorites_created_by','Users','users','id','Favorites','favorites','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b27ecfcf-2beb-e6e2-880f-5bede33ea439','favorites_assigned_user','Users','users','id','Favorites','favorites','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ba4ec6b2-34b2-4ad5-6bbf-5bede3cbff48','aok_knowledge_base_categories_modified_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ba8d4002-bf71-dc89-efe9-5bede367cb46','aok_knowledge_base_categories_created_by','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bacbc27b-0986-e2ac-524b-5bede3e5a728','aok_knowledge_base_categories_assigned_user','Users','users','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c395c658-0c8f-1890-9337-5bede3db21b7','aok_knowledgebase_modified_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c3d44771-eefb-a699-5099-5bede345cd2a','aok_knowledgebase_created_by','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c4514a39-4719-fb50-e206-5bede37bff11','aok_knowledgebase_assigned_user','Users','users','id','AOK_KnowledgeBase','aok_knowledgebase','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c50cc25b-ff5e-a8f4-429c-5bede3ca8d06','securitygroups_aok_knowledgebase','SecurityGroups','securitygroups','id','AOK_KnowledgeBase','aok_knowledgebase','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOK_KnowledgeBase',0,0),('cfcac83d-0a57-5283-e7bd-5bede3b66b01','reminders_modified_user','Users','users','id','Reminders','reminders','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d047ca0d-b12d-59c0-5eb8-5bede3631a79','reminders_created_by','Users','users','id','Reminders','reminders','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d0c4c0fd-54c2-7365-ae69-5bede315cd09','reminders_assigned_user','Users','users','id','Reminders','reminders','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dbffca23-2587-e84d-9f83-5bede302bc40','reminders_invitees_modified_user','Users','users','id','Reminders_Invitees','reminders_invitees','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dc3e4bcc-8617-9ff7-2db2-5bede301c6ea','reminders_invitees_created_by','Users','users','id','Reminders_Invitees','reminders_invitees','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dcbb44ad-9ac1-b181-ffcf-5bede35f00bd','reminders_invitees_assigned_user','Users','users','id','Reminders_Invitees','reminders_invitees','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e73acbdf-e8e7-52b9-25d3-5bede3528405','fp_events_modified_user','Users','users','id','FP_events','fp_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e7b7c3c3-88b0-0b7d-5044-5bede38585d8','fp_events_created_by','Users','users','id','FP_events','fp_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e7f642fb-2ae4-60ed-eb63-5bede325beac','fp_events_assigned_user','Users','users','id','FP_events','fp_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e834c54a-ebbb-9e58-c169-5bede3ea70a7','securitygroups_fp_events','SecurityGroups','securitygroups','id','FP_events','fp_events','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_events',0,0),('f17bc668-7746-49f5-9c95-5bede30fa0b7','fp_event_locations_modified_user','Users','users','id','FP_Event_Locations','fp_event_locations','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f1f8c275-a248-36fd-8547-5bede3420ba2','fp_event_locations_created_by','Users','users','id','FP_Event_Locations','fp_event_locations','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f2b44e7c-b2c5-d1ae-6524-5bede3117f1f','fp_event_locations_assigned_user','Users','users','id','FP_Event_Locations','fp_event_locations','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f2f2c8cc-8955-c6e9-0a27-5bede37a2398','securitygroups_fp_event_locations','SecurityGroups','securitygroups','id','FP_Event_Locations','fp_event_locations','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','FP_Event_Locations',0,0),('f36fc032-2a73-b69b-a458-5bede3f24024','optimistic_locking',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('f3ae42d7-ec6f-704c-189a-5bede3ead1aa','unified_search',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0),('a4840806-e4ed-0bef-6c71-5bede3eacdcd','aod_indexevent_modified_user','Users','users','id','AOD_IndexEvent','aod_indexevent','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ac540ba2-acbc-c752-ad3d-5bede38a03d3','aod_indexevent_created_by','Users','users','id','AOD_IndexEvent','aod_indexevent','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b4240b3c-c8db-f74c-8273-5bede3fbf74e','aod_indexevent_assigned_user','Users','users','id','AOD_IndexEvent','aod_indexevent','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('21b84cfe-9b64-7387-421b-5bede3d4b33e','aod_index_modified_user','Users','users','id','AOD_Index','aod_index','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('22354e8b-d009-4976-0505-5bede30ee0f4','aod_index_created_by','Users','users','id','AOD_Index','aod_index','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('22b24618-2505-9906-5303-5bede373c18e','aod_index_assigned_user','Users','users','id','AOD_Index','aod_index','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2a824810-28e5-239a-5d6e-5bede31d350a','aop_case_events_modified_user','Users','users','id','AOP_Case_Events','aop_case_events','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2aff4591-e48c-c4f2-db80-5bede3bd6d0e','aop_case_events_created_by','Users','users','id','AOP_Case_Events','aop_case_events','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2b7c4cf9-d6e5-96a6-b627-5bede3cdaf01','aop_case_events_assigned_user','Users','users','id','AOP_Case_Events','aop_case_events','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2bbac035-f5ce-69ae-5e30-5bede3626559','cases_aop_case_events','Cases','cases','id','AOP_Case_Events','aop_case_events','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('33c9408a-4165-dae9-d1df-5bede3934234','aop_case_updates_modified_user','Users','users','id','AOP_Case_Updates','aop_case_updates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3407c3bb-9dd7-34fc-75b3-5bede3cc6639','aop_case_updates_created_by','Users','users','id','AOP_Case_Updates','aop_case_updates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3484cfdd-221a-6347-f728-5bede3d70149','aop_case_updates_assigned_user','Users','users','id','AOP_Case_Updates','aop_case_updates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('34c347c6-8c6b-0ff5-9f02-5bede3d1dae2','cases_aop_case_updates','Cases','cases','id','AOP_Case_Updates','aop_case_updates','case_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('35404508-70cd-b35d-72da-5bede3d8fbee','aop_case_updates_notes','AOP_Case_Updates','aop_case_updates','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOP_Case_Updates',0,0),('4136cf9c-3fd6-25b5-eba0-5bede3f0609d','aor_reports_modified_user','Users','users','id','AOR_Reports','aor_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('41b3c67b-fc28-4566-65c3-5bede34703b8','aor_reports_created_by','Users','users','id','AOR_Reports','aor_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4230cadf-599e-a59f-73a8-5bede3f0003c','aor_reports_assigned_user','Users','users','id','AOR_Reports','aor_reports','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('426f4236-059f-3f96-d3bc-5bede3740b39','securitygroups_aor_reports','SecurityGroups','securitygroups','id','AOR_Reports','aor_reports','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOR_Reports',0,0),('42ec4161-ff2c-ae8f-42d7-5bede3cffc12','aor_reports_aor_fields','AOR_Reports','aor_reports','id','AOR_Fields','aor_fields','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('432acb8f-6050-adbd-f2e6-5bede3d2134f','aor_reports_aor_conditions','AOR_Reports','aor_reports','id','AOR_Conditions','aor_conditions','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('43694142-de86-8b3d-97bc-5bede3fa5d97','aor_scheduled_reports_aor_reports','AOR_Reports','aor_reports','id','AOR_Scheduled_Reports','aor_scheduled_reports','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4afac735-48e9-21cc-8332-5bede3eac553','aor_fields_modified_user','Users','users','id','AOR_Fields','aor_fields','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4b77cb68-693b-57ca-ab29-5bede3818def','aor_fields_created_by','Users','users','id','AOR_Fields','aor_fields','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('53864f9f-91c2-984b-3bf7-5bede3aec6cd','aor_charts_modified_user','Users','users','id','AOR_Charts','aor_charts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('53c4c226-9eda-c54f-c2f7-5bede3f11e7e','aor_charts_created_by','Users','users','id','AOR_Charts','aor_charts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5441cf13-2bc3-9fc0-f3d3-5bede36dd2d2','aor_charts_aor_reports','AOR_Reports','aor_reports','id','AOR_Charts','aor_charts','aor_report_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5b94c29e-992f-7990-52fa-5bede3b6b7c4','aor_conditions_modified_user','Users','users','id','AOR_Conditions','aor_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5bd340fd-5c08-2c2a-0dae-5bede3a9cf46','aor_conditions_created_by','Users','users','id','AOR_Conditions','aor_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('64dbc262-ff18-9fff-d3c8-5bede38a3105','aor_scheduled_reports_modified_user','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('651a4710-3acf-a51f-42d9-5bede3fd8294','aor_scheduled_reports_created_by','Users','users','id','AOR_Scheduled_Reports','aor_scheduled_reports','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('714f4cef-7f73-8c24-7f73-5bede3e22fac','aos_contracts_modified_user','Users','users','id','AOS_Contracts','aos_contracts','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('71cc401d-7396-6494-5d0b-5bede3f5cc5e','aos_contracts_created_by','Users','users','id','AOS_Contracts','aos_contracts','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('720ac667-570f-c078-1724-5bede32238d5','aos_contracts_assigned_user','Users','users','id','AOS_Contracts','aos_contracts','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('72494e77-3d82-936c-2592-5bede3f0233d','securitygroups_aos_contracts','SecurityGroups','securitygroups','id','AOS_Contracts','aos_contracts','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Contracts',0,0),('72c647c9-0ab9-ee27-1b37-5bede3e79dbe','aos_contracts_tasks','AOS_Contracts','aos_contracts','id','Tasks','tasks','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('7381ccb7-851d-7b76-4e3c-5bede356ac1c','aos_contracts_notes','AOS_Contracts','aos_contracts','id','Notes','notes','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('73fec672-12d2-812d-d59a-5bede3d3f72d','aos_contracts_meetings','AOS_Contracts','aos_contracts','id','Meetings','meetings','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('747bc2f0-5118-3e42-6173-5bede3b3b68c','aos_contracts_calls','AOS_Contracts','aos_contracts','id','Calls','calls','parent_id',NULL,NULL,NULL,'one-to-many','parent_type','AOS_Contracts',0,0),('74ba4373-f07a-f068-a36c-5bede3d706c8','aos_contracts_aos_products_quotes','AOS_Contracts','aos_contracts','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('75374864-71d9-5e65-92c5-5bede38e0303','aos_contracts_aos_line_item_groups','AOS_Contracts','aos_contracts','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('81e944ff-a661-6582-b57f-5bede3b4f7f8','aos_invoices_modified_user','Users','users','id','AOS_Invoices','aos_invoices','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8227c9ab-0aae-d45c-5857-5bede31fd260','aos_invoices_created_by','Users','users','id','AOS_Invoices','aos_invoices','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('82a4c7f7-3339-0900-901f-5bede3e724b6','aos_invoices_assigned_user','Users','users','id','AOS_Invoices','aos_invoices','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8321c3ee-198a-51c9-ce42-5bede35f9dcd','securitygroups_aos_invoices','SecurityGroups','securitygroups','id','AOS_Invoices','aos_invoices','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Invoices',0,0),('83604946-e318-5f5b-bc09-5bede3431e3f','aos_invoices_aos_product_quotes','AOS_Invoices','aos_invoices','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('83dd469c-fefa-5235-0e4b-5bede3cae1c8','aos_invoices_aos_line_item_groups','AOS_Invoices','aos_invoices','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8e1e449e-16a1-d553-d0d0-5bede30b3a08','aos_pdf_templates_modified_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8e5cc3c3-3617-27da-4c45-5bede3c77653','aos_pdf_templates_created_by','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8ed9c7b3-6669-f8b7-c5b9-5bede39f6346','aos_pdf_templates_assigned_user','Users','users','id','AOS_PDF_Templates','aos_pdf_templates','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8f56c91e-3263-042b-7c0c-5bede3292f6d','securitygroups_aos_pdf_templates','SecurityGroups','securitygroups','id','AOS_PDF_Templates','aos_pdf_templates','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_PDF_Templates',0,0),('9820c8bb-e8e9-8527-4501-5bede33ee6df','aos_product_categories_modified_user','Users','users','id','AOS_Product_Categories','aos_product_categories','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('98dc4989-3924-5ee3-b506-5bede38ef713','aos_product_categories_created_by','Users','users','id','AOS_Product_Categories','aos_product_categories','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('991ac28b-1ce2-cdc7-c492-5bede3422c8b','aos_product_categories_assigned_user','Users','users','id','AOS_Product_Categories','aos_product_categories','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9997c931-40b8-3afe-adcb-5bede396adfc','securitygroups_aos_product_categories','SecurityGroups','securitygroups','id','AOS_Product_Categories','aos_product_categories','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Product_Categories',0,0),('99d649fe-2427-caf6-7088-5bede33e97db','sub_product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Product_Categories','aos_product_categories','parent_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a455cf9c-cc8c-42b4-9956-5bede3355b8d','aos_products_modified_user','Users','users','id','AOS_Products','aos_products','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a4d2cc6f-1fd6-45ff-3bcf-5bede3392c67','aos_products_created_by','Users','users','id','AOS_Products','aos_products','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a511447d-7a9a-96a8-3b06-5bede32f931e','aos_products_assigned_user','Users','users','id','AOS_Products','aos_products','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a58e4912-534a-47fe-dab0-5bede3414dcb','securitygroups_aos_products','SecurityGroups','securitygroups','id','AOS_Products','aos_products','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Products',0,0),('a5ccca66-b4f7-311e-1dc8-5bede367bf2e','product_categories','AOS_Product_Categories','aos_product_categories','id','AOS_Products','aos_products','aos_product_category_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b00dc6d7-df92-6593-efa5-5bede3dc6edd','aos_products_quotes_modified_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b0c94c71-7f04-0354-6bff-5bede3903574','aos_products_quotes_created_by','Users','users','id','AOS_Products_Quotes','aos_products_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b146420f-776b-55ce-3719-5bede3642285','aos_products_quotes_assigned_user','Users','users','id','AOS_Products_Quotes','aos_products_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b1c341e4-4d67-ef40-d76c-5bede30dfc97','aos_product_quotes_aos_products','AOS_Products','aos_products','id','AOS_Products_Quotes','aos_products_quotes','product_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bd7b4b27-550f-8abf-cc0f-5bede31b422a','aos_line_item_groups_modified_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bdf841fe-170b-296e-47f7-5bede360a2a3','aos_line_item_groups_created_by','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('be754393-eb26-836f-6856-5bede343572f','aos_line_item_groups_assigned_user','Users','users','id','AOS_Line_Item_Groups','aos_line_item_groups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bef247c7-76c5-c2b8-d256-5bede3a8eafb','groups_aos_product_quotes','AOS_Line_Item_Groups','aos_line_item_groups','id','AOS_Products_Quotes','aos_products_quotes','group_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cd59c007-fdf9-bfc1-160b-5bede3521b54','aos_quotes_modified_user','Users','users','id','AOS_Quotes','aos_quotes','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cdd6c15c-b675-b609-24b1-5bede3e69dd0','aos_quotes_created_by','Users','users','id','AOS_Quotes','aos_quotes','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ce53cbca-3268-8f06-58c9-5bede35814ff','aos_quotes_assigned_user','Users','users','id','AOS_Quotes','aos_quotes','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ced0c021-3a8b-dd68-b8a3-5bede389bb4a','securitygroups_aos_quotes','SecurityGroups','securitygroups','id','AOS_Quotes','aos_quotes','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOS_Quotes',0,0),('cf4dce27-f72b-0505-8ebe-5bede338e885','aos_quotes_aos_product_quotes','AOS_Quotes','aos_quotes','id','AOS_Products_Quotes','aos_products_quotes','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('cf8c48dd-7263-0b8b-07b9-5bede3fa3120','aos_quotes_aos_line_item_groups','AOS_Quotes','aos_quotes','id','AOS_Line_Item_Groups','aos_line_item_groups','parent_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('da4a40e5-c148-9c57-d33a-5bede3eef937','aow_actions_modified_user','Users','users','id','AOW_Actions','aow_actions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('dac74c4a-7da4-6b0a-7beb-5bede3c08e0c','aow_actions_created_by','Users','users','id','AOW_Actions','aow_actions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e6fc4f09-e6f2-9400-1f8a-5bede365fba5','aow_workflow_modified_user','Users','users','id','AOW_WorkFlow','aow_workflow','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e7794c86-b29a-704d-97ee-5bede362e291','aow_workflow_created_by','Users','users','id','AOW_WorkFlow','aow_workflow','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e834c481-68f1-ce63-1163-5bede396e25b','aow_workflow_assigned_user','Users','users','id','AOW_WorkFlow','aow_workflow','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e8b1cf95-c163-d3ca-670c-5bede3caf19a','securitygroups_aow_workflow','SecurityGroups','securitygroups','id','AOW_WorkFlow','aow_workflow','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','AOW_WorkFlow',0,0),('e96d479d-798d-f52d-96a0-5bede3194c9f','aow_workflow_aow_conditions','AOW_WorkFlow','aow_workflow','id','AOW_Conditions','aow_conditions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('e9ea48e9-a50a-14b1-691c-5bede326567c','aow_workflow_aow_actions','AOW_WorkFlow','aow_workflow','id','AOW_Actions','aow_actions','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ea67451c-b051-8c0c-ed0e-5bede3aec39a','aow_workflow_aow_processed','AOW_WorkFlow','aow_workflow','id','AOW_Processed','aow_processed','aow_workflow_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f2f2c9f9-fc69-7e93-ca0b-5bede329f219','aow_processed_modified_user','Users','users','id','AOW_Processed','aow_processed','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('f3ae43e3-9e4a-b20b-7ed8-5bede380c14e','aow_processed_created_by','Users','users','id','AOW_Processed','aow_processed','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('98cc02dd-bfcc-950b-54a7-5bede3b06264','aow_conditions_modified_user','Users','users','id','AOW_Conditions','aow_conditions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a4840f3e-5a8b-925a-e54e-5bede37b9a42','aow_conditions_created_by','Users','users','id','AOW_Conditions','aow_conditions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1ae247d9-e22a-e89e-3bc3-5bede3e424aa','jjwg_maps_modified_user','Users','users','id','jjwg_Maps','jjwg_maps','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1b20caa4-3ca0-f7c4-8199-5bede3c28e8e','jjwg_maps_created_by','Users','users','id','jjwg_Maps','jjwg_maps','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1b9dc909-5af3-90a4-6eb5-5bede3ccd507','jjwg_maps_assigned_user','Users','users','id','jjwg_Maps','jjwg_maps','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('1bdc4612-71f8-5df8-f89a-5bede3ba7706','securitygroups_jjwg_maps','SecurityGroups','securitygroups','id','jjwg_Maps','jjwg_maps','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Maps',0,0),('1c59437b-8d0c-d86a-b1ea-5bede3ca808d','jjwg_Maps_accounts','jjwg_Maps','jjwg_Maps','parent_id','Accounts','accounts','id',NULL,NULL,NULL,'one-to-many','parent_type','Accounts',0,0),('1c97c6f9-dccd-e393-18bd-5bede3168bd1','jjwg_Maps_contacts','jjwg_Maps','jjwg_Maps','parent_id','Contacts','contacts','id',NULL,NULL,NULL,'one-to-many','parent_type','Contacts',0,0),('1cd6436c-c05b-67ce-60b7-5bede306dcfe','jjwg_Maps_leads','jjwg_Maps','jjwg_Maps','parent_id','Leads','leads','id',NULL,NULL,NULL,'one-to-many','parent_type','Leads',0,0),('1d534cb0-f37b-aa95-fb0e-5bede3958d7a','jjwg_Maps_opportunities','jjwg_Maps','jjwg_Maps','parent_id','Opportunities','opportunities','id',NULL,NULL,NULL,'one-to-many','parent_type','Opportunities',0,0),('1dd0452f-e916-e49c-e7d1-5bede35fe9a5','jjwg_Maps_cases','jjwg_Maps','jjwg_Maps','parent_id','Cases','cases','id',NULL,NULL,NULL,'one-to-many','parent_type','Cases',0,0),('1e4d4f8e-1fdc-fe83-063e-5bede35dbf45','jjwg_Maps_projects','jjwg_Maps','jjwg_Maps','parent_id','Project','project','id',NULL,NULL,NULL,'one-to-many','parent_type','Project',0,0),('1e8bc0de-1b6f-3781-5f8f-5bede34ff18b','jjwg_Maps_meetings','jjwg_Maps','jjwg_Maps','parent_id','Meetings','meetings','id',NULL,NULL,NULL,'one-to-many','parent_type','Meetings',0,0),('1eca46ba-f8c4-0bdf-4cf7-5bede3d9c890','jjwg_Maps_prospects','jjwg_Maps','jjwg_Maps','parent_id','Prospects','prospects','id',NULL,NULL,NULL,'one-to-many','parent_type','Prospects',0,0),('2cf34c17-a0e6-c8eb-46a1-5bede37f6852','jjwg_markers_modified_user','Users','users','id','jjwg_Markers','jjwg_markers','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2d31c670-0de2-f8a8-4874-5bede38014f3','jjwg_markers_created_by','Users','users','id','jjwg_Markers','jjwg_markers','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2daec59d-534e-534d-ea2e-5bede316f90a','jjwg_markers_assigned_user','Users','users','id','jjwg_Markers','jjwg_markers','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('2ded4d64-b7c4-bced-ef0b-5bede3e74bc9','securitygroups_jjwg_markers','SecurityGroups','securitygroups','id','jjwg_Markers','jjwg_markers','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Markers',0,0),('3b994ecc-2f73-fad6-58fe-5bede363ac95','jjwg_areas_modified_user','Users','users','id','jjwg_Areas','jjwg_areas','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3bd7c9e7-c409-4393-f1bc-5bede397d89c','jjwg_areas_created_by','Users','users','id','jjwg_Areas','jjwg_areas','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3c54c6b8-97ee-8947-89da-5bede348ab02','jjwg_areas_assigned_user','Users','users','id','jjwg_Areas','jjwg_areas','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('3c934f59-6ec3-0c29-2622-5bede387a5d2','securitygroups_jjwg_areas','SecurityGroups','securitygroups','id','jjwg_Areas','jjwg_areas','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','jjwg_Areas',0,0),('4906c1de-0e71-349a-67d0-5bede3b7e7bb','jjwg_address_cache_modified_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('49454a3d-da94-6934-7356-5bede30e1633','jjwg_address_cache_created_by','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('4983c345-0054-a714-b48a-5bede3b320df','jjwg_address_cache_assigned_user','Users','users','id','jjwg_Address_Cache','jjwg_address_cache','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('530948fc-f914-2028-9be7-5bede3b38f87','calls_reschedule_modified_user','Users','users','id','Calls_Reschedule','calls_reschedule','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('53864817-640a-4512-4c22-5bede31e96bf','calls_reschedule_created_by','Users','users','id','Calls_Reschedule','calls_reschedule','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('53c4caa4-3916-1c4e-bf33-5bede3ae328d','calls_reschedule_assigned_user','Users','users','id','Calls_Reschedule','calls_reschedule','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5ccd4131-38f8-2e55-7db6-5bede3048ff7','securitygroups_modified_user','Users','users','id','SecurityGroups','securitygroups','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5d4a4f97-d889-280a-03e1-5bede309a3aa','securitygroups_created_by','Users','users','id','SecurityGroups','securitygroups','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('5d88cac5-828c-94f8-dd5e-5bede328f2ee','securitygroups_assigned_user','Users','users','id','SecurityGroups','securitygroups','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('63a34d85-b3d2-657e-76a5-5bede350a2a5','outbound_email_modified_user','Users','users','id','OutboundEmailAccounts','outbound_email','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('64204d28-c3cf-974b-8952-5bede385678e','outbound_email_created_by','Users','users','id','OutboundEmailAccounts','outbound_email','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('649d47de-3297-1876-8f4c-5bede3971a1b','outbound_email_assigned_user','Users','users','id','OutboundEmailAccounts','outbound_email','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6e22c345-efed-47fe-c5c7-5bede3794bcc','templatesectionline_modified_user','Users','users','id','TemplateSectionLine','templatesectionline','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('6e6142d6-6e0d-ac5f-7283-5bede3437095','templatesectionline_created_by','Users','users','id','TemplateSectionLine','templatesectionline','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('76eccaec-8000-a6da-4b2e-5bede342db84','oauth2tokens_modified_user','Users','users','id','OAuth2Tokens','oauth2tokens','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('7769cc68-66ce-e83f-c5f8-5bede31c406c','oauth2tokens_created_by','Users','users','id','OAuth2Tokens','oauth2tokens','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('77e6cdf9-440e-36a6-a052-5bede35d3383','oauth2tokens_assigned_user','Users','users','id','OAuth2Tokens','oauth2tokens','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8072481e-23f9-3a8d-f641-5bede3bce731','oauth2clients_modified_user','Users','users','id','OAuth2Clients','oauth2clients','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('80b0c84e-5d82-0513-5f76-5bede3ef16ec','oauth2clients_created_by','Users','users','id','OAuth2Clients','oauth2clients','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('812dc044-e569-e623-ad3f-5bede32a684d','oauth2clients_oauth2tokens','OAuth2Clients','oauth2clients','id','OAuth2Tokens','oauth2tokens','client',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('816c4597-0bb0-91c3-8d59-5bede322b307','oauth2clients_assigned_user','Users','users','id','OAuth2Clients','oauth2clients','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8b6ec1ae-224c-b479-8838-5bede3b351d2','surveyresponses_modified_user','Users','users','id','SurveyResponses','surveyresponses','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8bebcf2c-40f8-1c3a-d1a7-5bede3f2ed00','surveyresponses_created_by','Users','users','id','SurveyResponses','surveyresponses','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8c2a42b3-411e-59dd-e8b1-5bede33744ad','surveyresponses_assigned_user','Users','users','id','SurveyResponses','surveyresponses','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('8c68cae0-cd9c-72a9-f195-5bede30839ca','securitygroups_surveyresponses','SecurityGroups','securitygroups','id','SurveyResponses','surveyresponses','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyResponses',0,0),('8ce5cfad-45b9-31ea-0f90-5bede374e973','surveyresponses_surveyquestionresponses','SurveyResponses','surveyresponses','id','SurveyQuestionResponses','surveyquestionresponses','surveyresponse_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('966b4384-d497-394b-347c-5bede338b488','surveys_modified_user','Users','users','id','Surveys','surveys','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('96a9caf3-9300-f367-5062-5bede3e8bac0','surveys_created_by','Users','users','id','Surveys','surveys','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9726c7e1-297b-9fef-43be-5bede3e6289c','surveys_assigned_user','Users','users','id','Surveys','surveys','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('97654841-a5d5-0dac-6038-5bede3ebe6ed','securitygroups_surveys','SecurityGroups','securitygroups','id','Surveys','surveys','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','Surveys',0,0),('97e245df-4031-daef-815d-5bede3f139dc','surveys_surveyquestions','Surveys','surveys','id','SurveyQuestions','surveyquestions','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('9820c230-73c8-6d3e-9792-5bede3bf00f3','surveys_surveyresponses','Surveys','surveys','id','SurveyResponses','surveyresponses','survey_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a1e4c672-9de7-250f-7864-5bede3ded4b7','surveyquestionresponses_modified_user','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a223458e-98be-6eec-6991-5bede315b055','surveyquestionresponses_created_by','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a2a047f6-aab1-93fc-0680-5bede383156e','surveyquestionresponses_assigned_user','Users','users','id','SurveyQuestionResponses','surveyquestionresponses','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('a2dec32a-9194-7a24-1c99-5bede3d79577','securitygroups_surveyquestionresponses','SecurityGroups','securitygroups','id','SurveyQuestionResponses','surveyquestionresponses','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestionResponses',0,0),('aba8ca33-7401-b5d5-ff6e-5bede35f34e3','surveyquestions_modified_user','Users','users','id','SurveyQuestions','surveyquestions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('abe7470d-bce6-9916-ce80-5bede31b1c4b','surveyquestions_created_by','Users','users','id','SurveyQuestions','surveyquestions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('ac25c2fc-39a5-8c69-6b2c-5bede3a5f4ed','surveyquestions_assigned_user','Users','users','id','SurveyQuestions','surveyquestions','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('aca2cfae-ca67-b7c6-c634-5bede3322901','securitygroups_surveyquestions','SecurityGroups','securitygroups','id','SurveyQuestions','surveyquestions','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestions',0,0),('ace14f1a-8e99-d62c-656b-5bede3fb18ad','surveyquestions_surveyquestionoptions','SurveyQuestions','surveyquestions','id','SurveyQuestionOptions','surveyquestionoptions','survey_question_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b5ab4b30-5f9f-3801-82e0-5bede36be504','surveyquestionoptions_modified_user','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b6284898-a07b-8d38-c8a9-5bede3a99ba5','surveyquestionoptions_created_by','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b666caf7-477c-a82c-6212-5bede39f00cb','surveyquestionoptions_assigned_user','Users','users','id','SurveyQuestionOptions','surveyquestionoptions','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('b6a54356-14a5-5972-4e84-5bede3e16c49','securitygroups_surveyquestionoptions','SecurityGroups','securitygroups','id','SurveyQuestionOptions','surveyquestionoptions','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','SurveyQuestionOptions',0,0),('bb0a4de2-aa66-2224-99d7-5bede397e386','ent_entrevues_modified_user','Users','users','id','ent_Entrevues','ent_entrevues','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bb48ca05-2893-a4c6-dfc7-5bede35b0396','ent_entrevues_created_by','Users','users','id','ent_Entrevues','ent_entrevues','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bb87452e-1589-c5b0-de9d-5bede3bbb6e9','ent_entrevues_assigned_user','Users','users','id','ent_Entrevues','ent_entrevues','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('bc04465a-61dd-9e2c-e583-5bede339591c','securitygroups_ent_entrevues','SecurityGroups','securitygroups','id','ent_Entrevues','ent_entrevues','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ent_Entrevues',0,0),('c645466a-2e4f-bbf4-6a4e-5bede3d44d77','pat_partenariats_modified_user','Users','users','id','pat_Partenariats','pat_partenariats','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c683c97d-c638-c383-c05f-5bede3966d96','pat_partenariats_created_by','Users','users','id','pat_Partenariats','pat_partenariats','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c700c805-14ce-048d-3293-5bede39adb71','pat_partenariats_assigned_user','Users','users','id','pat_Partenariats','pat_partenariats','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('c77dca02-76e6-bc78-639c-5bede3a1f43b','securitygroups_pat_partenariats','SecurityGroups','securitygroups','id','pat_Partenariats','pat_partenariats','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','pat_Partenariats',0,0),('d529ced3-bab7-b48c-5e27-5bede3c942d2','pat_patients_modified_user','Users','users','id','pat_Patients','pat_patients','modified_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d56844c7-fbb2-eb9b-f599-5bede3f1a15a','pat_patients_created_by','Users','users','id','pat_Patients','pat_patients','created_by',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d5a6cc1c-9303-a234-c777-5bede3d7f84e','pat_patients_assigned_user','Users','users','id','pat_Patients','pat_patients','assigned_user_id',NULL,NULL,NULL,'one-to-many',NULL,NULL,0,0),('d5e54422-5778-ea13-898a-5bede3677a6a','securitygroups_pat_patients','SecurityGroups','securitygroups','id','pat_Patients','pat_patients','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','pat_Patients',0,0),('d623cc44-a322-d58a-c7ad-5bede3021664','pat_patients_email_addresses','pat_Patients','pat_patients','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','bean_module','pat_Patients',0,0),('d6a0cea2-e601-c612-38b2-5bede3a1609b','pat_patients_email_addresses_primary','pat_Patients','pat_patients','id','EmailAddresses','email_addresses','id','email_addr_bean_rel','bean_id','email_address_id','many-to-many','primary_address','1',0,0),('e064c9c4-9ae4-3672-f460-5bede33b27d5','accounts_bugs','Accounts','accounts','id','Bugs','bugs','id','accounts_bugs','account_id','bug_id','many-to-many',NULL,NULL,0,0),('e0e1c204-46c6-d1ea-ed93-5bede3515ce4','accounts_contacts','Accounts','accounts','id','Contacts','contacts','id','accounts_contacts','account_id','contact_id','many-to-many',NULL,NULL,0,0),('e15ec570-ac26-4fb8-5b15-5bede3e575ac','accounts_opportunities','Accounts','accounts','id','Opportunities','opportunities','id','accounts_opportunities','account_id','opportunity_id','many-to-many',NULL,NULL,0,0),('e1dbcae6-c800-1ae8-3bcc-5bede33954fb','calls_contacts','Calls','calls','id','Contacts','contacts','id','calls_contacts','call_id','contact_id','many-to-many',NULL,NULL,0,0),('e21a456b-d9a9-d5f4-24ee-5bede316f37c','calls_users','Calls','calls','id','Users','users','id','calls_users','call_id','user_id','many-to-many',NULL,NULL,0,0),('e2974bbd-180b-7f96-22e6-5bede39b5f61','calls_leads','Calls','calls','id','Leads','leads','id','calls_leads','call_id','lead_id','many-to-many',NULL,NULL,0,0),('e2d5c665-54d8-6c7a-76b0-5bede304527e','cases_bugs','Cases','cases','id','Bugs','bugs','id','cases_bugs','case_id','bug_id','many-to-many',NULL,NULL,0,0),('e352cba4-b1a4-6444-6f76-5bede319d932','contacts_bugs','Contacts','contacts','id','Bugs','bugs','id','contacts_bugs','contact_id','bug_id','many-to-many',NULL,NULL,0,0),('e3914a50-b7e3-535e-08de-5bede3eb0043','contacts_cases','Contacts','contacts','id','Cases','cases','id','contacts_cases','contact_id','case_id','many-to-many',NULL,NULL,0,0),('e3cfc119-61fa-2083-86c2-5bede32eb74d','contacts_users','Contacts','contacts','id','Users','users','id','contacts_users','contact_id','user_id','many-to-many',NULL,NULL,0,0),('e48b494a-8395-e842-ca68-5bede32493e5','emails_bugs_rel','Emails','emails','id','Bugs','bugs','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Bugs',0,0),('e4c9c09e-e4aa-5c27-c611-5bede3ce9348','emails_cases_rel','Emails','emails','id','Cases','cases','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Cases',0,0),('e5854649-32fe-8ccb-b006-5bede3df2b84','emails_opportunities_rel','Emails','emails','id','Opportunities','opportunities','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Opportunities',0,0),('e6024464-eaf6-01ff-4250-5bede36b1ae1','emails_tasks_rel','Emails','emails','id','Tasks','tasks','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Tasks',0,0),('e67f4911-719c-c096-b3a5-5bede3f74704','emails_users_rel','Emails','emails','id','Users','users','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Users',0,0),('e6bdcf88-c2e9-dad9-f127-5bede394f245','emails_project_task_rel','Emails','emails','id','ProjectTask','project_task','id','emails_beans','email_id','bean_id','many-to-many','bean_module','ProjectTask',0,0),('e6fc42ef-18e6-20bd-946c-5bede37913a4','emails_projects_rel','Emails','emails','id','Project','project','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Project',0,0),('e77940ae-49bb-7a6c-56e6-5bede3fd5668','emails_prospects_rel','Emails','emails','id','Prospects','prospects','id','emails_beans','email_id','bean_id','many-to-many','bean_module','Prospects',0,0),('e7b7cc84-8da0-f5ca-8ce8-5bede324f8eb','meetings_contacts','Meetings','meetings','id','Contacts','contacts','id','meetings_contacts','meeting_id','contact_id','many-to-many',NULL,NULL,0,0),('e7f64fc6-6d22-519d-df0a-5bede39aec44','meetings_users','Meetings','meetings','id','Users','users','id','meetings_users','meeting_id','user_id','many-to-many',NULL,NULL,0,0),('e8734453-e144-78dc-2c35-5bede34f0480','meetings_leads','Meetings','meetings','id','Leads','leads','id','meetings_leads','meeting_id','lead_id','many-to-many',NULL,NULL,0,0),('e8f04785-a112-95b0-8227-5bede35fffa7','opportunities_contacts','Opportunities','opportunities','id','Contacts','contacts','id','opportunities_contacts','opportunity_id','contact_id','many-to-many',NULL,NULL,0,0),('e96d4905-98f8-f515-97ac-5bede37ec528','prospect_list_campaigns','ProspectLists','prospect_lists','id','Campaigns','campaigns','id','prospect_list_campaigns','prospect_list_id','campaign_id','many-to-many',NULL,NULL,0,0),('e9ea4e9b-0a6f-f103-b7fa-5bede36a1d1e','prospect_list_contacts','ProspectLists','prospect_lists','id','Contacts','contacts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Contacts',0,0),('ea28c566-a578-cae3-dda7-5bede36a88da','prospect_list_prospects','ProspectLists','prospect_lists','id','Prospects','prospects','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Prospects',0,0),('eaa5cdfc-21f1-aa38-635d-5bede3f08970','prospect_list_leads','ProspectLists','prospect_lists','id','Leads','leads','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Leads',0,0),('eae443e0-0ed1-4668-3dca-5bede3b95aa5','prospect_list_users','ProspectLists','prospect_lists','id','Users','users','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Users',0,0),('eb614d33-b056-3e30-c5f2-5bede30c7768','prospect_list_accounts','ProspectLists','prospect_lists','id','Accounts','accounts','id','prospect_lists_prospects','prospect_list_id','related_id','many-to-many','related_type','Accounts',0,0),('ebde4d51-cf47-83d5-7b97-5bede354783e','roles_users','Roles','roles','id','Users','users','id','roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('ec5b4c94-9660-af59-b837-5bede3c2724d','projects_bugs','Project','project','id','Bugs','bugs','id','projects_bugs','project_id','bug_id','many-to-many',NULL,NULL,0,0),('ec99c916-0167-7ff8-7cab-5bede37e5446','projects_cases','Project','project','id','Cases','cases','id','projects_cases','project_id','case_id','many-to-many',NULL,NULL,0,0),('ed55402c-e900-fa9b-e50b-5bede34e8d83','projects_accounts','Project','project','id','Accounts','accounts','id','projects_accounts','project_id','account_id','many-to-many',NULL,NULL,0,0),('ed93c364-33d4-9d37-ed3a-5bede35686ac','projects_contacts','Project','project','id','Contacts','contacts','id','projects_contacts','project_id','contact_id','many-to-many',NULL,NULL,0,0),('ee10cb8b-9f48-cfef-bde0-5bede3c8fa27','projects_opportunities','Project','project','id','Opportunities','opportunities','id','projects_opportunities','project_id','opportunity_id','many-to-many',NULL,NULL,0,0),('ee8dc99e-26c8-4072-ef98-5bede3ce93d6','acl_roles_actions','ACLRoles','acl_roles','id','ACLActions','acl_actions','id','acl_roles_actions','role_id','action_id','many-to-many',NULL,NULL,0,0),('ef0ac020-58d4-3b4e-7c03-5bede36e32cc','acl_roles_users','ACLRoles','acl_roles','id','Users','users','id','acl_roles_users','role_id','user_id','many-to-many',NULL,NULL,0,0),('ef87ce15-ed55-f85d-7141-5bede301098b','email_marketing_prospect_lists','EmailMarketing','email_marketing','id','ProspectLists','prospect_lists','id','email_marketing_prospect_lists','email_marketing_id','prospect_list_id','many-to-many',NULL,NULL,0,0),('efc6409a-1de1-b7b8-a57a-5bede3bec9d0','leads_documents','Leads','leads','id','Documents','documents','id','linked_documents','parent_id','document_id','many-to-many','parent_type','Leads',0,0),('f004c4a8-fdb2-30c2-19e2-5bede310df35','documents_accounts','Documents','documents','id','Accounts','accounts','id','documents_accounts','document_id','account_id','many-to-many',NULL,NULL,0,0),('f081c75f-765d-c8a4-79be-5bede38d9960','documents_contacts','Documents','documents','id','Contacts','contacts','id','documents_contacts','document_id','contact_id','many-to-many',NULL,NULL,0,0),('f0fec275-9b2e-2417-39d7-5bede35305d0','documents_opportunities','Documents','documents','id','Opportunities','opportunities','id','documents_opportunities','document_id','opportunity_id','many-to-many',NULL,NULL,0,0),('f17bcf93-0e41-6580-568c-5bede315aef6','documents_cases','Documents','documents','id','Cases','cases','id','documents_cases','document_id','case_id','many-to-many',NULL,NULL,0,0),('f1f8c337-67da-1181-7f05-5bede3dd0ede','documents_bugs','Documents','documents','id','Bugs','bugs','id','documents_bugs','document_id','bug_id','many-to-many',NULL,NULL,0,0),('f275cffb-79e7-fd09-73a4-5bede3c28f40','aok_knowledgebase_categories','AOK_KnowledgeBase','aok_knowledgebase','id','AOK_Knowledge_Base_Categories','aok_knowledge_base_categories','id','aok_knowledgebase_categories','aok_knowledgebase_id','aok_knowledge_base_categories_id','many-to-many',NULL,NULL,0,0),('f2b44487-e538-e367-1054-5bede3aeb8b3','am_projecttemplates_project_1','AM_ProjectTemplates','am_projecttemplates','id','Project','project','id','am_projecttemplates_project_1_c','am_projecttemplates_project_1am_projecttemplates_ida','am_projecttemplates_project_1project_idb','many-to-many',NULL,NULL,0,0),('f2f2ce6c-abd3-db7e-4d92-5bede3a2abcc','am_projecttemplates_contacts_1','AM_ProjectTemplates','am_projecttemplates','id','Contacts','contacts','id','am_projecttemplates_contacts_1_c','am_projecttemplates_ida','contacts_idb','many-to-many',NULL,NULL,0,0),('f36fcb0a-9bb1-246c-8590-5bede3951323','am_projecttemplates_users_1','AM_ProjectTemplates','am_projecttemplates','id','Users','users','id','am_projecttemplates_users_1_c','am_projecttemplates_ida','users_idb','many-to-many',NULL,NULL,0,0),('f3ae4dd1-061b-7a24-5349-5bede3dde6e1','am_tasktemplates_am_projecttemplates','AM_ProjectTemplates','am_projecttemplates','id','AM_TaskTemplates','am_tasktemplates','id','am_tasktemplates_am_projecttemplates_c','am_tasktemplates_am_projecttemplatesam_projecttemplates_ida','am_tasktemplates_am_projecttemplatesam_tasktemplates_idb','many-to-many',NULL,NULL,0,0),('740005e6-8965-b267-af1e-5bede3f0fc26','aos_contracts_documents','AOS_Contracts','aos_contracts','id','Documents','documents','id','aos_contracts_documents','aos_contracts_id','documents_id','many-to-many',NULL,NULL,0,0),('45c00b54-9aab-049a-aed9-5bede3369a7c','aos_quotes_aos_contracts','AOS_Quotes','aos_quotes','id','AOS_Contracts','aos_contracts','id','aos_quotes_os_contracts_c','aos_quotese81e_quotes_ida','aos_quotes4dc0ntracts_idb','many-to-many',NULL,NULL,0,0),('c2c00a36-06ca-bd72-c5e7-5bede343b552','aos_quotes_aos_invoices','AOS_Quotes','aos_quotes','id','AOS_Invoices','aos_invoices','id','aos_quotes_aos_invoices_c','aos_quotes77d9_quotes_ida','aos_quotes6b83nvoices_idb','many-to-many',NULL,NULL,0,0),('13fc0520-4b0b-130e-0baa-5bede3eb49cb','aos_quotes_project','AOS_Quotes','aos_quotes','id','Project','project','id','aos_quotes_project_c','aos_quotes1112_quotes_ida','aos_quotes7207project_idb','many-to-many',NULL,NULL,0,0),('1bcc0143-81f5-60fd-eb4e-5bede3ab4af0','aow_processed_aow_actions','AOW_Processed','aow_processed','id','AOW_Actions','aow_actions','id','aow_processed_aow_actions','aow_processed_id','aow_action_id','many-to-many',NULL,NULL,0,0),('1fb40077-7f20-a958-93f2-5bede3a714db','fp_event_locations_fp_events_1','FP_Event_Locations','fp_event_locations','id','FP_events','fp_events','id','fp_event_locations_fp_events_1_c','fp_event_locations_fp_events_1fp_event_locations_ida','fp_event_locations_fp_events_1fp_events_idb','many-to-many',NULL,NULL,0,0),('2784099e-edbf-d3aa-4c21-5bede3ac9979','fp_events_contacts','FP_events','fp_events','id','Contacts','contacts','id','fp_events_contacts_c','fp_events_contactsfp_events_ida','fp_events_contactscontacts_idb','many-to-many',NULL,NULL,0,0),('2b6c04cb-c564-be4a-bb30-5bede3cded38','fp_events_fp_event_locations_1','FP_events','fp_events','id','FP_Event_Locations','fp_event_locations','id','fp_events_fp_event_locations_1_c','fp_events_fp_event_locations_1fp_events_ida','fp_events_fp_event_locations_1fp_event_locations_idb','many-to-many',NULL,NULL,0,0),('333c010f-94c5-9534-1103-5bede300b93a','fp_events_leads_1','FP_events','fp_events','id','Leads','leads','id','fp_events_leads_1_c','fp_events_leads_1fp_events_ida','fp_events_leads_1leads_idb','many-to-many',NULL,NULL,0,0),('37240dad-5865-181e-2dd1-5bede3435b64','fp_events_prospects_1','FP_events','fp_events','id','Prospects','prospects','id','fp_events_prospects_1_c','fp_events_prospects_1fp_events_ida','fp_events_prospects_1prospects_idb','many-to-many',NULL,NULL,0,0),('3ef3052a-1758-59b4-3a21-5bede393d6e7','jjwg_maps_jjwg_areas','jjwg_Maps','jjwg_maps','id','jjwg_Areas','jjwg_areas','id','jjwg_maps_jjwg_areas_c','jjwg_maps_5304wg_maps_ida','jjwg_maps_41f2g_areas_idb','many-to-many',NULL,NULL,0,0),('46c40e45-ab6e-6545-ea8c-5bede3b18c0e','jjwg_maps_jjwg_markers','jjwg_Maps','jjwg_maps','id','jjwg_Markers','jjwg_markers','id','jjwg_maps_jjwg_markers_c','jjwg_maps_b229wg_maps_ida','jjwg_maps_2e31markers_idb','many-to-many',NULL,NULL,0,0),('4aac0c1b-ac46-8661-74d6-5bede3b0e769','project_contacts_1','Project','project','id','Contacts','contacts','id','project_contacts_1_c','project_contacts_1project_ida','project_contacts_1contacts_idb','many-to-many',NULL,NULL,0,0),('56640c88-6ab3-2876-d222-5bede3129ffe','project_users_1','Project','project','id','Users','users','id','project_users_1_c','project_users_1project_ida','project_users_1users_idb','many-to-many',NULL,NULL,0,0),('621c02a1-0a1a-64b5-e770-5bede36ef0e7','securitygroups_acl_roles','SecurityGroups','securitygroups','id','ACLRoles','acl_roles','id','securitygroups_acl_roles','securitygroup_id','role_id','many-to-many',NULL,NULL,0,0),('ac5403fe-d6ed-2851-ab1b-5bede3362599','securitygroups_project_task','SecurityGroups','securitygroups','id','ProjectTask','project_task','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProjectTask',0,0),('b4240805-248e-e58e-380a-5bede34e2eab','securitygroups_prospect_lists','SecurityGroups','securitygroups','id','ProspectLists','prospect_lists','id','securitygroups_records','securitygroup_id','record_id','many-to-many','module','ProspectLists',0,0),('c3c40b27-46da-c9d1-5455-5bede38ccbc4','securitygroups_users','SecurityGroups','securitygroups','id','Users','users','id','securitygroups_users','securitygroup_id','user_id','many-to-many',NULL,NULL,0,0),('cb9403cb-ae15-deaa-dc87-5bede3f442af','surveyquestionoptions_surveyquestionresponses','SurveyQuestionOptions','surveyquestionoptions','id','SurveyQuestionResponses','surveyquestionresponses','id','surveyquestionoptions_surveyquestionresponses','surveyq72c7options_ida','surveyq10d4sponses_idb','many-to-many',NULL,NULL,0,0),('d36406d1-d47f-98aa-eb48-5bede358b6ef','accounts_am_projecttemplates_1','Accounts','accounts','id','AM_ProjectTemplates','am_projecttemplates','id','accounts_am_projecttemplates_1_c','accounts_am_projecttemplates_1accounts_ida','accounts_am_projecttemplates_1am_projecttemplates_idb','many-to-many',NULL,NULL,0,0),('df1c012d-fe70-72e2-4360-5bede323620c','ent_entrevues_accounts','Accounts','accounts','id','ent_Entrevues','ent_entrevues','id','ent_entrevues_accounts_c','ent_entrevues_accountsaccounts_ida','ent_entrevues_accountsent_entrevues_idb','many-to-many',NULL,NULL,0,0),('e6ec0f74-8e55-3a24-58a2-5bede306b9db','ent_entrevues_users','ent_Entrevues','ent_entrevues','id','Users','users','id','ent_entrevues_users_c','ent_entrevues_usersent_entrevues_ida','ent_entrevues_usersusers_idb','many-to-many',NULL,NULL,0,0),('eebc0883-6c63-07e7-ebfd-5bede38b1619','pat_partenariats_pat_patients','pat_Partenariats','pat_partenariats','id','pat_Patients','pat_patients','id','pat_partenariats_pat_patients_c','pat_partenariats_pat_patientspat_partenariats_ida','pat_partenariats_pat_patientspat_patients_idb','many-to-many',NULL,NULL,0,0),('f2a40f06-633f-2537-0ef3-5bede34046ac','pat_patients_accounts','pat_Patients','pat_patients','id','Accounts','accounts','id','pat_patients_accounts_c','pat_patients_accountspat_patients_ida','pat_patients_accountsaccounts_idb','many-to-many',NULL,NULL,0,0),('fa740942-aad3-7000-e711-5bede36bea3f','pat_patients_pat_partenariats','pat_Patients','pat_patients','id','pat_Partenariats','pat_partenariats','id','pat_patients_pat_partenariats_c','pat_patients_pat_partenariatspat_patients_ida','pat_patients_pat_partenariatspat_partenariats_idb','many-to-many',NULL,NULL,0,0);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `releases`
--

DROP TABLE IF EXISTS `releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_releases` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `releases`
--

LOCK TABLES `releases` WRITE;
/*!40000 ALTER TABLE `releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `popup` tinyint(1) DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `email_sent` tinyint(1) DEFAULT NULL,
  `timer_popup` varchar(32) DEFAULT NULL,
  `timer_email` varchar(32) DEFAULT NULL,
  `related_event_module` varchar(32) DEFAULT NULL,
  `related_event_module_id` char(36) NOT NULL,
  `date_willexecute` int(60) DEFAULT '-1',
  `popup_viewed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_reminder_name` (`name`),
  KEY `idx_reminder_deleted` (`deleted`),
  KEY `idx_reminder_related_event_module` (`related_event_module`),
  KEY `idx_reminder_related_event_module_id` (`related_event_module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders_invitees`
--

DROP TABLE IF EXISTS `reminders_invitees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders_invitees` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `reminder_id` char(36) NOT NULL,
  `related_invitee_module` varchar(32) DEFAULT NULL,
  `related_invitee_module_id` char(36) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_reminder_invitee_name` (`name`),
  KEY `idx_reminder_invitee_assigned_user_id` (`assigned_user_id`),
  KEY `idx_reminder_invitee_reminder_id` (`reminder_id`),
  KEY `idx_reminder_invitee_related_invitee_module` (`related_invitee_module`),
  KEY `idx_reminder_invitee_related_invitee_module_id` (`related_invitee_module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders_invitees`
--

LOCK TABLES `reminders_invitees` WRITE;
/*!40000 ALTER TABLE `reminders_invitees` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders_invitees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_role_id_del` (`id`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_modules`
--

DROP TABLE IF EXISTS `roles_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_role_id` (`role_id`),
  KEY `idx_module_id` (`module_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_modules`
--

LOCK TABLES `roles_modules` WRITE;
/*!40000 ALTER TABLE `roles_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_users`
--

DROP TABLE IF EXISTS `roles_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_ru_role_id` (`role_id`),
  KEY `idx_ru_user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_users`
--

LOCK TABLES `roles_users` WRITE;
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_search`
--

DROP TABLE IF EXISTS `saved_search`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `idx_desc` (`name`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_search`
--

LOCK TABLES `saved_search` WRITE;
/*!40000 ALTER TABLE `saved_search` DISABLE KEYS */;
/*!40000 ALTER TABLE `saved_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedulers`
--

DROP TABLE IF EXISTS `schedulers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_schedule` (`date_time_start`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedulers`
--

LOCK TABLES `schedulers` WRITE;
/*!40000 ALTER TABLE `schedulers` DISABLE KEYS */;
INSERT INTO `schedulers` VALUES ('caed59a9-84fe-27e0-e324-5ba560c0d352',0,'2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','Process Workflow Tasks','function::processAOW_Workflow','2015-01-01 07:15:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('d1c358fa-d420-41d9-fd09-5ba56057d2d7',0,'2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','Run Report Generation Scheduled Tasks','function::aorRunScheduledReports','2015-01-01 12:00:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',1),('d81c55de-aa20-18d6-4d4a-5ba560c4e72f',0,'2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','Prune Tracker Tables','function::trimTracker','2015-01-01 14:30:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1),('ddb9d228-de7b-733e-79ec-5ba560693353',0,'2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','Check Inbound Mailboxes','function::pollMonitoredInboxesAOP','2015-01-01 14:45:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),('e395d9b0-5148-8f56-2f12-5ba560a28854',0,'2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','Run Nightly Process Bounced Campaign Emails','function::pollMonitoredInboxesForBouncedCampaignEmails','2015-01-01 07:15:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('e971d15c-bc3e-974e-643f-5ba560486348',0,'2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','Run Nightly Mass Email Campaigns','function::runMassEmailCampaign','2015-01-01 08:30:01',NULL,'0::2-6::*::*::*',NULL,NULL,NULL,'Active',1),('ef0f521a-9eb6-f17a-16fa-5ba560171814',0,'2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','Prune Database on 1st of Month','function::pruneDatabase','2015-01-01 14:15:01',NULL,'0::4::1::*::*',NULL,NULL,NULL,'Inactive',0),('c750077e-9410-5093-2ca7-5ba5601e61e8',0,'2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','Perform Lucene Index','function::aodIndexUnindexed','2015-01-01 15:45:01',NULL,'0::0::*::*::*',NULL,NULL,NULL,'Active',0),('6a350fb1-c763-8264-b493-5ba560c47a13',0,'2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','Optimise AOD Index','function::aodOptimiseIndex','2015-01-01 16:45:01',NULL,'0::*/3::*::*::*',NULL,NULL,NULL,'Active',0),('c40d0dc1-4572-64a7-c952-5ba560a7ba90',0,'2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','Run Email Reminder Notifications','function::sendEmailReminders','2015-01-01 13:00:01',NULL,'*::*::*::*::*',NULL,NULL,NULL,'Active',0),('11de5f04-8b2c-43ea-6515-5ba560cbac6c',0,'2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','Clean Jobs Queue','function::cleanJobQueue','2015-01-01 12:30:01',NULL,'0::5::*::*::*',NULL,NULL,NULL,'Active',0),('17ba5745-50bd-03b7-2ba2-5ba560b19dc3',0,'2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','Removal of documents from filesystem','function::removeDocumentsFromFS','2015-01-01 12:00:01',NULL,'0::3::1::*::*',NULL,NULL,NULL,'Active',0),('1d96503e-8b48-5b17-23c9-5ba560092151',0,'2018-09-21 21:19:10','2018-09-21 21:19:10','1','1','Prune SuiteCRM Feed Tables','function::trimSugarFeeds','2015-01-01 12:15:01',NULL,'0::2::1::*::*',NULL,NULL,NULL,'Active',1);
/*!40000 ALTER TABLE `schedulers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups`
--

DROP TABLE IF EXISTS `securitygroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups`
--

LOCK TABLES `securitygroups` WRITE;
/*!40000 ALTER TABLE `securitygroups` DISABLE KEYS */;
INSERT INTO `securitygroups` VALUES ('c2e4e486-9a84-b090-30d8-5ba564d86b87','Centre de recrutement AA','2018-09-21 21:38:55','2018-09-21 21:40:15','1','1','',1,'1',0),('7b15c45e-2950-9592-07eb-5ba565669ab4','Centre de recrutement AA','2018-09-21 21:40:04','2018-09-21 22:02:28','1','1',NULL,0,'1',0),('93612558-c3fe-2559-8290-5ba5657cc15c','Centre de recrutement BB','2018-09-21 21:40:29','2018-09-21 21:40:29','1','1','',0,'1',0);
/*!40000 ALTER TABLE `securitygroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_acl_roles`
--

DROP TABLE IF EXISTS `securitygroups_acl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_acl_roles` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `role_id` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_acl_roles`
--

LOCK TABLES `securitygroups_acl_roles` WRITE;
/*!40000 ALTER TABLE `securitygroups_acl_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_acl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_audit`
--

DROP TABLE IF EXISTS `securitygroups_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_audit`
--

LOCK TABLES `securitygroups_audit` WRITE;
/*!40000 ALTER TABLE `securitygroups_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_default`
--

DROP TABLE IF EXISTS `securitygroups_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_default` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_default`
--

LOCK TABLES `securitygroups_default` WRITE;
/*!40000 ALTER TABLE `securitygroups_default` DISABLE KEYS */;
/*!40000 ALTER TABLE `securitygroups_default` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_records`
--

DROP TABLE IF EXISTS `securitygroups_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_records` (
  `id` char(36) NOT NULL,
  `securitygroup_id` char(36) DEFAULT NULL,
  `record_id` char(36) DEFAULT NULL,
  `module` char(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_securitygroups_records_mod` (`module`,`deleted`,`record_id`,`securitygroup_id`),
  KEY `idx_securitygroups_records_del` (`deleted`,`record_id`,`module`,`securitygroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_records`
--

LOCK TABLES `securitygroups_records` WRITE;
/*!40000 ALTER TABLE `securitygroups_records` DISABLE KEYS */;
INSERT INTO `securitygroups_records` VALUES ('4eeafe5d-bdea-11e8-8407-00ff10700711','7b15c45e-2950-9592-07eb-5ba565669ab4','e9ee4d41-7a49-544c-c2c7-5ba56a95b3fb','Accounts','2018-09-21 00:00:00',NULL,NULL,0),('750b0c9e-bdf2-11e8-8407-00ff10700711','7b15c45e-2950-9592-07eb-5ba565669ab4','eebdb80f-916a-7997-04e7-5ba578db29e3','pat_Patients','2018-09-21 00:00:00',NULL,NULL,0),('0c494216-ce56-11e8-a314-00ff10704211','7b15c45e-2950-9592-07eb-5ba565669ab4','436d0e53-60b5-4fac-2d1f-5bc0f78a6e1d','ent_Entrevues','2018-10-12 00:00:00',NULL,NULL,0),('92c55e8e-ce63-11e8-a314-00ff10704211','7b15c45e-2950-9592-07eb-5ba565669ab4','a772d68a-c045-c139-17ac-5bc10e3b5ebc','ent_Entrevues','2018-10-12 00:00:00',NULL,NULL,0),('799bda75-ce64-11e8-a314-00ff10704211','7b15c45e-2950-9592-07eb-5ba565669ab4','5af20162-b7e5-fbfe-3544-5bc10f488bf6','ent_Entrevues','2018-10-12 00:00:00',NULL,NULL,0),('119fb7cb-e91a-11e8-8985-00ff10350511','93612558-c3fe-2559-8290-5ba5657cc15c','44e90b16-1216-86eb-6d32-5bedd720e0a9','Accounts','2018-11-15 00:00:00',NULL,NULL,0);
/*!40000 ALTER TABLE `securitygroups_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `securitygroups_users`
--

DROP TABLE IF EXISTS `securitygroups_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `securitygroups_users` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `securitygroup_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `primary_group` tinyint(1) DEFAULT NULL,
  `noninheritable` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `securitygroups_users_idxa` (`securitygroup_id`),
  KEY `securitygroups_users_idxb` (`user_id`),
  KEY `securitygroups_users_idxc` (`user_id`,`deleted`,`securitygroup_id`,`id`),
  KEY `securitygroups_users_idxd` (`user_id`,`deleted`,`securitygroup_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `securitygroups_users`
--

LOCK TABLES `securitygroups_users` WRITE;
/*!40000 ALTER TABLE `securitygroups_users` DISABLE KEYS */;
INSERT INTO `securitygroups_users` VALUES ('aa9944fa-efb8-19c0-ed44-5ba5664575b8','2018-09-21 21:46:10',0,'7b15c45e-2950-9592-07eb-5ba565669ab4','79fc5856-a7ba-a277-8f30-5ba5661ee5d2',NULL,0),('c0223314-1207-1ecf-20a8-5ba56751f401','2018-11-15 20:36:38',0,'93612558-c3fe-2559-8290-5ba5657cc15c','79537bf1-951c-9483-13e1-5ba567c42893',0,0),('4aec0d97-5f8e-d295-e681-5ba56acaeb8a','2018-09-21 22:02:28',0,'7b15c45e-2950-9592-07eb-5ba565669ab4','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4',NULL,0),('7f810fa5-b425-94a5-e839-5bedd9d0af96','2018-11-15 20:39:37',0,'93612558-c3fe-2559-8290-5ba5657cc15c','928c090d-96a8-79b3-0df4-5bedd5fd29d9',NULL,0);
/*!40000 ALTER TABLE `securitygroups_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spots`
--

DROP TABLE IF EXISTS `spots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spots` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `config` longtext,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spots`
--

LOCK TABLES `spots` WRITE;
/*!40000 ALTER TABLE `spots` DISABLE KEYS */;
/*!40000 ALTER TABLE `spots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sugarfeed`
--

DROP TABLE IF EXISTS `sugarfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sgrfeed_date` (`date_entered`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sugarfeed`
--

LOCK TABLES `sugarfeed` WRITE;
/*!40000 ALTER TABLE `sugarfeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `sugarfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions`
--

DROP TABLE IF EXISTS `surveyquestionoptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionoptions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `survey_question_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions`
--

LOCK TABLES `surveyquestionoptions` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions_audit`
--

DROP TABLE IF EXISTS `surveyquestionoptions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionoptions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestionoptions_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions_audit`
--

LOCK TABLES `surveyquestionoptions_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionoptions_surveyquestionresponses`
--

DROP TABLE IF EXISTS `surveyquestionoptions_surveyquestionresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionoptions_surveyquestionresponses` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `surveyq72c7options_ida` varchar(36) DEFAULT NULL,
  `surveyq10d4sponses_idb` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `surveyquestionoptions_surveyquestionresponses_alt` (`surveyq72c7options_ida`,`surveyq10d4sponses_idb`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionoptions_surveyquestionresponses`
--

LOCK TABLES `surveyquestionoptions_surveyquestionresponses` WRITE;
/*!40000 ALTER TABLE `surveyquestionoptions_surveyquestionresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionoptions_surveyquestionresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionresponses`
--

DROP TABLE IF EXISTS `surveyquestionresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `answer` text,
  `answer_bool` tinyint(1) DEFAULT NULL,
  `answer_datetime` datetime DEFAULT NULL,
  `surveyquestion_id` char(36) DEFAULT NULL,
  `surveyresponse_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionresponses`
--

LOCK TABLES `surveyquestionresponses` WRITE;
/*!40000 ALTER TABLE `surveyquestionresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestionresponses_audit`
--

DROP TABLE IF EXISTS `surveyquestionresponses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestionresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestionresponses_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestionresponses_audit`
--

LOCK TABLES `surveyquestionresponses_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestionresponses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestionresponses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestions`
--

DROP TABLE IF EXISTS `surveyquestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestions` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `sort_order` int(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `happiness_question` tinyint(1) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestions`
--

LOCK TABLES `surveyquestions` WRITE;
/*!40000 ALTER TABLE `surveyquestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyquestions_audit`
--

DROP TABLE IF EXISTS `surveyquestions_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyquestions_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyquestions_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyquestions_audit`
--

LOCK TABLES `surveyquestions_audit` WRITE;
/*!40000 ALTER TABLE `surveyquestions_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyquestions_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyresponses`
--

DROP TABLE IF EXISTS `surveyresponses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyresponses` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `happiness` int(11) DEFAULT NULL,
  `email_response_sent` tinyint(1) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `survey_id` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyresponses`
--

LOCK TABLES `surveyresponses` WRITE;
/*!40000 ALTER TABLE `surveyresponses` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyresponses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveyresponses_audit`
--

DROP TABLE IF EXISTS `surveyresponses_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveyresponses_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveyresponses_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveyresponses_audit`
--

LOCK TABLES `surveyresponses_audit` WRITE;
/*!40000 ALTER TABLE `surveyresponses_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveyresponses_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys`
--

DROP TABLE IF EXISTS `surveys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Draft',
  `submit_text` varchar(255) DEFAULT 'Submit',
  `satisfied_text` varchar(255) DEFAULT 'Satisfied',
  `neither_text` varchar(255) DEFAULT 'Neither Satisfied nor Dissatisfied',
  `dissatisfied_text` varchar(255) DEFAULT 'Dissatisfied',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys`
--

LOCK TABLES `surveys` WRITE;
/*!40000 ALTER TABLE `surveys` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `surveys_audit`
--

DROP TABLE IF EXISTS `surveys_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `surveys_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text,
  PRIMARY KEY (`id`),
  KEY `idx_surveys_parent_id` (`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `surveys_audit`
--

LOCK TABLES `surveys_audit` WRITE;
/*!40000 ALTER TABLE `surveys_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `surveys_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_tsk_name` (`name`),
  KEY `idx_task_con_del` (`contact_id`,`deleted`),
  KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  KEY `idx_task_assigned` (`assigned_user_id`),
  KEY `idx_task_status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `templatesectionline`
--

DROP TABLE IF EXISTS `templatesectionline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templatesectionline` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `thumbnail` varchar(255) DEFAULT NULL,
  `grp` varchar(255) DEFAULT NULL,
  `ord` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `templatesectionline`
--

LOCK TABLES `templatesectionline` WRITE;
/*!40000 ALTER TABLE `templatesectionline` DISABLE KEYS */;
/*!40000 ALTER TABLE `templatesectionline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracker`
--

DROP TABLE IF EXISTS `tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_tracker_iid` (`item_id`),
  KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  KEY `idx_tracker_monitor_id` (`monitor_id`),
  KEY `idx_tracker_date_modified` (`date_modified`)
) ENGINE=MyISAM AUTO_INCREMENT=363 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracker`
--

LOCK TABLES `tracker` WRITE;
/*!40000 ALTER TABLE `tracker` DISABLE KEYS */;
INSERT INTO `tracker` VALUES (2,'494ec5e3-73d8-720d-2fa3-5ba56261eb7c','1','Users','1','Dan L\'Admin','2018-09-21 21:28:38','detailview','5n3i53n9lbvbt7qhfs4q7nfsk6',1,0),(341,'df8fe6eb-b8af-48a3-1fe1-5beddfb7be66','1','SecurityGroups','93612558-c3fe-2559-8290-5ba5657cc15c','Centre de recrutement BB','2018-11-15 21:04:21','detailview','4objqd94fm2eq5ubjpjpvuc8r5',1,0),(348,'3e36c21c-6148-a98f-9738-5bede0ff4cb4','1','Users','928c090d-96a8-79b3-0df4-5bedd5fd29d9','Sharon Samberg (BB)','2018-11-15 21:09:55','detailview','4objqd94fm2eq5ubjpjpvuc8r5',1,0),(276,'d0597051-8269-b2d7-b336-5bc1221653ed','1','pat_Patients','eebdb80f-916a-7997-04e7-5ba578db29e3','Mr. Jérémie Pillon','2018-10-12 22:39:46','editview','pgtt856cmhe0lmd1giknmr8tn0',1,0),(352,'590d027f-4ba4-d07c-64a0-5bede1632b52','928c090d-96a8-79b3-0df4-5bedd5fd29d9','Accounts','44e90b16-1216-86eb-6d32-5bedd720e0a9','Compte de recrutement [P0085]','2018-11-15 21:12:08','detailview','ua9uneoa219asp73ck1lvpvjr0',1,0),(10,'285cbbe4-de9a-1046-d872-5ba56483e879','1','SecurityGroups','c2e4e486-9a84-b090-30d8-5ba564d86b87','Centre de recrutement AA','2018-09-21 21:38:56','detailview','5n3i53n9lbvbt7qhfs4q7nfsk6',0,0),(360,'937d496d-0ace-17f2-a383-5bede2c3df58','1','Users','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','Romain Trépier (AA)','2018-11-15 21:17:27','detailview','4objqd94fm2eq5ubjpjpvuc8r5',1,0),(296,'980a0d36-8b3f-e690-db8f-5beda0f423d8','1','Users','79537bf1-951c-9483-13e1-5ba567c42893','Jennifer Leboeuf','2018-11-15 16:36:29','save','4objqd94fm2eq5ubjpjpvuc8r5',1,0),(325,'5d918e6b-eb26-baae-dde9-5bedd8122c5c','79537bf1-951c-9483-13e1-5ba567c42893','pat_Patients','eebdb80f-916a-7997-04e7-5ba578db29e3','M. Jérémie Pillon','2018-11-15 20:36:56','detailview','8m8od3lr9eue7qrjpe2hq53303',1,0),(298,'d0d2b41a-d982-810a-708d-5bedaa4bc6d7','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','pat_Patients','eebdb80f-916a-7997-04e7-5ba578db29e3','Mr. Jérémie Pillon','2018-11-15 17:18:52','detailview','3ol9pstvfj58107n6pi4mhqgi6',1,0),(290,'8fa0bbb7-8643-e651-2b7b-5beda01089e7','1','Users','79fc5856-a7ba-a277-8f30-5ba5661ee5d2','Sarah Hibou (AA)','2018-11-15 16:34:52','detailview','8cfkrikou265lqrqsm6q4kibv0',1,0),(180,'ae84f618-9ebe-c40e-4237-5bbf530a8a53','1','Accounts','e9ee4d41-7a49-544c-c2c7-5ba56a95b3fb','Compte de recrutement [P0082]','2018-10-11 13:45:14','detailview','40fv9jav397ste23r300heil00',1,0),(314,'34cc0521-5bbd-9aeb-39d0-5bedd5a184c2','1','Users','928c090d-96a8-79b3-0df4-5bedd5fd29d9','Sharon Samberg','2018-11-15 20:22:05','save','4objqd94fm2eq5ubjpjpvuc8r5',1,0),(43,'8911a57d-15ce-5c59-5de5-5ba57b053b85','79fc5856-a7ba-a277-8f30-5ba5661ee5d2','Accounts','e9ee4d41-7a49-544c-c2c7-5ba56a95b3fb','Compte de recrutement [P0082]','2018-09-21 23:15:13','detailview','30j1d2vc1da3inuju8c1req882',1,0),(280,'8ae401e3-9453-d999-1d05-5bd868edd216','1','ent_Entrevues','436d0e53-60b5-4fac-2d1f-5bc0f78a6e1d',NULL,'2018-10-30 14:21:18','detailview','eqgqsjlph1hkuk58p9somep277',1,0),(362,'330dce3a-8aeb-3e0c-4cce-5bede4e9a9b4','1','ACLRoles','9d130d73-a70f-3968-3f2d-5ba5646c12e9','Recruteur en chef','2018-11-15 21:25:15','detailview','4objqd94fm2eq5ubjpjpvuc8r5',1,0),(261,'a71a2a2d-ed6a-cae1-d3ec-5bc10f38373d','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','ent_Entrevues','a772d68a-c045-c139-17ac-5bc10e3b5ebc',NULL,'2018-10-12 21:19:37','editview','ig9cii6g182ier0gln1s6rb1t1',1,0),(335,'dbca0191-0dae-0aa6-95ef-5beddaefd375','1','Users','79537bf1-951c-9483-13e1-5ba567c42893','Jennifer Leboeuf (BB)','2018-11-15 20:45:15','detailview','4objqd94fm2eq5ubjpjpvuc8r5',1,0),(302,'25474f83-167e-f919-157c-5bedb7f1c75a','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','Accounts','e9ee4d41-7a49-544c-c2c7-5ba56a95b3fb','Compte de recrutement [P0082]','2018-11-15 18:14:11','editview','oq2e0spslhhg1avek1sc3pkrg5',1,0),(361,'989dc614-fc63-4dab-3b74-5bede2329176','1','ACLRoles','6ccd5c13-f63a-5839-9e1f-5ba56408d9dd','Recruteur','2018-11-15 21:17:41','detailview','4objqd94fm2eq5ubjpjpvuc8r5',1,0),(340,'749823e5-918f-c9a6-7d17-5beddf9f318d','1','SecurityGroups','7b15c45e-2950-9592-07eb-5ba565669ab4','Centre de recrutement AA','2018-11-15 21:03:56','detailview','4objqd94fm2eq5ubjpjpvuc8r5',1,0);
/*!40000 ALTER TABLE `tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upgrade_history`
--

DROP TABLE IF EXISTS `upgrade_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upgrade_history`
--

LOCK TABLES `upgrade_history` WRITE;
/*!40000 ALTER TABLE `upgrade_history` DISABLE KEYS */;
INSERT INTO `upgrade_history` VALUES ('7af339b9-d6a1-3735-5d44-5bc11f248f72','upload/upgrades/module/Patients2018_10_12_222406.zip','6a79e0ff30d8d40616c6168256309be4','module','installed','1539383045','Patients','','Patients','YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MzoicGF0IjtzOjY6ImF1dGhvciI7czowOiIiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czo4OiJQYXRpZW50cyI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTk6IjIwMTgtMTAtMTIgMjI6MjQ6MDUiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NzoidmVyc2lvbiI7aToxNTM5MzgzMDQ1O3M6MTM6InJlbW92ZV90YWJsZXMiO3M6NjoicHJvbXB0Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6OTp7czoyOiJpZCI7czo4OiJQYXRpZW50cyI7czo1OiJiZWFucyI7YToyOntpOjA7YTo0OntzOjY6Im1vZHVsZSI7czoxNjoicGF0X1BhcnRlbmFyaWF0cyI7czo1OiJjbGFzcyI7czoxNjoicGF0X1BhcnRlbmFyaWF0cyI7czo0OiJwYXRoIjtzOjQ1OiJtb2R1bGVzL3BhdF9QYXJ0ZW5hcmlhdHMvcGF0X1BhcnRlbmFyaWF0cy5waHAiO3M6MzoidGFiIjtiOjE7fWk6MTthOjQ6e3M6NjoibW9kdWxlIjtzOjEyOiJwYXRfUGF0aWVudHMiO3M6NToiY2xhc3MiO3M6MTI6InBhdF9QYXRpZW50cyI7czo0OiJwYXRoIjtzOjM3OiJtb2R1bGVzL3BhdF9QYXRpZW50cy9wYXRfUGF0aWVudHMucGhwIjtzOjM6InRhYiI7YjoxO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTozOntpOjA7YToxOntzOjk6Im1ldGFfZGF0YSI7czo5MzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9yZWxhdGlvbnNoaXBzL3BhdF9wYXJ0ZW5hcmlhdHNfcGF0X3BhdGllbnRzTWV0YURhdGEucGhwIjt9aToxO2E6MTp7czo5OiJtZXRhX2RhdGEiO3M6ODU6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvcmVsYXRpb25zaGlwcy9wYXRfcGF0aWVudHNfYWNjb3VudHNNZXRhRGF0YS5waHAiO31pOjI7YToxOntzOjk6Im1ldGFfZGF0YSI7czo5MzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9yZWxhdGlvbnNoaXBzL3BhdF9wYXRpZW50c19wYXRfcGFydGVuYXJpYXRzTWV0YURhdGEucGhwIjt9fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6Mjp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQ4OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL3BhdF9QYXJ0ZW5hcmlhdHMiO3M6MjoidG8iO3M6MjQ6Im1vZHVsZXMvcGF0X1BhcnRlbmFyaWF0cyI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo0NDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbW9kdWxlcy9wYXRfUGF0aWVudHMiO3M6MjoidG8iO3M6MjA6Im1vZHVsZXMvcGF0X1BhdGllbnRzIjt9fXM6ODoibGFuZ3VhZ2UiO2E6MTM6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo2MzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9wYXRfUGF0aWVudHMucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMjoicGF0X1BhdGllbnRzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjYzOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL3BhdF9QYXRpZW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJwYXRfUGF0aWVudHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZnJfRlIiO31pOjI7YTozOntzOjQ6ImZyb20iO3M6Njc6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvcGF0X1BhcnRlbmFyaWF0cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE2OiJwYXRfUGFydGVuYXJpYXRzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTozO2E6Mzp7czo0OiJmcm9tIjtzOjY3OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL3BhdF9QYXJ0ZW5hcmlhdHMucGhwIjtzOjk6InRvX21vZHVsZSI7czoxNjoicGF0X1BhcnRlbmFyaWF0cyI7czo4OiJsYW5ndWFnZSI7czo1OiJmcl9GUiI7fWk6NDthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9BY2NvdW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjg6IkFjY291bnRzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTo1O2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL0FjY291bnRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZnJfRlIiO31pOjY7YTozOntzOjQ6ImZyb20iO3M6NjM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvcGF0X1BhdGllbnRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6InBhdF9QYXRpZW50cyI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6NzthOjM6e3M6NDoiZnJvbSI7czo2MzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9wYXRfUGF0aWVudHMucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMjoicGF0X1BhdGllbnRzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImZyX0ZSIjt9aTo4O2E6Mzp7czo0OiJmcm9tIjtzOjY3OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL3BhdF9QYXJ0ZW5hcmlhdHMucGhwIjtzOjk6InRvX21vZHVsZSI7czoxNjoicGF0X1BhcnRlbmFyaWF0cyI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fWk6OTthOjM6e3M6NDoiZnJvbSI7czo2NzoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9wYXRfUGFydGVuYXJpYXRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTY6InBhdF9QYXJ0ZW5hcmlhdHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZnJfRlIiO31pOjEwO2E6Mzp7czo0OiJmcm9tIjtzOjYzOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL3BhdF9QYXRpZW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJwYXRfUGF0aWVudHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjExO2E6Mzp7czo0OiJmcm9tIjtzOjYzOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL3BhdF9QYXRpZW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJwYXRfUGF0aWVudHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZnJfRlIiO31pOjEyO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9fXM6NzoidmFyZGVmcyI7YTo2OntpOjA7YToyOntzOjQ6ImZyb20iO3M6OTI6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvdmFyZGVmcy9wYXRfcGFydGVuYXJpYXRzX3BhdF9wYXRpZW50c19wYXRfUGF0aWVudHMucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMjoicGF0X1BhdGllbnRzIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjk2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvcGF0X3BhcnRlbmFyaWF0c19wYXRfcGF0aWVudHNfcGF0X1BhcnRlbmFyaWF0cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjE2OiJwYXRfUGFydGVuYXJpYXRzIjt9aToyO2E6Mjp7czo0OiJmcm9tIjtzOjgwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvcGF0X3BhdGllbnRzX2FjY291bnRzX0FjY291bnRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6ODoiQWNjb3VudHMiO31pOjM7YToyOntzOjQ6ImZyb20iO3M6ODQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvdmFyZGVmcy9wYXRfcGF0aWVudHNfYWNjb3VudHNfcGF0X1BhdGllbnRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTI6InBhdF9QYXRpZW50cyI7fWk6NDthOjI6e3M6NDoiZnJvbSI7czo5NjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL3BhdF9wYXRpZW50c19wYXRfcGFydGVuYXJpYXRzX3BhdF9QYXJ0ZW5hcmlhdHMucGhwIjtzOjk6InRvX21vZHVsZSI7czoxNjoicGF0X1BhcnRlbmFyaWF0cyI7fWk6NTthOjI6e3M6NDoiZnJvbSI7czo5MjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy92YXJkZWZzL3BhdF9wYXRpZW50c19wYXRfcGFydGVuYXJpYXRzX3BhdF9QYXRpZW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEyOiJwYXRfUGF0aWVudHMiO319czoxMjoibGF5b3V0ZmllbGRzIjthOjM6e2k6MDthOjE6e3M6MTc6ImFkZGl0aW9uYWxfZmllbGRzIjthOjA6e319aToxO2E6MTp7czoxNzoiYWRkaXRpb25hbF9maWVsZHMiO2E6MTp7czo4OiJBY2NvdW50cyI7czoyNjoicGF0X3BhdGllbnRzX2FjY291bnRzX25hbWUiO319aToyO2E6MTp7czoxNzoiYWRkaXRpb25hbF9maWVsZHMiO2E6MDp7fX19fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9','2018-10-12 22:24:05',1),('52badadb-6713-9629-7241-5bb3c94aa326','upload/upgrades/langpack/fr (1).zip','90603d60da38d2a9f11c3c45429432b5','langpack','installed','7.10.7.5','French (France)','Traduction : www.crowdin.com/project/suitecrmtranslations','fr_FR','YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6NDoibmFtZSI7czoxNToiRnJlbmNoIChGcmFuY2UpIjtzOjExOiJkZXNjcmlwdGlvbiI7czo1NzoiVHJhZHVjdGlvbiA6IHd3dy5jcm93ZGluLmNvbS9wcm9qZWN0L3N1aXRlY3JtdHJhbnNsYXRpb25zIjtzOjQ6InR5cGUiO3M6ODoibGFuZ3BhY2siO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO3M6MzoiWWVzIjtzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjA6e31zOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MTp7aTowO3M6MjoiQ0UiO31zOjY6ImF1dGhvciI7czoxODoiU3VpdGVDUk0gQ29tbXVuaXR5IjtzOjc6InZlcnNpb24iO3M6ODoiNy4xMC43LjUiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjEwOiIyMDE4LTA5LTA3Ijt9czoxMToiaW5zdGFsbGRlZnMiO2E6Mzp7czoyOiJpZCI7czo1OiJmcl9GUiI7czo5OiJpbWFnZV9kaXIiO3M6MTc6IjxiYXNlcGF0aD4vaW1hZ2VzIjtzOjQ6ImNvcHkiO2E6Mzp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjE4OiI8YmFzZXBhdGg+L2luY2x1ZGUiO3M6MjoidG8iO3M6NzoiaW5jbHVkZSI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czoxODoiPGJhc2VwYXRoPi9tb2R1bGVzIjtzOjI6InRvIjtzOjc6Im1vZHVsZXMiO31pOjI7YToyOntzOjQ6ImZyb20iO3M6MTg6IjxiYXNlcGF0aD4vaW5zdGFsbCI7czoyOiJ0byI7czo3OiJpbnN0YWxsIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==','2018-10-02 19:39:17',1),('93442867-39ee-3338-3f1c-5bc10ec80fc4','upload/upgrades/module/Entrevues2018_10_12_211508.zip','4ed445519b694a2c503b27ce2ee9dc6a','module','installed','1539378908','Entrevues','','Entrevues','YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntpOjA7YToxOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e2k6MDtzOjA6IiI7fX1pOjE7YToxOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9fXM6NjoicmVhZG1lIjtzOjA6IiI7czozOiJrZXkiO3M6MzoiZW50IjtzOjY6ImF1dGhvciI7czowOiIiO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjA6IiI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO3M6NDoibmFtZSI7czo5OiJFbnRyZXZ1ZXMiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDE4LTEwLTEyIDIxOjE1OjA3IjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjc6InZlcnNpb24iO2k6MTUzOTM3ODkwODtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjk6e3M6MjoiaWQiO3M6OToiRW50cmV2dWVzIjtzOjU6ImJlYW5zIjthOjE6e2k6MDthOjQ6e3M6NjoibW9kdWxlIjtzOjEzOiJlbnRfRW50cmV2dWVzIjtzOjU6ImNsYXNzIjtzOjEzOiJlbnRfRW50cmV2dWVzIjtzOjQ6InBhdGgiO3M6Mzk6Im1vZHVsZXMvZW50X0VudHJldnVlcy9lbnRfRW50cmV2dWVzLnBocCI7czozOiJ0YWIiO2I6MTt9fXM6MTA6ImxheW91dGRlZnMiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjg0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xheW91dGRlZnMvZW50X2VudHJldnVlc19hY2NvdW50c19BY2NvdW50cy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjg6IkFjY291bnRzIjt9fXM6MTM6InJlbGF0aW9uc2hpcHMiO2E6Mjp7aTowO2E6MTp7czo5OiJtZXRhX2RhdGEiO3M6ODY6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvcmVsYXRpb25zaGlwcy9lbnRfZW50cmV2dWVzX2FjY291bnRzTWV0YURhdGEucGhwIjt9aToxO2E6MTp7czo5OiJtZXRhX2RhdGEiO3M6ODM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvcmVsYXRpb25zaGlwcy9lbnRfZW50cmV2dWVzX3VzZXJzTWV0YURhdGEucGhwIjt9fXM6OToiaW1hZ2VfZGlyIjtzOjE2OiI8YmFzZXBhdGg+L2ljb25zIjtzOjQ6ImNvcHkiO2E6MTp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQ1OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9tb2R1bGVzL2VudF9FbnRyZXZ1ZXMiO3M6MjoidG8iO3M6MjE6Im1vZHVsZXMvZW50X0VudHJldnVlcyI7fX1zOjg6Imxhbmd1YWdlIjthOjk6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo2NDoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9lbnRfRW50cmV2dWVzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTM6ImVudF9FbnRyZXZ1ZXMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NjQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZW50X0VudHJldnVlcy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJlbnRfRW50cmV2dWVzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImZyX0ZSIjt9aToyO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL0FjY291bnRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjM7YTozOntzOjQ6ImZyb20iO3M6NTk6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvQWNjb3VudHMucGhwIjtzOjk6InRvX21vZHVsZSI7czo4OiJBY2NvdW50cyI7czo4OiJsYW5ndWFnZSI7czo1OiJmcl9GUiI7fWk6NDthOjM6e3M6NDoiZnJvbSI7czo1NjoiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvcmVsYXRpb25zaGlwcy9sYW5ndWFnZS9Vc2Vycy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjU6IlVzZXJzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTo1O2E6Mzp7czo0OiJmcm9tIjtzOjU2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL1VzZXJzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NToiVXNlcnMiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZnJfRlIiO31pOjY7YTozOntzOjQ6ImZyb20iO3M6NjQ6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvbGFuZ3VhZ2UvZW50X0VudHJldnVlcy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjEzOiJlbnRfRW50cmV2dWVzIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aTo3O2E6Mzp7czo0OiJmcm9tIjtzOjY0OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL2xhbmd1YWdlL2VudF9FbnRyZXZ1ZXMucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiZW50X0VudHJldnVlcyI7czo4OiJsYW5ndWFnZSI7czo1OiJmcl9GUiI7fWk6ODthOjM6e3M6NDoiZnJvbSI7czo1OToiPGJhc2VwYXRoPi9TdWdhck1vZHVsZXMvbGFuZ3VhZ2UvYXBwbGljYXRpb24vZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjExOiJhcHBsaWNhdGlvbiI7czo4OiJsYW5ndWFnZSI7czo1OiJlbl91cyI7fX1zOjc6InZhcmRlZnMiO2E6NDp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjg2OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9yZWxhdGlvbnNoaXBzL3ZhcmRlZnMvZW50X2VudHJldnVlc19hY2NvdW50c19lbnRfRW50cmV2dWVzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTM6ImVudF9FbnRyZXZ1ZXMiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6ODE6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvdmFyZGVmcy9lbnRfZW50cmV2dWVzX2FjY291bnRzX0FjY291bnRzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6ODoiQWNjb3VudHMiO31pOjI7YToyOntzOjQ6ImZyb20iO3M6NzU6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvdmFyZGVmcy9lbnRfZW50cmV2dWVzX3VzZXJzX1VzZXJzLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NToiVXNlcnMiO31pOjM7YToyOntzOjQ6ImZyb20iO3M6ODM6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL3JlbGF0aW9uc2hpcHMvdmFyZGVmcy9lbnRfZW50cmV2dWVzX3VzZXJzX2VudF9FbnRyZXZ1ZXMucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMzoiZW50X0VudHJldnVlcyI7fX1zOjEyOiJsYXlvdXRmaWVsZHMiO2E6Mjp7aTowO2E6MTp7czoxNzoiYWRkaXRpb25hbF9maWVsZHMiO2E6MDp7fX1pOjE7YToxOntzOjE3OiJhZGRpdGlvbmFsX2ZpZWxkcyI7YToxOntzOjU6IlVzZXJzIjtzOjI0OiJlbnRfZW50cmV2dWVzX3VzZXJzX25hbWUiO319fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==','2018-10-12 21:15:07',1);
/*!40000 ALTER TABLE `upgrade_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext,
  PRIMARY KEY (`id`),
  KEY `idx_userprefnamecat` (`assigned_user_id`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
INSERT INTO `user_preferences` VALUES ('61f258f4-c33f-03fc-785b-5ba5601f41db','global',0,'2018-09-21 21:19:10','2018-11-15 20:39:00','1','YTo0ODp7czo4OiJ0aW1lem9uZSI7czozOiJVVEMiO3M6MTI6Im1haWxtZXJnZV9vbiI7czoyOiJvbiI7czoxNjoic3dhcF9sYXN0X3ZpZXdlZCI7czowOiIiO3M6MTQ6InN3YXBfc2hvcnRjdXRzIjtzOjA6IiI7czoxOToibmF2aWdhdGlvbl9wYXJhZGlnbSI7czoyOiJnbSI7czoyMDoic29ydF9tb2R1bGVzX2J5X25hbWUiO3M6MDoiIjtzOjEzOiJzdWJwYW5lbF90YWJzIjtzOjA6IiI7czoyNToiY291bnRfY29sbGFwc2VkX3N1YnBhbmVscyI7czowOiIiO3M6MTA6InVzZXJfdGhlbWUiO3M6NjoiU3VpdGVQIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxMzoicmVtaW5kZXJfdGltZSI7czo0OiIxODAwIjtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtzOjQ6IjM2MDAiO3M6MTY6InJlbWluZGVyX2NoZWNrZWQiO3M6MToiMSI7czoyOiJ1dCI7czoxOiIxIjtzOjU6ImRhdGVmIjtzOjU6Im0vZC9ZIjtzOjE1OiJtYWlsX3NtdHBzZXJ2ZXIiO3M6MDoiIjtzOjEzOiJtYWlsX3NtdHBwb3J0IjtzOjI6IjI1IjtzOjEzOiJtYWlsX3NtdHB1c2VyIjtzOjA6IiI7czoxMzoibWFpbF9zbXRwcGFzcyI7czowOiIiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE2OiJleHBvcnRfZGVsaW1pdGVyIjtzOjE6IiwiO3M6MjI6ImRlZmF1bHRfZXhwb3J0X2NoYXJzZXQiO3M6NToiVVRGLTgiO3M6MTQ6InVzZV9yZWFsX25hbWVzIjtzOjI6Im9uIjtzOjE3OiJtYWlsX3NtdHBhdXRoX3JlcSI7czowOiIiO3M6MTI6Im1haWxfc210cHNzbCI7aTowO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMToiZGVmYXVsdF9lbWFpbF9jaGFyc2V0IjtzOjU6IlVURi04IjtzOjE5OiJ0aGVtZV9jdXJyZW50X2dyb3VwIjtzOjQ6IlRvdXMiO3M6MTE6ImVkaXRvcl90eXBlIjtzOjY6Im1vemFpayI7czoyMjoiZW1haWxfcmVtaW5kZXJfY2hlY2tlZCI7czoxOiIwIjtzOjg6ImN1cnJlbmN5IjtzOjM6Ii05OSI7czozNToiZGVmYXVsdF9jdXJyZW5jeV9zaWduaWZpY2FudF9kaWdpdHMiO3M6MToiMiI7czoxMToibnVtX2dycF9zZXAiO3M6MToiLCI7czo3OiJkZWNfc2VwIjtzOjE6Ii4iO3M6NDoiZmRvdyI7czoxOiIwIjtzOjU6InRpbWVmIjtzOjM6Ikg6aSI7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjIwOiJjYWxlbmRhcl9wdWJsaXNoX2tleSI7czowOiIiO3M6ODoic3VidGhlbWUiO3M6NDoiRGF3biI7czo5OiJBQ0xSb2xlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxNToiYWR2YW5jZWRfc2VhcmNoIjt9czoxNToiU2VjdXJpdHlHcm91cHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6NjoiVXNlcnNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6MTM6InBhdF9QYXRpZW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czo5OiJBY2NvdW50c1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9czoxNDoiZW50X0VudHJldnVlc1EiO2E6MTp7czoxMzoic2VhcmNoRm9ybVRhYiI7czoxMjoiYmFzaWNfc2VhcmNoIjt9fQ=='),('680cd249-59a2-1652-dbc6-5ba56067eb26','ETag',0,'2018-09-21 21:19:10','2018-11-15 20:22:05','1','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MzM7fQ=='),('b2c1d711-ca9c-1486-16e6-5ba56054d8fe','Home',0,'2018-09-21 21:21:27','2018-09-21 21:28:08','1','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjljMGQ1MjVjLTcwODEtNWJkZi0wZmY3LTViYTU2MGI0YmY0YyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjljYzhkZTU1LTY5NTYtZTE2Yy05ODJmLTViYTU2MGRjMTZmYyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjlkNDVkMjAzLTM0MDAtYmQ2NS00NDU4LTViYTU2MDc4ZDlmOCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjlkYzJkMTg3LTEyNjgtYzg4Mi03ZTI2LTViYTU2MDMyNTBkNyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiOWViY2QwNWMtYjRjNi1lYjQxLTY2NDQtNWJhNTYwZTY0YzlhIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiOWYzOWRkYWQtOGQ4NC1hMGM3LTBhOGItNWJhNTYwNTNhNTEwIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiI5Y2M4ZGU1NS02OTU2LWUxNmMtOTgyZi01YmE1NjBkYzE2ZmMiO2k6MTtzOjM2OiI5ZDQ1ZDIwMy0zNDAwLWJkNjUtNDQ1OC01YmE1NjA3OGQ5ZjgiO2k6MjtzOjM2OiI5ZGMyZDE4Ny0xMjY4LWM4ODItN2UyNi01YmE1NjAzMjUwZDciO2k6MztzOjM2OiI5ZWJjZDA1Yy1iNGM2LWViNDEtNjY0NC01YmE1NjBlNjRjOWEiO2k6NDtzOjM2OiI5ZjM5ZGRhZC04ZDg0LWEwYzctMGE4Yi01YmE1NjA1M2E1MTAiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjljMGQ1MjVjLTcwODEtNWJkZi0wZmY3LTViYTU2MGI0YmY0YyI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('b726d6c5-081c-6ace-d0d7-5ba560632e43','Home2_CALL',0,'2018-09-21 21:21:27','2018-09-21 21:28:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('bb4d56b9-bd62-22fa-341f-5ba560a3a851','Home2_MEETING',0,'2018-09-21 21:21:27','2018-09-21 21:28:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('bff0ddc4-8887-14b3-f07a-5ba560c4a5fe','Home2_OPPORTUNITY',0,'2018-09-21 21:21:27','2018-09-21 21:28:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c4d2d83d-6e25-5500-0270-5ba560c25fc1','Home2_ACCOUNT',0,'2018-09-21 21:21:27','2018-09-21 21:28:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('c97652b2-909e-7f32-6e42-5ba560e0cfe1','Home2_LEAD',0,'2018-09-21 21:21:27','2018-09-21 21:28:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ce585339-a03a-7d85-f191-5ba56062dd3d','Home2_SUGARFEED',0,'2018-09-21 21:21:27','2018-09-21 21:28:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b820d636-9d51-64b0-59d4-5ba5607c5f77','Home2_LEAD_9f39ddad-8d84-a0c7-0a8b-5ba56053a510',0,'2018-09-21 21:21:33','2018-09-21 21:28:08','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('f1be2a4c-afe1-9259-c976-5ba5629978c1','Dashboard',0,'2018-09-21 21:28:07','2018-09-21 21:28:08','1','YTowOnt9'),('177d1911-b712-7465-389d-5ba562887f40','Emails',0,'2018-09-21 21:28:07','2018-09-21 21:28:08','1','YTowOnt9'),('324cf6ef-9950-e022-1783-5ba5626f15ff','ACLRoles2_ACLROLE',0,'2018-09-21 21:30:13','2018-09-21 21:30:13','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cfc94f88-3c3e-a4a2-0145-5ba564c417b4','SecurityGroups2_SECURITYGROUP',0,'2018-09-21 21:38:33','2018-09-21 21:38:33','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('109ab059-51cf-8453-7d9e-5ba566207452','Users2_USER',0,'2018-09-21 21:43:32','2018-09-21 21:43:32','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b0ec3ed2-20a5-0ab9-e241-5ba5663770c2','global',0,'2018-09-21 21:44:49','2018-09-21 21:51:50','79fc5856-a7ba-a277-8f30-5ba5661ee5d2','YTo0MTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOjM2MDA7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6ODoidGltZXpvbmUiO3M6MzoiVVRDIjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjExOiJlZGl0b3JfdHlwZSI7czo2OiJtb3phaWsiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6OToiQWNjb3VudHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fX0='),('ae8dcf91-ca6d-1b75-554d-5ba5673046c0','global',0,'2018-09-21 21:48:12','2018-11-15 21:21:56','79537bf1-951c-9483-13e1-5ba567c42893','YTo0MTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOjM2MDA7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6ODoidGltZXpvbmUiO3M6MzoiVVRDIjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjExOiJlZGl0b3JfdHlwZSI7czo2OiJtb3phaWsiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6OToiQWNjb3VudHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fX0='),('3ee59bf0-2b5a-94bc-26ee-5ba56732e6d1','ETag',0,'2018-09-21 21:51:38','2018-09-21 21:51:38','79fc5856-a7ba-a277-8f30-5ba5661ee5d2','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),('34aa84ef-3452-8817-1923-5ba567fb829c','Home',0,'2018-09-21 21:51:39','2018-09-21 21:51:39','79fc5856-a7ba-a277-8f30-5ba5661ee5d2','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImFiOGNkOGIxLWI1OWMtMWNkYi02MDI2LTViYTU2NzA5NTk0ZCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImFkODBlNzdjLTVmOWEtOWNkMi0xNmU5LTViYTU2NzJjNzVkNSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImFmYjM3MmI3LTdmN2MtNzBkMi1kYjcwLTViYTU2Nzg3YmY0ZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImIxYTc4MDgwLTFmZDQtZGNlMy1jZGFhLTViYTU2NzFiNzcwNSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYjQxODkzMjEtZTZiNS1mNGRiLWQ4NTYtNWJhNTY3NWYxMTBlIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYjY4OWFlN2QtZmQ1OS1iZDdmLWQ2OTAtNWJhNTY3ODIyNTdjIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJhZDgwZTc3Yy01ZjlhLTljZDItMTZlOS01YmE1NjcyYzc1ZDUiO2k6MTtzOjM2OiJhZmIzNzJiNy03ZjdjLTcwZDItZGI3MC01YmE1Njc4N2JmNGQiO2k6MjtzOjM2OiJiMWE3ODA4MC0xZmQ0LWRjZTMtY2RhYS01YmE1NjcxYjc3MDUiO2k6MztzOjM2OiJiNDE4OTMyMS1lNmI1LWY0ZGItZDg1Ni01YmE1Njc1ZjExMGUiO2k6NDtzOjM2OiJiNjg5YWU3ZC1mZDU5LWJkN2YtZDY5MC01YmE1Njc4MjI1N2MiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImFiOGNkOGIxLWI1OWMtMWNkYi02MDI2LTViYTU2NzA5NTk0ZCI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('4ecabb0d-b223-fd37-386b-5ba567edb0d1','Home2_CALL',0,'2018-09-21 21:51:39','2018-09-21 21:51:39','79fc5856-a7ba-a277-8f30-5ba5661ee5d2','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('536e5bf7-d7ab-9e2e-76c4-5ba5672333a5','Home2_MEETING',0,'2018-09-21 21:51:39','2018-09-21 21:51:39','79fc5856-a7ba-a277-8f30-5ba5661ee5d2','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('585079de-bd67-617e-129e-5ba567fac693','Home2_OPPORTUNITY',0,'2018-09-21 21:51:39','2018-09-21 21:51:39','79fc5856-a7ba-a277-8f30-5ba5661ee5d2','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('5d32994a-9608-0c56-8295-5ba56791d625','Home2_ACCOUNT',0,'2018-09-21 21:51:39','2018-09-21 21:51:39','79fc5856-a7ba-a277-8f30-5ba5661ee5d2','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('62533585-5277-0b3e-2be5-5ba567f827a3','Home2_LEAD',0,'2018-09-21 21:51:39','2018-09-21 21:51:39','79fc5856-a7ba-a277-8f30-5ba5661ee5d2','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6773d76c-f1b1-ed22-3292-5ba56797ea17','Home2_SUGARFEED',0,'2018-09-21 21:51:39','2018-09-21 21:51:39','79fc5856-a7ba-a277-8f30-5ba5661ee5d2','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e538d20c-ecdf-16ea-5aee-5ba567777c42','Home2_LEAD_b689ae7d-fd59-bd7f-d690-5ba56782257c',0,'2018-09-21 21:51:41','2018-09-21 21:51:41','79fc5856-a7ba-a277-8f30-5ba5661ee5d2','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b9c2b318-d066-6d82-478f-5ba5679398a9','Accounts2_ACCOUNT',0,'2018-09-21 21:51:50','2018-09-21 21:51:50','79fc5856-a7ba-a277-8f30-5ba5661ee5d2','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('47d24d48-b0cd-dc7b-febe-5ba56a92006f','global',0,'2018-09-21 22:01:28','2018-11-15 17:19:49','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','YTo0NTp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOjM2MDA7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6ODoidGltZXpvbmUiO3M6MzoiVVRDIjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjExOiJlZGl0b3JfdHlwZSI7czo2OiJtb3phaWsiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czo0OiJUb3VzIjtzOjk6IkFjY291bnRzUSI7YToxOntzOjEzOiJzZWFyY2hGb3JtVGFiIjtzOjEyOiJiYXNpY19zZWFyY2giO31zOjEzOiJwYXRfUGF0aWVudHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fXM6NjoiVGFza3NRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6MTQ6ImVudF9FbnRyZXZ1ZXNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiVXNlcnNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fX0='),('84db473a-a405-3362-f6c7-5ba56a03316c','ETag',0,'2018-09-21 22:02:59','2018-09-21 22:02:59','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),('6bb5c283-09c8-843f-e08b-5ba56a37d0e9','Home',0,'2018-09-21 22:03:00','2018-09-21 22:03:00','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6ImVjZGM0NDk1LWQ1ZDEtODNiZS1lMDVmLTViYTU2YTY3NGNiZCI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6ImVlZDA0NWNlLTNhZGQtZDgyNi01ODI2LTViYTU2YWYwZDk2MSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImYxMDJjODhlLTRmMzEtOThjYS1jNzFkLTViYTU2YWFmMWIyNSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6ImYyYjg0NTM4LTgyZTctNWJmMy1kNjA3LTViYTU2YWU2NDUxNyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYzZjMDBhNjItYjZiNS1kNjAyLWNiYTctNWJhNTZhZjU0NTFhIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiMzM3YzAwYjMtMTNmMi04N2VkLTRiM2QtNWJhNTZhYjE2YjhmIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiJlZWQwNDVjZS0zYWRkLWQ4MjYtNTgyNi01YmE1NmFmMGQ5NjEiO2k6MTtzOjM2OiJmMTAyYzg4ZS00ZjMxLTk4Y2EtYzcxZC01YmE1NmFhZjFiMjUiO2k6MjtzOjM2OiJmMmI4NDUzOC04MmU3LTViZjMtZDYwNy01YmE1NmFlNjQ1MTciO2k6MztzOjM2OiJjNmMwMGE2Mi1iNmI1LWQ2MDItY2JhNy01YmE1NmFmNTQ1MWEiO2k6NDtzOjM2OiIzMzdjMDBiMy0xM2YyLTg3ZWQtNGIzZC01YmE1NmFiMTZiOGYiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6ImVjZGM0NDk1LWQ1ZDEtODNiZS1lMDVmLTViYTU2YTY3NGNiZCI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('9054c7df-a343-f581-9d08-5ba56ae81e83','Home2_CALL',0,'2018-09-21 22:03:00','2018-09-21 22:03:00','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9536c066-ed29-94fd-ddd1-5ba56a542f90','Home2_MEETING',0,'2018-09-21 22:03:00','2018-09-21 22:03:00','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('9bce4487-9e43-9f91-1947-5ba56a1ae92c','Home2_OPPORTUNITY',0,'2018-09-21 22:03:00','2018-09-21 22:03:00','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a41b4a0e-9882-bfda-e0ef-5ba56aff27fe','Home2_ACCOUNT',0,'2018-09-21 22:03:00','2018-09-21 22:03:00','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ae5c4f75-e2f3-7631-6955-5ba56a239e3d','Home2_LEAD',0,'2018-09-21 22:03:00','2018-09-21 22:03:00','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('b8dbcced-520d-bfaa-d2d1-5ba56a4d50fa','Home2_SUGARFEED',0,'2018-09-21 22:03:00','2018-09-21 22:03:00','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('35ffcac3-92f2-925a-e0d1-5ba56a0d4d6d','Home2_LEAD_337c00b3-13f2-87ed-4b3d-5ba56ab16b8f',0,'2018-09-21 22:03:02','2018-09-21 22:03:02','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('47040413-da46-f91d-be59-5ba56ae100e2','Accounts2_ACCOUNT',0,'2018-09-21 22:03:43','2018-09-21 22:03:43','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7c310282-6c37-ec81-a3c8-5ba5769e3dab','pat_Patients2_PAT_PATIENTS',0,'2018-09-21 22:54:46','2018-09-21 22:54:46','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e3432c22-fdb3-827d-fc0f-5bb3c137c9de','pat_Patients2_PAT_PATIENTS',0,'2018-10-02 19:03:37','2018-10-02 19:03:37','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a036c3a5-e119-3984-7c5d-5bb3dcf029f7','Accounts2_ACCOUNT',0,'2018-10-02 21:01:10','2018-10-02 21:01:10','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7a285eba-b04a-f3b7-800a-5bc0e0ed62d8','ent_Entrevues2_ENT_ENTREVUES',0,'2018-10-12 17:56:54','2018-10-12 17:56:54','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1aaca834-92fa-8415-6d26-5bc0fa27abc9','ent_Entrevues2_ENT_ENTREVUES',0,'2018-10-12 19:47:57','2018-10-12 19:47:57','1','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ac026edb-b495-f0ff-5680-5bc10fc26100','Users2_USER',0,'2018-10-12 21:19:16','2018-10-12 21:19:16','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e889ea49-71ee-ead6-19ed-5beda03b05be','Emails',0,'2018-11-15 16:34:12','2018-11-15 16:34:13','66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','YTowOnt9'),('a51a05fe-2737-1b53-80a4-5bedd2270878','ETag',0,'2018-11-15 20:08:13','2018-11-15 20:08:13','79537bf1-951c-9483-13e1-5ba567c42893','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),('30e40269-d5c3-bd4a-fa8f-5bedd2fcbed1','Home',0,'2018-11-15 20:08:15','2018-11-15 20:08:15','79537bf1-951c-9483-13e1-5ba567c42893','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjVmNDcwYTkzLTE1MDYtOTI2Ny00NjUyLTViZWRkMjA2YzM2NyI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjYxYjgwZTg2LWE4NTUtMjFkZC05NThmLTViZWRkMmEwYWFhZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjY0YTYwYzJhLThiZjktZDM4Mi1hY2ZkLTViZWRkMjlkNTQ5NCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjY2ZDg4ZDZjLTMzNWEtZDBhNi0xMzFhLTViZWRkMmQzMzQ2MyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNmE4MjAyMTUtMWVhOC0zMzlmLTYxNDYtNWJlZGQyYzE1MzNhIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNzAxZjg2MjgtMWYxOS05OWIwLTk1ZTMtNWJlZGQyNDg1ZTdiIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiI2MWI4MGU4Ni1hODU1LTIxZGQtOTU4Zi01YmVkZDJhMGFhYWQiO2k6MTtzOjM2OiI2NGE2MGMyYS04YmY5LWQzODItYWNmZC01YmVkZDI5ZDU0OTQiO2k6MjtzOjM2OiI2NmQ4OGQ2Yy0zMzVhLWQwYTYtMTMxYS01YmVkZDJkMzM0NjMiO2k6MztzOjM2OiI2YTgyMDIxNS0xZWE4LTMzOWYtNjE0Ni01YmVkZDJjMTUzM2EiO2k6NDtzOjM2OiI3MDFmODYyOC0xZjE5LTk5YjAtOTVlMy01YmVkZDI0ODVlN2IiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjVmNDcwYTkzLTE1MDYtOTI2Ny00NjUyLTViZWRkMjA2YzM2NyI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('5a2685d6-8429-bcca-1296-5bedd260ea3f','Home2_CALL',0,'2018-11-15 20:08:15','2018-11-15 20:08:15','79537bf1-951c-9483-13e1-5ba567c42893','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('6fe1081f-720a-571f-0f58-5bedd2a2791c','Home2_MEETING',0,'2018-11-15 20:08:15','2018-11-15 20:08:15','79537bf1-951c-9483-13e1-5ba567c42893','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('7bd78727-ef3f-658c-5dc8-5bedd2281cbb','Home2_OPPORTUNITY',0,'2018-11-15 20:08:15','2018-11-15 20:08:15','79537bf1-951c-9483-13e1-5ba567c42893','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('8cb00d7f-01df-14fc-7678-5bedd29f9882','Home2_ACCOUNT',0,'2018-11-15 20:08:15','2018-11-15 20:08:15','79537bf1-951c-9483-13e1-5ba567c42893','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('a0b508da-bfdb-b953-b598-5bedd2ae429f','Home2_LEAD',0,'2018-11-15 20:08:15','2018-11-15 20:08:15','79537bf1-951c-9483-13e1-5ba567c42893','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ac6d0423-9de0-3784-00b1-5bedd283b2c0','Home2_SUGARFEED',0,'2018-11-15 20:08:15','2018-11-15 20:08:15','79537bf1-951c-9483-13e1-5ba567c42893','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('928c090f-6d2a-3f32-6492-5bedd243677f','Home2_LEAD_701f8628-1f19-99b0-95e3-5bedd2485e7b',0,'2018-11-15 20:08:18','2018-11-15 20:08:18','79537bf1-951c-9483-13e1-5ba567c42893','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cb800b86-ac2f-7d6c-f4b5-5bedd2ae2171','Accounts2_ACCOUNT',0,'2018-11-15 20:09:40','2018-11-15 20:09:40','79537bf1-951c-9483-13e1-5ba567c42893','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('eb60044f-26b7-04aa-8bdc-5bedd5b75507','global',0,'2018-11-15 20:20:59','2018-11-15 21:12:30','928c090d-96a8-79b3-0df4-5bedd5fd29d9','YTo0Mjp7czoxMjoibWFpbG1lcmdlX29uIjtzOjI6Im9uIjtzOjE2OiJzd2FwX2xhc3Rfdmlld2VkIjtzOjA6IiI7czoxNDoic3dhcF9zaG9ydGN1dHMiO3M6MDoiIjtzOjE5OiJuYXZpZ2F0aW9uX3BhcmFkaWdtIjtzOjI6ImdtIjtzOjIwOiJzb3J0X21vZHVsZXNfYnlfbmFtZSI7czowOiIiO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjI1OiJjb3VudF9jb2xsYXBzZWRfc3VicGFuZWxzIjtzOjA6IiI7czoxNDoibW9kdWxlX2Zhdmljb24iO3M6MDoiIjtzOjk6ImhpZGVfdGFicyI7YTowOnt9czoxMToicmVtb3ZlX3RhYnMiO2E6MDp7fXM6Nzoibm9fb3BwcyI7czozOiJvZmYiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjE5OiJlbWFpbF9yZW1pbmRlcl90aW1lIjtpOjM2MDA7czoxNjoicmVtaW5kZXJfY2hlY2tlZCI7czoxOiIxIjtzOjIyOiJlbWFpbF9yZW1pbmRlcl9jaGVja2VkIjtzOjE6IjEiO3M6ODoidGltZXpvbmUiO3M6MzoiVVRDIjtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo0OiJmZG93IjtzOjE6IjAiO3M6NToiZGF0ZWYiO3M6NToibS9kL1kiO3M6NToidGltZWYiO3M6NDoiaDppYSI7czoyNjoiZGVmYXVsdF9sb2NhbGVfbmFtZV9mb3JtYXQiO3M6NToicyBmIGwiO3M6MTY6ImV4cG9ydF9kZWxpbWl0ZXIiO3M6MToiLCI7czoyMjoiZGVmYXVsdF9leHBvcnRfY2hhcnNldCI7czo1OiJVVEYtOCI7czoxNDoidXNlX3JlYWxfbmFtZXMiO3M6Mjoib24iO3M6MTc6Im1haWxfc210cGF1dGhfcmVxIjtzOjA6IiI7czoxMjoibWFpbF9zbXRwc3NsIjtpOjA7czoxNToiZW1haWxfbGlua190eXBlIjtzOjU6InN1Z2FyIjtzOjExOiJlZGl0b3JfdHlwZSI7czo2OiJtb3phaWsiO3M6MTc6ImVtYWlsX3Nob3dfY291bnRzIjtpOjA7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MDoiIjtzOjg6InN1YnRoZW1lIjtzOjQ6IkRhd24iO3M6MTU6ImxvZ2luZXhwaXJhdGlvbiI7czoxOiIwIjtzOjc6ImxvY2tvdXQiO3M6MDoiIjtzOjExOiJsb2dpbmZhaWxlZCI7czoxOiIwIjtzOjEwOiJ1c2VyX3RoZW1lIjtzOjY6IlN1aXRlUCI7czoxOToidGhlbWVfY3VycmVudF9ncm91cCI7czozOiJBbGwiO3M6OToiQWNjb3VudHNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7fXM6NjoiVXNlcnNRIjthOjE6e3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTU6ImFkdmFuY2VkX3NlYXJjaCI7fX0='),('ce9b031d-71d9-747d-e90c-5bedd6ff4407','ETag',0,'2018-11-15 20:28:32','2018-11-15 20:28:32','928c090d-96a8-79b3-0df4-5bedd5fd29d9','YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTt9'),('75bd0bc8-4e9f-379b-50d4-5bedd602cd8c','Home',0,'2018-11-15 20:28:35','2018-11-15 20:28:35','928c090d-96a8-79b3-0df4-5bedd5fd29d9','YToyOntzOjg6ImRhc2hsZXRzIjthOjY6e3M6MzY6IjM1MGE4MjQwLWFkNDctYTRhOC04MWEwLTViZWRkNmRhNmIwMiI7YTo0OntzOjk6ImNsYXNzTmFtZSI7czoxNjoiU3VnYXJGZWVkRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6OToiU3VnYXJGZWVkIjtzOjExOiJmb3JjZUNvbHVtbiI7aToxO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NDoibW9kdWxlcy9TdWdhckZlZWQvRGFzaGxldHMvU3VnYXJGZWVkRGFzaGxldC9TdWdhckZlZWREYXNobGV0LnBocCI7fXM6MzY6IjM3N2I4OWMxLWUxMzItYWY1MC0xNzAyLTViZWRkNmRhM2VmZCI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNDoiTXlDYWxsc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjU6IkNhbGxzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo1NjoibW9kdWxlcy9DYWxscy9EYXNobGV0cy9NeUNhbGxzRGFzaGxldC9NeUNhbGxzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjM5ZWM4NWExLWZhYzItZTUzZi0zMDk4LTViZWRkNjBlNTEzYSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxNzoiTXlNZWV0aW5nc0Rhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjg6Ik1lZXRpbmdzIjtzOjExOiJmb3JjZUNvbHVtbiI7aTowO3M6MTI6ImZpbGVMb2NhdGlvbiI7czo2NToibW9kdWxlcy9NZWV0aW5ncy9EYXNobGV0cy9NeU1lZXRpbmdzRGFzaGxldC9NeU1lZXRpbmdzRGFzaGxldC5waHAiO3M6Nzoib3B0aW9ucyI7YTowOnt9fXM6MzY6IjNjNWQ4NWE0LWYwOTYtZjRhZi0zMjcxLTViZWRkNmI5Yjc2YyI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoyMjoiTXlPcHBvcnR1bml0aWVzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6MTM6Ik9wcG9ydHVuaXRpZXMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjgwOiJtb2R1bGVzL09wcG9ydHVuaXRpZXMvRGFzaGxldHMvTXlPcHBvcnR1bml0aWVzRGFzaGxldC9NeU9wcG9ydHVuaXRpZXNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiM2M5YzAyNjYtYTkyYS04M2I1LTQ0OTItNWJlZGQ2NDFlOGQ4IjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeUFjY291bnRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiQWNjb3VudHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL0FjY291bnRzL0Rhc2hsZXRzL015QWNjb3VudHNEYXNobGV0L015QWNjb3VudHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiNDE3ZTBhMDQtZWY3Ny0wMWM2LTIwYTEtNWJlZGQ2Y2NkZjZlIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUxlYWRzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiTGVhZHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0xlYWRzL0Rhc2hsZXRzL015TGVhZHNEYXNobGV0L015TGVhZHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319fXM6NToicGFnZXMiO2E6MTp7aTowO2E6Mzp7czo3OiJjb2x1bW5zIjthOjI6e2k6MDthOjI6e3M6NToid2lkdGgiO3M6MzoiNjAlIjtzOjg6ImRhc2hsZXRzIjthOjU6e2k6MDtzOjM2OiIzNzdiODljMS1lMTMyLWFmNTAtMTcwMi01YmVkZDZkYTNlZmQiO2k6MTtzOjM2OiIzOWVjODVhMS1mYWMyLWU1M2YtMzA5OC01YmVkZDYwZTUxM2EiO2k6MjtzOjM2OiIzYzVkODVhNC1mMDk2LWY0YWYtMzI3MS01YmVkZDZiOWI3NmMiO2k6MztzOjM2OiIzYzljMDI2Ni1hOTJhLTgzYjUtNDQ5Mi01YmVkZDY0MWU4ZDgiO2k6NDtzOjM2OiI0MTdlMGEwNC1lZjc3LTAxYzYtMjBhMS01YmVkZDZjY2RmNmUiO319aToxO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI0MCUiO3M6ODoiZGFzaGxldHMiO2E6MTp7aTowO3M6MzY6IjM1MGE4MjQwLWFkNDctYTRhOC04MWEwLTViZWRkNmRhNmIwMiI7fX19czoxMDoibnVtQ29sdW1ucyI7czoxOiIzIjtzOjE0OiJwYWdlVGl0bGVMYWJlbCI7czoyMDoiTEJMX0hPTUVfUEFHRV8xX05BTUUiO319fQ=='),('9f7c834a-498b-2fc5-c050-5bedd60fbc0d','Home2_CALL',0,'2018-11-15 20:28:35','2018-11-15 20:28:35','928c090d-96a8-79b3-0df4-5bedd5fd29d9','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ad2889ca-a30a-19ba-c54d-5bedd61cb51c','Home2_MEETING',0,'2018-11-15 20:28:35','2018-11-15 20:28:35','928c090d-96a8-79b3-0df4-5bedd5fd29d9','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('bd8404c1-c16c-3048-b672-5bedd60ecd43','Home2_OPPORTUNITY',0,'2018-11-15 20:28:35','2018-11-15 20:28:35','928c090d-96a8-79b3-0df4-5bedd5fd29d9','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('cf568577-5271-9aa0-46b9-5bedd6070d8e','Home2_ACCOUNT',0,'2018-11-15 20:28:35','2018-11-15 20:28:35','928c090d-96a8-79b3-0df4-5bedd5fd29d9','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('df35018a-57f6-b4d7-11c4-5bedd65d8d55','Home2_LEAD',0,'2018-11-15 20:28:35','2018-11-15 20:28:35','928c090d-96a8-79b3-0df4-5bedd5fd29d9','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('ef52053b-567d-564a-2680-5bedd64b315b','Home2_SUGARFEED',0,'2018-11-15 20:28:35','2018-11-15 20:28:35','928c090d-96a8-79b3-0df4-5bedd5fd29d9','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('e4940592-3966-a31c-36dc-5bedd6dfa412','Home2_LEAD_417e0a04-ef77-01c6-20a1-5bedd6ccdf6e',0,'2018-11-15 20:28:40','2018-11-15 20:28:40','928c090d-96a8-79b3-0df4-5bedd5fd29d9','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('1fcd086e-20c3-2fa6-a177-5bedd7734f12','Accounts2_ACCOUNT',0,'2018-11-15 20:28:51','2018-11-15 20:28:51','928c090d-96a8-79b3-0df4-5bedd5fd29d9','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),('f2fb8750-b787-901e-9840-5beddb397c0c','Users2_USER',0,'2018-11-15 20:48:18','2018-11-15 20:48:18','928c090d-96a8-79b3-0df4-5bedd5fd29d9','YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL,
  `factor_auth` tinyint(1) DEFAULT NULL,
  `factor_auth_interface` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('1','admin','$1$mI2.184.$XrgFa5yfzP.EW2yaYUMdt/',0,NULL,NULL,1,'Dan','L\'Admin',1,0,1,NULL,'2018-09-21 21:19:10','2018-09-21 21:28:37','1','','Administrator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0,0,NULL),('79fc5856-a7ba-a277-8f30-5ba5661ee5d2','sh656','$1$66/.Vq2.$uN.CkVuGcJrgg/ugfFXR50',0,'2018-09-21 21:44:00',NULL,1,'Sarah','Hibou (AA)',0,0,1,NULL,'2018-09-21 21:44:49','2018-11-15 16:34:51','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0,0,NULL),('79537bf1-951c-9483-13e1-5ba567c42893','jl521','$1$OH5.9o3.$IUDTt3vhiTED3BM/y/m7c/',0,'2018-09-21 21:48:00',NULL,1,'Jennifer','Leboeuf (BB)',0,0,1,NULL,'2018-09-21 21:48:12','2018-11-15 20:08:13','79537bf1-951c-9483-13e1-5ba567c42893','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0,0,NULL),('66440dcf-8fc6-1c13-c7af-5ba56af6c0b4','rt141','$1$tk2.y7..$ttyB6JE/j5qbaDp0JCu8J.',0,'2018-09-21 22:01:00',NULL,1,'Romain','Trépier (AA)',0,0,1,NULL,'2018-09-21 22:01:28','2018-11-15 16:34:24','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0,0,NULL),('928c090d-96a8-79b3-0df4-5bedd5fd29d9','ss342','$1$eN..PR1.$zTUbgLxberNTUly.bPpRH.',0,'2018-11-15 20:20:00',NULL,1,'Sharon','Samberg (BB)',0,0,1,NULL,'2018-11-15 20:20:59','2018-11-15 20:28:32','928c090d-96a8-79b3-0df4-5bedd5fd29d9','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Active',NULL,NULL,NULL,NULL,NULL,0,0,1,'Active',NULL,NULL,'',0,0,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_feeds`
--

DROP TABLE IF EXISTS `users_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  KEY `idx_ud_user_id` (`user_id`,`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_feeds`
--

LOCK TABLES `users_feeds` WRITE;
/*!40000 ALTER TABLE `users_feeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_last_import`
--

DROP TABLE IF EXISTS `users_last_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_last_import`
--

LOCK TABLES `users_last_import` WRITE;
/*!40000 ALTER TABLE `users_last_import` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_last_import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_password_link`
--

DROP TABLE IF EXISTS `users_password_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_password_link`
--

LOCK TABLES `users_password_link` WRITE;
/*!40000 ALTER TABLE `users_password_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_password_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_signatures`
--

DROP TABLE IF EXISTS `users_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text,
  PRIMARY KEY (`id`),
  KEY `idx_usersig_uid` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_signatures`
--

LOCK TABLES `users_signatures` WRITE;
/*!40000 ALTER TABLE `users_signatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_signatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vcals`
--

DROP TABLE IF EXISTS `vcals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`),
  KEY `idx_vcal` (`type`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vcals`
--

LOCK TABLES `vcals` WRITE;
/*!40000 ALTER TABLE `vcals` DISABLE KEYS */;
/*!40000 ALTER TABLE `vcals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
