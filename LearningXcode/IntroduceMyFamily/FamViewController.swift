//
//  FamViewController.swift
//  IntroduceMyFamily
//
//  Created by Megan Schmoyer on 9/26/23.
//

import UIKit

class FamViewController: UIViewController {

    @IBOutlet weak var familyImage: UIImageView!
    @IBOutlet weak var familyName: UILabel!
    @IBOutlet weak var familyDescription: UILabel!
    
    var familyImage1: String = ""
    var familyName1: String = ""
    var familyDescription1: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

        // Do any additional setup after loading the view.
    }
    func updateUI() {
        familyName.text = familyName1
        familyImage.image = UIImage(named: familyImage1)
        familyDescription.text = familyDescription1
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
