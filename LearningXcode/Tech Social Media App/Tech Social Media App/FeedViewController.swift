//
//  FeedViewController.swift
//  Tech Social Media App
//
//  Created by Megan Schmoyer on 10/2/23.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var gooseProfile: UIImageView!
    @IBOutlet weak var catProfile: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let profilePics = [ gooseProfile, catProfile]
        for circle in profilePics {
            circle?.layer.cornerRadius = 20
        }
        // Do any additional setup after loading the view.
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
