-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: resume
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.24.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appeal`
--

DROP TABLE IF EXISTS `appeal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appeal` (
  `appeal_id` int NOT NULL AUTO_INCREMENT,
  `from_name` varchar(40) DEFAULT NULL,
  `contact` varchar(60) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`appeal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appeal`
--

LOCK TABLES `appeal` WRITE;
/*!40000 ALTER TABLE `appeal` DISABLE KEYS */;
INSERT INTO `appeal` VALUES (1,'Dima','+79601110029','Хелло'),(2,'Dima','+79601110029','Хелло'),(3,'Dimas','+79601110029','Хелло Djh;t'),(4,'Dimasik','+79601110029','Хелло Djh;t'),(5,'Alex','alex@gmail.vom','wassap'),(6,'John','john@example.com','Hello'),(7,'Dima','Platov','Heey'),(8,'you','name','oo\n');
/*!40000 ALTER TABLE `appeal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `certificate_img_path` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pet_project`
--

DROP TABLE IF EXISTS `pet_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pet_project` (
  `pet_project_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `image_path` varchar(50) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pet_project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pet_project`
--

LOCK TABLES `pet_project` WRITE;
/*!40000 ALTER TABLE `pet_project` DISABLE KEYS */;
INSERT INTO `pet_project` VALUES (1,'Estate site','https://усадьба-уюта.рф','/resources/img/pet/estateSite.png','Fullstack dev. + devops','active web site'),(2,'Graph drawer','https://github.com/PlatovD/Graph-Drawer','/resources/img/pet/graphDrawer.png','Full stack dev.','Study project'),(3,'Algorithms site','https://github.com/PlatovD/logic_craft','/resources/img/pet/algSite.png','Fullstack dev.','unactive site'),(4,'Game Pockemons C++ for DSR','https://github.com/PlatovD/DSR_Game','/resources/img/pet/gameCPlusPlus.png','Gamedev','Course final project'),(5,'Sort Visualizer','https://github.com/PlatovD/SortApp','/resources/img/pet/sortApp.png','Full stack dev.','Study project'),(6,'Tanks 2D','https://github.com/PlatovD/Tanks2D','/resources/img/pet/tanks2d.png','Gamedev','University year final task'),(7,'VSU FCS schedule bot','https://github.com/Merkury2006-PlatovD/schedule_CS_VSU_bot_dockerversion','/resources/img/pet/schedule_bot.png','Developer','active bot with 200 req/day');
/*!40000 ALTER TABLE `pet_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technology`
--

DROP TABLE IF EXISTS `technology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technology` (
  `technology_id` int NOT NULL AUTO_INCREMENT,
  `image_path` varchar(50) DEFAULT NULL,
  `information` text,
  PRIMARY KEY (`technology_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology`
--

LOCK TABLES `technology` WRITE;
/*!40000 ALTER TABLE `technology` DISABLE KEYS */;
INSERT INTO `technology` VALUES (1,'/resources/img/spring.svg','Spring is a powerful open-source Java framework for building enterprise applications. It uses Inversion of Control (IoC) and Dependency Injection (DI) to manage components efficiently. The core modules include Spring Beans, Context, and SpEL. For web development, Spring MVC provides a Model-View-Controller architecture. Spring simplifies database access with support for JDBC, JPA, and Spring Data. Spring Boot streamlines configuration with auto-setup and embedded servers, while Spring Security handles authentication and authorization. The framework supports Aspect-Oriented Programming (AOP) for cross-cutting concerns like logging and transactions. For modern architectures, Spring enables microservices (Spring Cloud) and reactive programming (WebFlux). It also offers strong testing integration with JUnit and Mockito. With additional modules like Batch, Integration, and Session, Spring is ideal for scalable, modular, and cloud-ready Java applications.'),(2,'/resources/img/hibernate.svg','Hibernate is a widely-used ORM (Object-Relational Mapping) framework for Java that simplifies database interactions by allowing developers to work with databases as collections of Java objects. Key features include: entity mapping via annotations or XML, performance-enhancing caching mechanisms, HQL (Hibernate Query Language) for object-oriented queries, transaction management, automatic SQL generation, and lazy loading capabilities. Hibernate abstracts away database-specific details, ensuring portability across different database systems while significantly reducing boilerplate code compared to raw JDBC. It is commonly integrated with the Spring Framework in enterprise Java applications, where it helps maintain clean data access layers and improves developer productivity.'),(3,'/resources/img/django.svg','Django is a high-level Python web framework designed for rapid development of secure and scalable applications. It follows the \"batteries-included\" philosophy, providing built-in solutions for common tasks: an ORM for database interactions without raw SQL, an auto-generated admin interface for content management, a user authentication system, URL routing, a templating engine for HTML generation, protection against common vulnerabilities (CSRF, XSS, SQL injection), and a migrations system for database schema changes. Django is particularly well-suited for content-heavy websites, REST APIs (with Django REST Framework), and rapid prototyping. It offers robust support for PostgreSQL, MySQL, and SQLite, making it a versatile choice for developers prioritizing efficiency and clean design.'),(4,'/resources/img/git.svg','Git is a distributed version control system designed for tracking changes in source code during software development. It enables non-linear workflows through branching and merging capabilities, providing each developer with a complete local repository history. Git\'s architecture includes the working directory, staging area, and local repository, with remote repositories for collaboration. Key features include SHA-1 hashed object storage, efficient delta compression, and configurable hooks for automation. Common operations include commit, push, pull, merge, and rebase, with platforms like GitHub and GitLab providing hosting services.'),(5,'/resources/img/docker.svg','Docker is a containerization platform that packages applications and dependencies into lightweight, portable containers using operating-system-level virtualization. Containers share the host system\'s kernel but run in isolated user spaces, providing consistent environments across development, testing, and production. Docker components include images (read-only templates), containers (runtime instances), Dockerfiles (build instructions), and Docker Compose for multi-container applications. The architecture comprises the Docker daemon, client, and registries (like Docker Hub). Benefits include environment consistency, efficient resource utilization, and simplified dependency management.'),(6,'/resources/img/nginx.svg','Nginx is a high-performance web server, reverse proxy, and load balancer known for its event-driven, asynchronous architecture that efficiently handles concurrent connections with low memory usage. As a web server, it serves static content rapidly and supports FastCGI for dynamic content. Proxy features include load balancing (with round-robin, least connections, and IP-hash methods), SSL termination, and caching. Configuration is managed through a modular system with context-based directives in nginx.conf. Nginx excels in high-traffic scenarios due to its efficient handling of the C10K problem (managing many concurrent connections).'),(7,'/resources/img/apache2.svg','Apache2 is a modular, process-based web server with a mature codebase and extensive feature set. Its Multi-Processing Modules (MPMs) like prefork, worker, and event determine connection handling. Features include .htaccess per-directory configuration, extensive authentication modules, and comprehensive logging. While generally using more resources per connection than Nginx, Apache offers greater flexibility through dynamic module loading and is often preferred for complex configurations with many .htaccess files or when specific modules are required.'),(8,'/resources/img/mysql.svg','MySQL is a relational database management system using SQL for querying and managing data. Its architecture includes the storage engine layer (with InnoDB as default), SQL parser, optimizer, and caches. Features include ACID compliance (with InnoDB), transactions, foreign keys, stored procedures, triggers, and views. Replication options support master-slave and master-master topologies, while clustering is available through MySQL Cluster. Security features include encrypted connections, role-based access control, and auditing. MySQL is widely used in LAMP stacks and web applications requiring reliable relational data storage.'),(9,'/resources/img/linux.svg','Linux is a Unix-like, open-source operating system kernel forming the core of various distributions. Key components include the kernel (handling process scheduling, memory management, and device control), GNU utilities, and desktop environments. Features include multi-user support, preemptive multitasking, virtual memory, and robust networking. The filesystem hierarchy standard organizes directories, while package managers (apt, yum, etc.) handle software. Security mechanisms include discretionary access control, SELinux/AppArmor, and firewall configurations. Linux dominates in server environments, powers most container deployments, and is fundamental to cloud infrastructure due to its stability, security, and customizability.'),(10,'/resources/img/java.svg','Programming language'),(11,'/resources/img/python.svg','Programming language'),(12,'/resources/img/c++.png','Programming language');
/*!40000 ALTER TABLE `technology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technology_pet_project`
--

DROP TABLE IF EXISTS `technology_pet_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technology_pet_project` (
  `technology_id` int NOT NULL,
  `pet_project_id` int NOT NULL,
  PRIMARY KEY (`technology_id`,`pet_project_id`),
  KEY `pet_project_id` (`pet_project_id`),
  CONSTRAINT `technology_pet_project_ibfk_1` FOREIGN KEY (`technology_id`) REFERENCES `pet_project` (`pet_project_id`),
  CONSTRAINT `technology_pet_project_ibfk_2` FOREIGN KEY (`pet_project_id`) REFERENCES `technology` (`technology_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technology_pet_project`
--

LOCK TABLES `technology_pet_project` WRITE;
/*!40000 ALTER TABLE `technology_pet_project` DISABLE KEYS */;
INSERT INTO `technology_pet_project` VALUES (3,1),(4,1),(5,1),(6,1),(4,2),(10,2),(3,3),(4,3),(10,3),(4,4),(12,4),(4,5),(10,5),(4,6),(10,6),(4,7),(11,7);
/*!40000 ALTER TABLE `technology_pet_project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-12  8:46:11
