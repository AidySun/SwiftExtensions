//
//  DeviceExtension.swift
//  ArtClock
//
//  Created by Aidy Sun on 2022/5/3.
//  Copyright © 2022 Aidy Sun. All rights reserved.
//

import Foundation
import Device

extension Device {

#if targetEnvironment(macCatalyst)
    static public func isPad() -> Bool {
        return false
    }
    static public func isPhone() -> Bool {
        return false
    }
    static public func isPod() -> Bool {
        return false
    }
    static public func isSimulator() -> Bool {
        return false
    }
    static public func isMac() -> Bool {
        return true
    }
#else
    static public func isPad() -> Bool {
        return type() == .iPad
    }
    static public func isPhone() -> Bool {
        return type() == .iPhone
    }
    static public func isPod() -> Bool {
        return type() == .iPod
    }
    static public func isSimulator() -> Bool {
        return type() == .simulator
    }
    static public func isMac() -> Bool {
        return false
    }
#endif
    static public func isPadOrMac() -> Bool {
        return isMac() || isPad()
    }
}
