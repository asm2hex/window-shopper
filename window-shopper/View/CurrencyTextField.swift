//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by Lancelot Edwards on 08/08/2017.
//  Copyright © 2017 Lancelot Edwards. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
  
  override func draw(_ rect: CGRect) {
    let size: CGFloat = 20
    let labelFrame = CGRect(x: 5, y: (frame.size.height/2)-size/2, width: size, height: size)
    let currencyLabel = UILabel(frame: labelFrame)
    currencyLabel.backgroundColor = #colorLiteral(red: 0.7761658269, green: 0.7761658269, blue: 0.7761658269, alpha: 0.8)
    currencyLabel.textAlignment = .center
    currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    currencyLabel.layer.cornerRadius = 5.0
    currencyLabel.clipsToBounds = true
    
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.locale = .current
    currencyLabel.text = formatter.currencySymbol
    addSubview(currencyLabel)
  }
  
  override func prepareForInterfaceBuilder() {
    customizeView()
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
    customizeView()
  }
  
  func customizeView() {
    backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
    layer.cornerRadius = 5.0
    textAlignment = .center
    clipsToBounds = true
    
    if let placeholder = placeholder {
      let place = NSAttributedString(string: placeholder, attributes: [.foregroundColor : #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
      attributedPlaceholder = place
      textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
      
    }
  }
}
