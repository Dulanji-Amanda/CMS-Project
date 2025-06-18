# Complaint Management System (CMS) – IJSE GDSE Advanced API Development Assignment

## Project Overview

This project is a prototype of a **Web-Based Complaint Management System (CMS)** developed using **JSP**, **Jakarta EE (Servlets)**, **Apache Commons DBCP**, and **MySQL**. The system is designed for internal municipal employees and administrative staff, enabling secure complaint submission, tracking, and resolution. 

### Key Features

- **Role-Based Authentication:** 
  - **Employee:** Submit, view, edit, and delete their own complaints (until resolved).
  - **Admin:** Manage all complaints, update statuses, add remarks, and delete any complaint.

- **Synchronous Form-Based Interactions:**
  - All backend operations are triggered via standard HTML form submissions (GET/POST), rendered by JSP.
  - **No AJAX, fetch, or XMLHttpRequest** is used.

- **MVC Architecture:**
  - **View:** JSP pages for all UI rendering.
  - **Controller:** Jakarta EE Servlets to process requests.
  - **Model:** JavaBeans (POJOs) and DAO classes for business logic and data access.

- **Session Management:** User sessions and role-based access control.

- **Database Integration:** MySQL for persistent storage, accessed via Apache Commons DBCP connection pooling.

---

## Setup & Configuration Guide

### Prerequisites

- **Java JDK 11+**
- **Apache Tomcat 9+**
- **MySQL Server**
- **Apache Commons DBCP library**
- **Maven** (recommended for dependency management)

### 1. Clone the Repository

```bash
git clone https://github.com/<Dulanji-Amanda>/<CMS-Project>.git
cd <CMS-Projec>
```

### 2. Database Setup

- Ensure MySQL server is running.
- Import the provided database schema:

```bash
mysql -u <username> -p < database/db_schema.sql
```

- Update your database connection settings in `/src/main/resources/db.properties` (or as directed in the code):

```
db.url=jdbc:mysql://localhost:3306/cms_db
db.username=your_mysql_username
db.password=your_mysql_password
```

### 3. Project Configuration

- Ensure all required libraries (Jakarta EE, DBCP, MySQL Connector/J) are included in your project’s `lib` folder or managed via Maven.

### 4. Deploy to Tomcat

- Build the project (via Maven or your IDE).
- Deploy the generated `.war` file to the Tomcat `webapps` directory.
- Start/Restart Tomcat server.

### 5. Access the Application

- Open your browser and navigate to:  
  `http://localhost:8080/<your-app-context>/`

---

## Source Code Layout

```
/
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   ├── controller/      # Servlets (Controllers)
│   │   │   ├── dao/             # Data Access Objects
│   │   │   ├── model/           # JavaBeans (POJOs)
│   │   │   └── util/            # DB Connection Pooling and Helpers
│   │   ├── webapp/
│   │   │   ├── WEB-INF/
│   │   │   │   └── web.xml      # Deployment Descriptor
│   │   │   ├── views/           # JSP Files (Views)
│   │   │   ├── css/             # CSS Files
│   │   │   └── js/              # JS (for validation only)
├── db/
│   └── schema.sql               # MySQL Schema Dump
├── README.md
└── ...
```

---

## Usage Guide

1. **Login:**  
   - Employees and Admins log in using assigned credentials.
2. **Employee Actions:**  
   - Submit new complaint, view/edit/delete own complaints.
3. **Admin Actions:**  
   - View all complaints, update status/remarks, or delete complaints.
4. **Session Management:**  
   - Secure role-based access throughout.

---

## System Architecture

- **JSP**: Renders all UI pages (Views).
- **Servlets**: Handle HTTP requests, manage sessions, invoke DAO/model logic (Controllers).
- **JavaBeans/DAO**: Represent business entities and handle database transactions (Model).
- **DBCP**: Efficient management of database connections.
- **All user actions use synchronous HTML forms** (GET/POST).

---

## Database Schema

- **Located at:** `/db/schema.sql`
- **Usage:** Import directly into your MySQL instance for immediate use.

---

## Demonstration Video

- **[https://youtu.be/MBkd_ICCbj4]**
- Covers: project overview, features demo, architecture explanation, and how form submissions trigger HTTP requests.

---

## Commit History

- Follow the commit history for a clear, step-by-step record of project development and feature implementation.

---

## Evaluation Criteria

- Functional correctness
- Effective JSP usage/compliance
- Code structure/modularity (MVC)
- GitHub usage & documentation
- Demonstration video

---

## Academic Integrity

**This project is strictly individual work. Do not copy or share code. All work must be your own.**

---

## Contact

For any clarifications, please contact:  
- **[Dulanji Amanda]**
- **[amandasathsarani03@gmail.com]**
