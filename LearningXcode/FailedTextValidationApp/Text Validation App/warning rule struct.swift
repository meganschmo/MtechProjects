//
//  warning rule struct.swift
//  Text Validation App
//
//  Created by Megan Schmoyer on 9/27/23.
//

import Foundation
import ViewController

struct WarningLabel {
    let minPasswordLength: Int = 8
    var passwordLength: Int {
        didSet {
            if passwordLength < minPasswordLength {
                    
            }
        }
    }
    var passwordSpecial: Bool
    var passwordCap: Bool
    var passwordNumber: Bool
    
   
}
