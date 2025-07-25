# 📚 Library Management System (LMS)

## 🚀 Introduction
The **Library Management System (LMS)** is a simple web-based application built using **PHP** and **MySQL**, designed to streamline common library operations. It allows library administrators to manage books, users, and borrowing/return activities effectively.

---

## 🧰 Features

- ✅ Admin login authentication
- 📚 Add, delete, and view books
- 👤 Manage library users
- 🔄 Borrow and return books
- 📊 Basic reporting capabilities
- 🗄 MySQL database for data persistence

---

## 🏗 Tech Stack

- **Frontend**: HTML, CSS
- **Backend**: PHP (vanilla)
- **Database**: MySQL

---

## ⚙️ Setup Instructions

### 📥 1. Clone the Repository

```bash
git clone https://github.com/yourusername/library-management-system.git
cd library-management-system
``` 

-- Example:
CREATE DATABASE lms;
USE lms;

-- Run the full db.sql content here


$host = "localhost";
$user = "root";
$pass = "";
$db   = "lms";


 project config 
lms/
├── config.php          # Database connection
├── index.php           # Admin login page
├── dashboard.php       # Dashboard landing page
├── books.php           # Manage books (add/delete)
├── borrow.php          # Borrow book
├── return.php          # Return book
├── logout.php          # Logout script
└── db.sql              # SQL schema for MySQL
