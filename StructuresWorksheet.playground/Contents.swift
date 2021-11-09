import UIKit

//Structures:
struct Course {
       var courseName="iOS"
    var semester="Fall"
    var numberOfStudents=70
    
    func printCourseDetails(){
        print("Course Name: \(courseName) \nSemester: \(semester) \nNumber of Students:  \(numberOfStudents)")
    }
}
//Answer the following questions based on the above struct “Course”.
//a
let course=Course()
   print(course)

//b)
print(course.courseName+" - " + course.semester)

//c
course.printCourseDetails()


//2
struct Employee {
var empName:String
    var empID:Int
    var empSalary:Double
}
           // func salaryAfterDeduction()->Double{
         //return self.empSalary*0.65;
        //        }
       
var employee=Employee(empName:"Gaurav Rathod",empID: 34567,empSalary: 100000)

//Answer the below questions based on struct Employee:
//a
print("Employee Details: ")
                print("ID = \(employee.empID)")
                print("Name = \(employee.empName)")
                print("Salary = \(employee.empSalary)")

//b
print("The salary after tax deduction is : \(employee.salaryAfterDeduction())")
