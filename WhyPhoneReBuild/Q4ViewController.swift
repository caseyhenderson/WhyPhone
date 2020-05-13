//
//  Q4ViewController.swift
//  WhyPhoneReBuild
//
//  Created by Casey Henderson on 03/03/2019.
//  Copyright © 2019 Casey Henderson. All rights reserved.
//

import Foundation
import UIKit
class Q4ViewController: UIViewController, UITextFieldDelegate {
    override func viewDidLoad() {
        Q4TextField.delegate = self
        super.viewDidLoad()
    }
    
    @IBOutlet weak var Q4TextField: UITextField!
    @IBOutlet weak var Q4Label2: UILabel!
    @IBOutlet weak var Q4Label: UILabel!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    var Q4answer:String = ""
    var Q4LabelText = String()
    
    let iPhone8:Array = ["fingerprint", "medium", "750", "850", "1000", "Retina HD", "wireless charging", "fast processor", "good camera", "lots of storage", "glass design", "TrueTone", "3D Touch", "colours", "battery", "OLED", "value"]
    let iPhoneX:Array = ["good screen", "fast", "good camera", "fast processor", "face", "Face ID", "medium", "bigger", "1000", "wireless charging", "Super Retina", "storage", "high resolution", "TrueTone", "3D Touch", "battery", "Animoji", "all screen", "last long time"]
    let iPhoneSE:Array = ["reliable", "small", "500", "300", "1000", "Retina", "fingerprint", "pocket-sized", "less expensive", "fits in pocket", "headphone jack", "headphone", "budget"]
    let iPhoneXS:Array = ["good screen", "fast", "works", "reliable", "camera", "processor", "Face ID", "face", "big screen", "edge-to-edge screen", "notch", "big", "1000", "TrueTone", "3D Touch", "lots of storage", "fast processor", "good camera", "new", "battery", "all screen", "OLED", "Memoji", "dual-camera", "good investment", "last long time", "biggest"]
    

    @IBAction func Q4Button(_ sender: Any) {
        let Q4answer:String = Q4TextField.text!
        Q4Label.text = "\(Q4answer)"
        if iPhoneX.contains(Q4answer) {
            iPhoneXScore = iPhoneXScore + 1;
        }
        if iPhone8.contains(Q4answer) {
            iPhone8Score = iPhone8Score + 1;
        }
        if iPhoneSE.contains(Q4answer) {
            iPhoneSEScore = iPhoneSEScore + 1
        }
        if iPhoneXS.contains(Q4answer) {
            iPhoneXSScore = iPhoneXSScore + 1
        }
        else {
            MatchQuality = MatchQuality + 1
        }        
    }
    var iPhoneXScore = Int()
    var iPhone8Score = Int()
    var iPhoneSEScore = Int()
    var iPhoneXSScore = Int()
    var MatchQuality = Int()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DestViewController: P4ViewController = segue.destination as! P4ViewController
        DestViewController.iPhoneXScore = iPhoneXScore
        DestViewController.iPhone8Score = iPhone8Score
        DestViewController.iPhoneSEScore = iPhoneSEScore
        DestViewController.iPhoneXSScore = iPhoneXSScore
        DestViewController.MatchQuality = MatchQuality
    }
    
}
