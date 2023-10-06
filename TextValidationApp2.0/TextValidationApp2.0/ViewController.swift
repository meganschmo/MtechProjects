//
//  ViewController.swift
//  TextValidationApp2.0
//
//  Created by Megan Schmoyer on 9/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var warningLabel: UILabel!
    
    enum PasswordStatus {
        case lengthWrong
        case missingSpecialCharacter
        case success
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        @IBAction func submitButtonPressed(_ sender: Any) {
            guard let passwordString = passwordField.text else {
                updateWarningLabel("Error")
                return
            }
            switch isPasswordValid(with: passwordString) {
            case .lengthWrong:
                updateWarningLabel("Password length needs to be at least 8 characters.")
            case .missingSpecialCharacter:
                updateWarningLabel("Password needs to contain a special character.")
            case .success:
                succeededStatus()
            }
        }
    func updateWarningLabel(_ message: String) {
            warningLabel.text = message
    }
    func succeededStatus() {
        let alert = UIAlertController(title: "Success", message: "Login Created", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    func isPasswordValid(with password: String) -> PasswordStatus {
        guard password.count >= 8 else { return .lengthWrong }
        let specialCharacters = "!@#$%^&*"
        let containsSpecialCharacter = !password.filter { specialCharacters.contains($0) }.isEmpty
        guard containsSpecialCharacter else { return .missingSpecialCharacter }

        return .success
    }
}
