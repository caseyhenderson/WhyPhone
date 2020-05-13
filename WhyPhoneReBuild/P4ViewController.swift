//
//  4ViewController.swift
//  WhyPhoneReBuild
//
//  Created by Casey Henderson on 09/12/2018.
//  Copyright © 2018 Casey Henderson. All rights reserved.
//

import Foundation
import UIKit
class P4ViewController: UIViewController {
    @IBOutlet weak var P4Label1: UILabel!
    
    @IBOutlet weak var P4Label2: UILabel!
    var TopPhone = String()
    var SecondPhone = String ()
    var ThirdPhone = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // SecondPhone
        if iPhoneXScore > iPhone8Score, iPhoneXScore > iPhoneSEScore, iPhoneXScore < iPhoneXSScore {
            SecondPhone = "iPhone X"
        }
        else if iPhoneXScore < iPhone8Score, iPhoneXScore > iPhoneSEScore, iPhoneXScore > iPhoneXSScore {
            SecondPhone = "iPhone X"
        }
        else if iPhoneSEScore > iPhoneXSScore, iPhoneSEScore > iPhoneXScore, iPhoneSEScore < iPhone8Score {
            SecondPhone = "iPhone SE"
        }
        else if iPhoneXSScore > iPhone8Score, iPhoneXSScore > iPhoneSEScore,iPhoneXSScore < iPhoneXScore {
            SecondPhone = "iPhone XS"
        }
        else if iPhone8Score > iPhoneSEScore, iPhone8Score > iPhoneXScore, iPhone8Score < iPhoneXSScore {
            SecondPhone = "iPhone 8"
        }
        else if iPhoneSEScore > iPhone8Score, iPhoneSEScore > iPhoneXScore, iPhoneSEScore < iPhoneXSScore {
            SecondPhone = "iPhone SE"
        }
        // In case of a draw
        else if iPhoneSEScore == iPhone8Score {
            SecondPhone = "iPhone 8"
        }
        else if iPhoneXScore == iPhoneXSScore {
            SecondPhone = "iPhone XS"
            }
        else if iPhone8Score == iPhoneXScore {
            SecondPhone = "iPhone 8"
            }
        else if iPhone8Score == iPhoneXSScore {
            SecondPhone = "iPhone 8"
        }
        else if iPhoneXSScore == iPhoneSEScore {
            SecondPhone = "iPhone XS"
        }
        
        // ThirdPhone
        
        if iPhoneXSScore < iPhoneXScore, iPhoneXSScore < iPhone8Score, iPhoneXSScore > iPhoneSEScore {
            ThirdPhone = "iPhone XS"
        }
        else if iPhoneXScore < iPhoneXSScore, iPhoneXScore < iPhone8Score, iPhoneXScore > iPhoneSEScore {
            ThirdPhone = "iPhone X"
        }
        else if iPhone8Score < iPhoneXScore, iPhone8Score < iPhoneXSScore, iPhone8Score > iPhoneSEScore {
            ThirdPhone = "iPhone 8"
        }
        else if iPhoneSEScore < iPhoneXSScore, iPhoneSEScore < iPhoneXScore, iPhoneSEScore > iPhone8Score {
            ThirdPhone  = "iPhone SE"
        }
        else if iPhoneSEScore > iPhoneXSScore, iPhoneSEScore < iPhoneXScore, iPhoneSEScore < iPhone8Score {
            ThirdPhone = "iPhone SE"
        }
        // in case of a draw
        else if iPhoneSEScore == iPhone8Score {
            ThirdPhone = "iPhone SE"
        }
        else if iPhoneXScore == iPhoneXSScore {
            ThirdPhone = "iPhone X"
        }
        else if iPhone8Score == iPhoneXScore {
            ThirdPhone = "iPhone X"
        }
        
        if iPhoneXScore > iPhone8Score, iPhoneXScore > iPhoneSEScore, iPhoneXSScore > iPhoneXScore
        {
            TopPhone = "iPhone X"
        }
        else if iPhone8Score > iPhoneXScore, iPhone8Score > iPhoneSEScore, iPhone8Score > iPhoneXSScore
        {
            TopPhone = "iPhone 8"
        }
        else if iPhoneXSScore > iPhoneXScore, iPhoneXSScore > iPhone8Score, iPhoneXSScore > iPhoneSEScore
        {
            TopPhone = "iPhone XS"
        }
        else if iPhoneSEScore > iPhoneXSScore, iPhoneSEScore > iPhoneXScore, iPhoneSEScore > iPhone8Score
        {
            TopPhone = "iPhone SE"
        }
            // Settle draws
        else if iPhoneXScore == iPhoneSEScore, iPhoneXScore == iPhone8Score, iPhoneXScore == iPhoneXSScore {
            TopPhone = "Not applicable."
        }
        else if iPhoneXSScore == iPhoneSEScore, iPhoneXSScore > iPhoneXScore, iPhoneXSScore > iPhone8Score {
            TopPhone = "iPhone XS"
        }
        else if iPhoneXSScore == iPhoneXScore, iPhoneXSScore > iPhone8Score, iPhoneXSScore > iPhoneSEScore {
            TopPhone = "iPhone X"
        }
        else if iPhoneXSScore == iPhone8Score, iPhoneXSScore > iPhoneXScore, iPhoneXSScore > iPhoneSEScore {
            TopPhone = "iPhone 8"
        }
        else if iPhone8Score == iPhoneSEScore, iPhone8Score > iPhoneXScore, iPhone8Score > iPhoneXSScore {
            TopPhone = "iPhone 8"
        }
        else if iPhone8Score == iPhoneXSScore, iPhone8Score > iPhoneXScore, iPhone8Score > iPhoneSEScore {
            TopPhone = "iPhone XS"
        }
        else if iPhone8Score == iPhoneXScore, iPhone8Score > iPhoneXSScore, iPhone8Score > iPhoneSEScore {
            TopPhone = "iPhone X"
        }
    }
    
    @IBAction func FindHighest(_ sender: Any) {
         P4Label2.text = " \(TopPhone)"
    }
    
    
    var iPhoneXScore = Int()
    var iPhone8Score = Int()
    var iPhoneSEScore = Int()
    var iPhoneXSScore = Int()
    var MatchQuality = Int()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DestViewController: P5ViewController = segue.destination as! P5ViewController
        DestViewController.iPhoneXScore = iPhoneXScore
        DestViewController.iPhone8Score = iPhone8Score
        DestViewController.iPhoneSEScore = iPhoneSEScore
        DestViewController.iPhoneXSScore = iPhoneXSScore
        DestViewController.MatchQuality = MatchQuality
        DestViewController.TopPhone = TopPhone
        DestViewController.SecondPhone = SecondPhone
        DestViewController.ThirdPhone = ThirdPhone
}
}
