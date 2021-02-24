-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Iq5Mp2
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Department (
    Dept_No VARCHAR(255)   NOT NULL,
    Dept_Name VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_Department PRIMARY KEY (
        Dept_No
     )
);

CREATE TABLE Titles (
    Emp_Title_id VARCHAR(255)   NOT NULL,
    Titles VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        Emp_Title_id
     )
);

CREATE TABLE Employees (
    Emp_No INT   NOT NULL,
    Emp_Title_id VARCHAR(255)   NOT NULL,
    Birth_Date date   NOT NULL,
    First_Name VARCHAR(255)   NOT NULL,
    Last_Name VARCHAR(255)   NOT NULL,
    Sex VARCHAR(255)   NOT NULL,
    Hiring_Date date   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        Emp_No
     )
);

CREATE TABLE Dept_Emp (
    Emp_No INT   NOT NULL,
    Dept_No VARCHAR(255)   NOT NULL
);

CREATE TABLE Dept_Manager (
    Dept_No VARCHAR(255)   NOT NULL,
    Emp_No INT   NOT NULL
);

CREATE TABLE Salaries (
    Emp_No INT   NOT NULL,
    Salary INT   NOT NULL
);

ALTER TABLE Employees ADD CONSTRAINT fk_Employees_Emp_Title_id FOREIGN KEY(Emp_Title_id)
REFERENCES Titles (Emp_Title_id);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Dept_Emp ADD CONSTRAINT fk_Dept_Emp_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Department (Dept_No);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_Dept_No FOREIGN KEY(Dept_No)
REFERENCES Department (Dept_No);

ALTER TABLE Dept_Manager ADD CONSTRAINT fk_Dept_Manager_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

ALTER TABLE Salaries ADD CONSTRAINT fk_Salaries_Emp_No FOREIGN KEY(Emp_No)
REFERENCES Employees (Emp_No);

