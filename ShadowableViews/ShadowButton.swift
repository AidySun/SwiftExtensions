//
//  ShadowButton.swift
//  TCFKCalculator.swift
//
//  Created by Aidy Sun on 2023/10/10.
//  Copyright © 2023 SZH. All rights reserved.
//

import UIKit

class ShadowButton: UIButton, ShadowableViewProtocol {
    required init?(coder: NSCoder) {
        super.init(coder: coder)

        self.shadowOffset = CGSize(width: 0, height: 0)
        self.shadowColor = UIColor.clear
        self.shadowRadius = 0
        self.shadowOpacity = 0
    }
}
