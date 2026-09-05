# Project Management System

## 1. Project Description

This project is a system for managing software projects and tasks.

The system allows users to:
- Create projects
- Add tasks
- Assign tasks to team members
- Track task status
- Record project activities


## 2. Technologies

- Backend: Java Spring Boot
- Frontend: HTML, CSS, JavaScript
- Database: MySQL
- Version Control: GitHub


## 3. Project Structure

```
Project-Management-System

├── backend
├── frontend
├── database
├── algorithms
├── docs
└── tests
```


## 4. Database Design
The system database contains the following entities:
- Users
- Projects
- Tasks
- Activity_Log


### ER Diagram
erDiagram
    USERS {
        INT user_id PK
        VARCHAR full_name
        VARCHAR email
        VARCHAR password
        VARCHAR role
        DATETIME created_at
    }
    PROJECTS {
        INT project_id PK
        VARCHAR project_name
        TEXT description
        DATE start_date
        DATE end_date
        VARCHAR status
        INT created_by FK
    }
    TASKS {
        INT task_id PK
        INT project_id FK
        INT assigned_user FK
        VARCHAR title
        TEXT description
        INT priority
        INT effort
        VARCHAR status
        DATETIME created_at
    }
    ACTIVITY_LOG {
        INT log_id PK
        INT user_id FK
        INT task_id FK
        VARCHAR action
        VARCHAR old_status
        VARCHAR new_status
        DATETIME created_at
    }
    USERS ||--o{ PROJECTS : creates
    PROJECTS ||--o{ TASKS : contains
    USERS ||--o{ TASKS : assigned
    TASKS ||--o{ ACTIVITY_LOG : tracks


## 5. Algorithms

### Sorting Algorithm
Used to sort tasks based on:
- Priority
- Effort


### Divide and Conquer
Used to calculate the total project effort.


## 6. Team Roles

| Member | Responsibility |
|---|---|
| Member 1 | Project Structure and Database |
| Member 2 | Authentication |
| Member 3 | Tasks Management |
| Member 4 | Sorting Algorithms |
| Member 5 | Divide and Conquer |
