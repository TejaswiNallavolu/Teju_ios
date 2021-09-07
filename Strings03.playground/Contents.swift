import UIKit

var course = "44643-Mobile Computing-iOS"

//I.Display only course number
var courseArray = course.split(separator: "-")
//courseArray[0]
//course[Index]
print(courseArray[0])

//II.Display only the title of the course
var title = courseArray[1]
print(title)

//III.Display the first word of the title
print(title[title.startIndex...title.index(before:title.firstIndex(of:" ")!)])

