//
//  AlertHelper.swift
//
//  Created by Aidy Sun on 2023/4/18.
//  Copyright © 2023 Aidy. All rights reserved.
//

import UIKit

class AlertHelper {

    public static func showAlert(withTitle title: String,
                          andMessage message: String,
                          inController vc: UIViewController) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        vc.present(alert, animated: true, completion: nil)
    }
}
