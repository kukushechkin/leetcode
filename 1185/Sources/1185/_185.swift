// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

class Solution {
    func dayOfTheWeek(_ day: Int, _ month: Int, _ year: Int) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "yyyy-MM-dd"
        let date = formatter.date(from: "\(year)-\(month)-\(day)")
        return date.map { date in
            let calendar = Calendar.current
            let weekday = calendar.component(.weekday, from: date)
            switch weekday {
            case 1: return "Sunday"
            case 2: return "Monday"
            case 3: return "Tuesday"
            case 4: return "Wednesday"
            case 5: return "Thursday"
            case 6: return "Friday"
            case 7: return "Saturday"
            default: return ""
            }
        } ?? ""
    }
}
