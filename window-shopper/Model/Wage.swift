//
//  Wage.swift
//  window-shopper
//
//  Created by Lancelot Edwards on 09/08/2017.
//  Copyright © 2017 Lancelot Edwards. All rights reserved.
//

import Foundation
class Wage {
  
  class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
    return Int(ceil(price/wage))
  }
}
