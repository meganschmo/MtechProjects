//
//  ViewController.swift
//  Tally App
//
//  Created by Megan Schmoyer on 9/27/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countNumbers: UILabel!
    @IBOutlet weak var countButton: UIButton!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    var numbersToAdd: Int {
        segmentedControl.selectedSegmentIndex + 1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func countButtonPressed(_ sender: Any) {
        let totalNumber = numbersToAdd + Int(countNumbers.text!)!
        countNumbers.text = String(totalNumber)
    }
    
}

