//
//  AlertUtility.swift
//  CryptoTracker
//
//  Created by Chetan Girase on 28/08/23.
//

import Foundation
import UIKit

class AlertUtils {
  static func displayError(title: String, message: String) {
    let ac = UIAlertController(title: title,
                               message: message,
                               preferredStyle: .alert)
    ac.addAction(UIAlertAction(title: Constants.okButtonTitle, style: .cancel))
    DispatchQueue.main.async {
      if let viewController =  UIApplication.shared.windows.first?.rootViewController {
        viewController.present(ac, animated: true)
      }
    }
  }
}
