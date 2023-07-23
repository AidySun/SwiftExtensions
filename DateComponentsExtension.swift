//
//  DateComponentsExtension.swift
//  ArtClock
//
//  Created by Aidy Sun on 2020/6/5.
//  Copyright © 2020 Aidy Sun. All rights reserved.
//

import Foundation


enum Category: String  {
    case common = "COMMON"
    case morning = "MORNING"
    case noon = "NOON"
    case afternoon = "AFTERNOON"
    case evening = "EVENING"
    case night = "NIGHT"
    case all = ""
}

extension DateComponents {

    func partOfDay() -> Category {
        if let hour = self.hour {
            if hour >= 5 && hour <= 11 {
                return .morning
            } else if hour > 11 && hour <= 13 {
                return .noon
            } else if hour > 13 && hour <= 17 {
                return .afternoon
            } else if hour > 17 && hour <= 20 {
                return .evening
            }
        }
        return .night
    }

    func hourStr() -> String { return (nil == self.hour) ? "" : "\(self.hour!)" }
    func hourIn12Str() -> String { return (nil == self.hour) ? "" : "\(self.hour! > 12 ? self.hour! - 12 : self.hour!)" }
    func minStr() -> String { return (nil == self.minute) ? "" : "\(self.minute!)" }
    func secStr() -> String { return (nil == self.second) ? "" : "\(self.second!)" }
    
    func isPM() -> Bool {
        return (self.hour != nil && self.hour! >= 12)
    }
    
    func getAMPMString() -> String {
        ClockHelper.currentDate.isPM() ? "PM" : "AM"
    }
    
    func isHalfHour() -> Bool {
        return isSecond(0) && (isMinute(0) || isMinute(30))
    }
    
    func isWholeHour() -> Bool {
        return isMinute(0) && isSecond(0)
    }
    
    func isWholeHourTheTimesOf(_ i: Int) -> Bool {
        return isWholeHour() && (nil != hour) && (i != 0) && (hour! % i == 0)
    }
    
    private func isMinute(_ m: Int) -> Bool {
        return (self.minute == m)
    }
    
    private func isSecond(_ m: Int) -> Bool {
        return (self.second == m)
    }


}
