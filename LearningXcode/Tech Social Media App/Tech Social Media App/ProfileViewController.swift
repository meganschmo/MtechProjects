//
//  ProfileViewController.swift
//  Tech Social Media App
//
//  Created by Megan Schmoyer on 10/4/23.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var realName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        if let circle = profileImage {
            circle.layer.cornerRadius = 60
        }
        // Do any additional setup after loading the view.
    }
   
    @IBAction func hideNamePressed(_ sender: UIButton) {
        realName.text = ""
    }
    
    @IBAction func postButtonPressed(_ sender: UIButton) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
