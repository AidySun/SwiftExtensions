//
//  NSObjectLoggerExtension.swift
//  ArtClock
//
//  Created by Aidy Sun on 2022/11/27.
//  Copyright © 2022 Aidy Sun. All rights reserved.
//

import Foundation


extension NSObject {

    /// print() with class name
    public func printA(_ items: Any..., separator: String = " ", terminator: String = "\n") {
        let newItems = "[\(self.classForCoder)] : \(items)"
        print(newItems)
    }

    var memoryAddress: String {
        let addr = Unmanaged.passUnretained(self).toOpaque()
        return String(format: "%p", Int(bitPattern: addr))
    }
}
