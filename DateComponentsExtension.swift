//
//  DateComponentsExtension.swift
//  ArtClock
//
//  Created by Aidy Sun on 2020/6/5.
//  Copyright © 2020 Aidy Sun. All rights reserved.
//

import Foundation

extension DateComponents {
    
    func hourValue() -> Int { return (nil == self.hour) ? 1 : self.hour! }
    func minValue() -> Int { return (nil == self.minute) ? 1 : self.minute! }
    func secValue() -> Int { return (nil == self.second) ? 1 : self.second! }
    
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
