import UIKit

import UIKit
class ViewController: UIViewController {
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var warningView: UIView!
    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var closeWarning: UIButton!

    enum PasswordStatus {
        case lengthWrong
        case missingSpecialCharacter
        case success
    }


    //Mark - IBActions

    @IBAction func submitButtonPressed(_ sender: Any) {
        guard let passwordString = passwordField.text else {
            updateWarningLabel()
            return
        }

        switch isPasswordValid(with: passwordString) {
        case .lengthWrong:
            updateWarningLabel()
        case .missingSpecialCharacter:
            updateWarningLabel()
        case .success:
            succeededStatus()
        }
    }

    //Mark - helper functions

    func updateWarningLabel() {
        warningLabel.text = "Password length needs to be at least 8 characters. Password needs to contain a special character. Password needs to contain at least 2 numbers."
    }

    func succeededStatus() {
        let alert = UIAlertController(title: "Success", message: "Operation completed successfully.", preferredStyle: .alert)

        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)

        alert.addAction(okAction)

        self.present(alert, animated: true, completion: nil)
    }

    func isPasswordValid(with password: String) -> PasswordStatus {
        guard password.count >= 8 else { return .lengthWrong }

        let specialCharacters = "@#$%^&*"
        guard password.contains(specialCharacters) else { return .missingSpecialCharacter }

        return .success
    }

}
