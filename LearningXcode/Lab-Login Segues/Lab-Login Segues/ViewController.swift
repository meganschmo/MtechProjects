//
//  ViewController.swift
//  Lab-Login Segues
//
//  Created by Megan Schmoyer on 9/14/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = usernameField.text
        guard let sender = sender as? UIButton else {return}
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = usernameField.text
        }
    }
    @IBAction func forgotUsernameButton(_ sender: Any) {
        performSegue(withIdentifier: "Forget", sender: sender)
    }
    @IBAction func forgotPasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "Forget", sender: sender)
    }
}

