CREATE DATABASE Project_Management_System;

USE Project_Management_System;


-- Users Table
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(50),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);



-- Projects Table
CREATE TABLE Projects (
    project_id INT PRIMARY KEY AUTO_INCREMENT,
    project_name VARCHAR(100) NOT NULL,
    description TEXT,
    start_date DATE,
    end_date DATE,
    status VARCHAR(50),
    created_by INT,

    FOREIGN KEY (created_by)
    REFERENCES Users(user_id)
);



-- Tasks Table
CREATE TABLE Tasks (
    task_id INT PRIMARY KEY AUTO_INCREMENT,
    project_id INT,
    assigned_user INT,

    title VARCHAR(100) NOT NULL,
    description TEXT,

    priority INT,
    effort INT,

    status VARCHAR(50),

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,


    FOREIGN KEY (project_id)
    REFERENCES Projects(project_id),


    FOREIGN KEY (assigned_user)
    REFERENCES Users(user_id)
);



-- Activity Log Table
CREATE TABLE Activity_Log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,

    user_id INT,
    task_id INT,

    action VARCHAR(255),

    old_status VARCHAR(50),
    new_status VARCHAR(50),

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,


    FOREIGN KEY (user_id)
    REFERENCES Users(user_id),


    FOREIGN KEY (task_id)
    REFERENCES Tasks(task_id)
);



-- Comments Table (Optional)
CREATE TABLE Comments (
    comment_id INT PRIMARY KEY AUTO_INCREMENT,

    task_id INT,
    user_id INT,

    content TEXT,

    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,


    FOREIGN KEY (task_id)
    REFERENCES Tasks(task_id),


    FOREIGN KEY (user_id)
    REFERENCES Users(user_id)
);
