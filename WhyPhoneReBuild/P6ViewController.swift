//
//  P6ViewController.swift
//  WhyPhoneReBuild
//
//  Created by Casey Henderson on 09/12/2018.
//  Copyright © 2018 Casey Henderson. All rights reserved.
//

import Foundation
import UIKit
class P6ViewController : UIViewController {
    
    
    @IBOutlet weak var P6Label1: UILabel!
    @IBOutlet var P6Label2: UILabel!
    @IBOutlet weak var P6Image1: UIImageView!
    
    var TopPhone = String()
    var iPhoneXScore = Int()
    var iPhone8Score = Int()
    var iPhoneSEScore = Int()
    var iPhoneXSScore = Int()
    var MatchQuality = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        P6Image1.image = UIImage(named: TopPhone)
        P6Label2.text = TopPhone
    }
    
    @IBAction func Restart(_ sender: Any) {
        iPhone8Score = 0
        iPhoneXSScore = 0
        iPhoneSEScore = 0
        iPhoneXScore = 0
    }
    
    @IBAction func Buy(_ sender: AnyObject) {
        if TopPhone == "iPhone 8" {
            if let url = NSURL(string: "https://www.carphonewarehouse.com/apple/iphone-8.html#"){ UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
        }
        else if TopPhone == "iPhone XS" {
            if let url = NSURL(string: "https://www.carphonewarehouse.com/apple/iphone-xs.html"){ UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
        }
        else if TopPhone == "iPhone X" {
            if let url = NSURL(string: "https://www.carphonewarehouse.com/apple/iphone-x.html"){ UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
        }
        else if TopPhone == "iPhone SE" {
            if let url = NSURL(string: "https://www.carphonewarehouse.com/apple/iphone-se.html"){ UIApplication.shared.open(url as URL, options: [:], completionHandler: nil) }
            
        }
    }

    
}

