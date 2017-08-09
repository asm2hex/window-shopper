//
//  MainVC.swift
//  window-shopper
//
//  Created by Lancelot Edwards on 08/08/2017.
//  Copyright © 2017 Lancelot Edwards. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

  @IBOutlet weak var wageTextField: CurrencyTextField!
  @IBOutlet weak var priceTextField: CurrencyTextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
    calcButton.backgroundColor = #colorLiteral(red: 0.9254978951, green: 0.5311827156, blue: 0.002967233602, alpha: 1)
    calcButton.setTitle("Calculate", for: .normal)
    calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
    calcButton.addTarget(self, action: #selector(calculate), for: .touchUpInside)
    wageTextField.inputAccessoryView = calcButton
    priceTextField.inputAccessoryView = calcButton
  }

  @objc func calculate() {
    print("printing like a boss")
  }


}

