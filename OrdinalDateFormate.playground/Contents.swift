import UIKit

func convertDateFormate(date : Date) -> String{
    // Day
    let calendar = Calendar.current
    let anchorComponents = calendar.dateComponents([.day, .month, .year], from: date)
    
    // Formate
    let dateFormate = DateFormatter()
    dateFormate.dateFormat = "MMM, yyyy"
    let newDate = dateFormate.string(from: date)
    
    var day  = "\(anchorComponents.day!)"
    switch (day) {
    case "1" , "21" , "31":
        day.append("st")
    case "2" , "22":
        day.append("nd")
    case "3" ,"23":
        day.append("rd")
    default:
        day.append("th")
    }
    return day + " " + newDate
}

let myCurrentDate = convertDateFormate(date: Date())
print(myCurrentDate)
//28th Apr, 2019
