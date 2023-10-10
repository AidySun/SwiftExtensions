//
//  ShadowableViewProtocol.swift
//  TCFKCalculator.swift
//
//  Created by Aidy Sun on 2023/10/10.
//  Copyright © 2023 SZH. All rights reserved.
//

import UIKit

protocol ShadowableViewProtocol {
    var shadowOpacity: CGFloat { get set }
    var shadowRadius: CGFloat { get set }
    var shadowOffset: CGSize { get set }
    var shadowColor: UIColor? { get set }
}

extension ShadowableViewProtocol where Self: UIView {

    var shadowRadius: CGFloat {
        get { return layer.shadowRadius }
        set { layer.shadowRadius = newValue }
    }

    var shadowOpacity: CGFloat {
        get { return CGFloat(layer.shadowOpacity) }
        set { layer.shadowOpacity = Float(newValue) }
    }

    var shadowOffset: CGSize {
        get { return layer.shadowOffset }
        set { layer.shadowOffset = newValue }
    }

    var shadowColor: UIColor? {
        get {
            guard let cgColor = layer.shadowColor else {
                return nil
            }
            return UIColor(cgColor: cgColor)
        }
        set { layer.shadowColor = newValue?.cgColor }
    }
}
