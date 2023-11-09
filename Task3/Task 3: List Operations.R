#Create a list named employee representing the details of an employee with the following components:
#EmployeeID: A unique employee identifier (as a numeric value).
#Name: The employee's full name (as a string).
#Salary: The employee's monthly salary (as a numeric value).
#Departments: A vector containing the names of the departments the employee is associated with (as strings).
employee = list(
  EmployeeID = 01,
  Name = "Arn",
  Salary = 5000,
  Departments = c("HR", "Finance")
)
#Display the entire content of the employee list.
cat("Employee ID :",employee$EmployeeID,"Employee Name :",employee$Name,"Employee Salary : $",employee$Salary,"Employee Dep : ",employee$Departments)
#Calculate and print the employee's annual salary (12 times the monthly salary).
annual_salary = employee$Salary * 12;cat("employee's annual salary : $",annual_salary) 
#Update the employee's name to a different name.
employee$Name = "Aaron";cat("Updated name is ",employee$Name)
#Add a new department to the Departments vector for the employee.
employee$Departments = c(employee$Departments,"Computer");cat("Updated Dep are ",employee$Departments)
#Create a list named organization to represent an organization with the following components:
#Name: The name of the organization (as a string).
#Employees: A list containing details of at least three employees, using the structure created in Task 1.
organization = list(
  organization_Name = "RMZ",
  employees = list(
    employee,
    list(
      EmployeeID = 2,
      Name = "Alice Johnson",
      Salary = 6000,
      Departments = c("Sales", "Marketing")
    ),
    list(
      EmployeeID = 3,
      Name = "Bob Wilson",
      Salary = 5500,
      Departments = c("IT")
    )
  )
)
#Display the entire content of the nested list organization.
organization
#Access and print the annual salary of the second employee in the organization.
annual_salary_2nd_emp = organization$employees[[2]]$Salary*12;cat("annual salary of the second employee in the organization is $",annual_salary_2nd_emp)
#Access and print the name of the organization.
cat("organization Name : ",organization$organization_Name)
#Create a new list named department_employees that groups employees by department. Each department should have a list of employees associated with it.
department_employees <- list(
  HR = list(),
  Finance = list(),
  Sales = list(),
  Marketing = list(),
  IT = list(),
  Computer = list()
)

for (emp in organization$employees) {
  for (dept in emp$Departments) {
    department_employees[[dept]] <- c(department_employees[[dept]], emp$Name)
    }
  }
department_employees
#Print each list created in the script to show the structure and content of the lists after performing the operations in Tasks 1-5.
str(department_employees);department_employees
str(employee);employee
str(organization);organization
#print the department_employees list to demonstrate how employees are grouped by department.
department_employees
