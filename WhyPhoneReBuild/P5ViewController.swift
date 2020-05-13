//
//  P5ViewController.swift
//  WhyPhoneReBuild
//
//  Created by Casey Henderson on 09/12/2018.
//  Copyright © 2018 Casey Henderson. All rights reserved.
//

import Foundation
import UIKit
class P5ViewController : UIViewController {
    @IBOutlet weak var P5Image1: UIImageView!
    @IBOutlet weak var P5image2: UIImageView!
    @IBOutlet weak var P5Image3: UIImageView!
    @IBOutlet weak var P5Label1: UILabel!
    @IBOutlet weak var P5Label2: UILabel!
    @IBOutlet weak var P5Label3: UILabel!
    @IBOutlet weak var iPhoneXSScoreLabel: UILabel!
    @IBOutlet weak var iPhoneXScoreLabel: UILabel!
    @IBOutlet weak var iPhone8ScoreLabel: UILabel!
    @IBOutlet weak var iPhoneSEScoreLabel: UILabel!
    
    var iPhoneXScore = Int()
    var iPhone8Score = Int()
    var iPhoneSEScore = Int()
    var iPhoneXSScore = Int()
    var MatchQuality = Int()
    var TopPhone = String()
    var SecondPhone = String()
    var ThirdPhone = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        iPhone8ScoreLabel.text = "\(iPhone8Score)"
        iPhoneXSScoreLabel.text = "\(iPhoneXSScore)"
        iPhoneXScoreLabel.text = "\(iPhoneXScore)"
        iPhoneSEScoreLabel.text = "\(iPhoneSEScore)"
        let iPhoneXSText = """
                           The new iPhone XS.
                           Super Retina Display and all-new cameras.
                           Comes with advanced Face ID.
                           """
        let iPhone8Text = """
                          The quality iPhone 8.
                          Comfortable size and Retina display.
                          Comes with glass design and Touch ID.
                          """
        let iPhoneXText = """
                          The revolutionary iPhone X.
                          All-new edge-to-edge display.
                          Comes with Face ID and new Animoji.
                          """
        let iPhoneSEText = """
                          The pocket-sized iPhone SE
                          Classic design with 4-inch Retina display.
                          Comes with Touch ID and 12 MP camera.
                          """
        let ErrorText = """
                        Invalid data.
                        Couldn't find your top phone.
                        Go to the next screen to restart.
                        """
        
        if TopPhone == "iPhone XS" {
            P5Image1.image = UIImage(named:"iPhone XS")
            P5Label1.text = iPhoneXSText
        }
        else if TopPhone == "iPhone SE" {
            P5Image1.image = UIImage(named: "iPhone SE")
            P5Label1.text = iPhoneSEText
        }
        else if TopPhone == "iPhone 8" {
            P5Image1.image = UIImage(named: "iPhone 8")
            P5Label1.text = iPhone8Text
        }
        else if TopPhone == "iPhone X" {
            P5Image1.image = UIImage(named: "iPhone X")
            P5Label1.text = iPhoneXText
        }
        else if TopPhone == "Not applicable" {
            P5Label1.text = ErrorText
        }
        
        if SecondPhone == "iPhone XS" {
            P5image2.image = UIImage(named:"iPhone XS")
            P5Label2.text = iPhoneXSText
        }
        else if SecondPhone == "iPhone SE" {
            P5image2.image = UIImage(named: "iPhone SE")
            P5Label2.text = iPhoneSEText
        }
        else if SecondPhone == "iPhone 8" {
            P5image2.image = UIImage(named: "iPhone 8")
            P5Label2.text = iPhone8Text
        }
        else if SecondPhone == "iPhone X" {
            P5image2.image = UIImage(named: "iPhone X")
            P5Label2.text = iPhoneXText
        }
        
        if ThirdPhone == "iPhone XS" {
            P5Image3.image = UIImage(named: "iPhone XS")
            P5Label3.text = iPhoneXSText
        }
        else if ThirdPhone == "iPhone SE" {
            P5Image3.image = UIImage(named: "iPhone SE")
            P5Label3.text = iPhoneSEText
        }
        else if ThirdPhone == "iPhone 8" {
            P5Image3.image = UIImage(named: "iPhone 8")
            P5Label3.text = iPhone8Text
        }
        else if ThirdPhone == "iPhone X" {
            P5Image3.image = UIImage(named: "iPhone X")
            P5Label3.text = iPhoneXText
        }
    }
    @IBAction func TestingButton(_ sender: Any) {
        P5Label2.text = "\(SecondPhone)"
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DestViewController: P6ViewController = segue.destination as! P6ViewController
        DestViewController.iPhoneXScore = iPhoneXScore
        DestViewController.iPhone8Score = iPhone8Score
        DestViewController.iPhoneSEScore = iPhoneSEScore
        DestViewController.iPhoneXSScore = iPhoneXSScore
        DestViewController.MatchQuality = MatchQuality
        DestViewController.TopPhone = TopPhone
    }
    

}
