--SELECT "Emp_No","Last_Name","First_Nmae","Sex"
--FROM "Employees";

--SELECT "Salary"
--FROM "Salaries";

--SELECT players.first_name, players.last_name, players.hand, matches.loser_rank
SELECT Salaries.Emp_No, Salaries.Salary, Emp_No.Emplolyees, Last_Name.Emplolyees, First_Nmae.Emplolyees, Sex.Emplolyees
FROM "Employees"
INNER JOIN "Salaries" ON
"Salaries".Emp_No=Employees.Emp_No;