import UIKit

//Thursday, Mar 17, 2019

let dateFormate = DateFormatter()
dateFormate.dateFormat = "EEEE, MMM, d, yyyy"
let date = Date()
let stringofDate = dateFormate.string(from: date)
print(stringofDate)



//04/29/2019
let dateformate = DateFormatter()
dateformate.dateFormat = "MM/dd/yyyy"
let dateofthisformate = Date()
let stringofDatethisformate = dateformate.string(from: dateofthisformate)
print(stringofDatethisformate)


//dateFormate.dateFormat = "MM-dd-yyyy HH:mm"
//03-17-2016 07:10


//dateFormate.dateFormat = "MMM d, H:mm a"
//Mar 17, 7:10 AM

//dateFormate.dateFormat = "MMMM yyyy"
//April 2019

//dateFormate.dateFormat = "dd.MM.yy"
//17.03.16

//dateFormate.dateFormat = "MMM d, yyyy"
//April 29, 2019

//dateFormate.dateFormat = "E, d MMM yyyy HH:mm:ss Z"
//Thu, 17 Mar 2016 07:10:30 -0500


let dateFormate1 = DateFormatter()
dateFormate1.dateStyle = DateFormatter.Style .short

let date1 = Date()
let stringofDate1 = dateFormate1.string(from: date1)
print(stringofDate1)
//4/29/2019


