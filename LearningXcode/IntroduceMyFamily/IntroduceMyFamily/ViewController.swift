//
//  ViewController.swift
//  IntroduceMyFamily
//
//  Created by Megan Schmoyer on 9/25/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destination = segue.destination as? FamViewController
        if segue.identifier == "braydenButton" {
            destination?.familyImage1 = brayden.familyMemberImage
            destination?.familyName1 = brayden.familyMemberName
            destination?.familyDescription1 = brayden.familyMemberDescription
        }
        else if segue.identifier == "meButton" {
            destination?.familyImage1 = me.familyMemberImage
            destination?.familyName1 = me.familyMemberName
            destination?.familyDescription1 = me.familyMemberDescription
        }
        else if segue.identifier == "zenitsuButton" {
            destination?.familyImage1 = zenitsu.familyMemberImage
            destination?.familyName1 = zenitsu.familyMemberName
            destination?.familyDescription1 = zenitsu.familyMemberDescription
        }
        else if segue.identifier == "nezukoButton" {
            destination?.familyImage1 = nezuko.familyMemberImage
            destination?.familyName1 = nezuko.familyMemberName
            destination?.familyDescription1 = nezuko.familyMemberDescription
        }
        else if segue.identifier == "inosukeButton" {
            destination?.familyImage1 = inosuke.familyMemberImage
            destination?.familyName1 = inosuke.familyMemberName
            destination?.familyDescription1 = inosuke.familyMemberDescription
        }
            
        }
    }
