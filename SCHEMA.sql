CREATE TABLE Departments (
    dept_no VARCHAR (4),
    dept_name VARCHAR (20) 
);


CREATE TABLE Dept_Manager (
	dept_no VARCHAR (4),
    emp_no INTEGER,
    from_date DATE,
    to_date DATE
);


CREATE TABLE Dept_Emp (
    emp_no INTEGER,
    dept_no VARCHAR (4),
    from_date DATE,
    to_date DATE
);


CREATE TABLE Employees (
    emp_no INTEGER,
    birth_date DATE,
    first_name VARCHAR (20),
    last_name VARCHAR (20),
    gender VARCHAR (1),
    hire_date DATE
);


CREATE TABLE Salaries (
    emp_no INTEGER,
    salary INTEGER,
    from_date DATE,
    to_date DATE
);


CREATE TABLE Titles (
    emp_no INTEGER,
    title VARCHAR (20),
    from_date DATE,
    to_date DATE
);

