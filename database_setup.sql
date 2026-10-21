CREATE DATABASE CompanyDB;
USE CompanyDB;
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
USE CompanyDB;

-- 70 Rows(Sample Data)
INSERT INTO employees (name, department, salary) VALUES
('Aravind', 'IT', 60000), ('Bala', 'HR', 45000), ('Chitra', 'Finance', 55000), ('Deva', 'IT', 62000), ('Ezhil', 'Marketing', 40000),
('Farhan', 'HR', 46000), ('Ganesh', 'Finance', 53000), ('Hari', 'IT', 64000), ('Indhu', 'Marketing', 42000), ('Jayan', 'IT', 61000),
('Kavin', 'HR', 47000), ('Latha', 'Finance', 56000), ('Mani', 'IT', 63000), ('Naveen', 'Marketing', 41000), ('Oviya', 'HR', 48000),
('Prakash', 'Finance', 54000), ('Qadir', 'IT', 65000), ('Ramu', 'Marketing', 43000), ('Siva', 'IT', 60000), ('Thara', 'HR', 44000),
('Uday', 'Finance', 57000), ('Vani', 'IT', 66000), ('Wilson', 'Marketing', 44000), ('Xavier', 'HR', 49000), ('Yuvraj', 'Finance', 58000),
('Zayan', 'IT', 67000), ('Anbu', 'Marketing', 45000), ('Babu', 'HR', 43000), ('Charu', 'Finance', 52000), ('Deepak', 'IT', 59000),
('Elango', 'Marketing', 39000), ('Faizal', 'HR', 42000), ('Gita', 'Finance', 51000), ('Hemant', 'IT', 58000), ('Imran', 'Marketing', 38000),
('Jeeva', 'HR', 41000), ('Karthik', 'Finance', 50000), ('Logesh', 'IT', 57000), ('Meena', 'Marketing', 37000), ('Nithin', 'HR', 40000),
('Prabhu', 'Finance', 49000), ('Rajesh', 'IT', 56000), ('Suresh', 'Marketing', 36000), ('Tamil', 'HR', 39000), ('Usha', 'Finance', 48000),
('Vijay', 'IT', 55000), ('Waseem', 'Marketing', 35000), ('Yogesh', 'HR', 38000), ('Zuber', 'Finance', 47000), ('Akash', 'IT', 54000),
('Bharathi', 'Marketing', 46000), ('Chellvam', 'HR', 47000), ('Divya', 'Finance', 59000), ('Eshwar', 'IT', 68000), ('Fiaz', 'Marketing', 47000),
('Gowtham', 'HR', 46000), ('Hina', 'Finance', 60000), ('Ishaan', 'IT', 69000), ('Janani', 'Marketing', 48000), ('Kamal', 'HR', 45000),
('Lokesh', 'Finance', 61000), ('Madan', 'IT', 70000), ('Nisha', 'Marketing', 49000), ('Pranav', 'HR', 44000), ('Raghav', 'Finance', 62000),
('Sanjay', 'IT', 71000), ('Tulsi', 'Marketing', 50000), ('Vikas', 'HR', 43000), ('William', 'Finance', 63000), ('Yash', 'IT', 72000);

COMMIT;


