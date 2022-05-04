//
//  UIViewExtension.swift
//  ArtClock
//
//  Created by Aidy Sun on 2020/6/9.
//  Copyright © 2020 Aidy Sun. All rights reserved.
//
#if !os(macOS)
import UIKit
#endif

extension UIView {
    func constraintWith(identifier: String) -> NSLayoutConstraint? {
        return self.constraints.first(where: {$0.identifier == identifier})
    }
}
