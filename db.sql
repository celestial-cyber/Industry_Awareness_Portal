CREATE TABLE IAP_users_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role ENUM('admin', 'student') NOT NULL
);

CREATE TABLE session_registrations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    roll_number VARCHAR(50) NOT NULL,
    year ENUM('1', '2', '3', '4') NOT NULL,
    department VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    session_desired VARCHAR(255) NOT NULL,
    other_query TEXT,
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO IAP_users_details (username, password, role) VALUES
('admin', '$2y$10$ACnHZm1VvA1MkO8OmoKv4uOtl4jfdX9F1qFcP4e..e6yugwmvVtxm', 'admin'),
('student', '$2y$10$CNJkUZleu1weUMmlYLUTSOnxRtcHBjTjUXOElIPdhTDu5pZHtPLYC', 'student');

