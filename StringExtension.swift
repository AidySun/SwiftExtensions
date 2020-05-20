//
//  StringExtension.swift
//  KidCalculator
//
//  Created by Aidy on 5/27/17.
//  Copyright © 2017 Aidy Sun. All rights reserved.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}

