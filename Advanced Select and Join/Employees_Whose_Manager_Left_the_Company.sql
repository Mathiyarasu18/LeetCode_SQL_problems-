SELECT e1.employee_id
FROM Employees e1
LEFT JOIN Employees e2
ON e1.manager_id = e2.employee_id
WHERE e1.salary <30000 AND e2.employee_id IS NULL AND e1.manager_id IS NOT NULL
ORDER BY employee_id;

/*
Input:  
Employees table:
+-------------+-----------+------------+--------+
| employee_id | name      | manager_id | salary |
+-------------+-----------+------------+--------+
| 3           | Mila      | 9          | 60301  |
| 12          | Antonella | null       | 31000  |
| 13          | Emery     | null       | 67084  |
| 1           | Kalel     | 11         | 21241  |
| 9           | Mikaela   | null       | 50937  |
| 11          | Joziah    | 6          | 28485  |
+-------------+-----------+------------+--------+
Output: 
+-------------+
| employee_id |
+-------------+
| 11          |
+-------------+

Explanation: 
The employees with a salary less than $30000 are 1 (Kalel) and 11 (Joziah).
Kalel's manager is employee 11, who is still in the company (Joziah).
Joziah's manager is employee 6, who left the company because there is no row for employee 6 as it was deleted.
*/
