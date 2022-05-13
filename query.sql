SELECT
    customers.customerid,
    employees.title,
    customers.firstname || ' ' || customers.lastname AS customer,
    employees.firstname || ' ' || employees.lastname AS employee
FROM customers, employees
WHERE customers.supportrepid = employees.employeeid
      AND employees.title = 'Sales Support Agent';
