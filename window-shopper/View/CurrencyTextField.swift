//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Lancelot Edwards on 08/08/2017.
//  Copyright © 2017 Lancelot Edwards. All rights reserved.
//

import UIKit

class CurrencyTextField: UITextField {
  
  override func awakeFromNib() {
    super.awakeFromNib()
    
    backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
    
    if let placeholder = placeholder {
      let place = NSAttributedString(string: placeholder, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
      attributedPlaceholder = place
      textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)

    }
  }
}
