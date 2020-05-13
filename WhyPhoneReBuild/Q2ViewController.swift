//
//  Q2ViewController.swift
//  WhyPhoneReBuild
//
//  Created by Casey Henderson on 06/12/2018.
//  Copyright © 2018 Casey Henderson. All rights reserved.
//

import Foundation
import UIKit
class Q2ViewController: UIViewController, UITextFieldDelegate{
    
override func viewDidLoad()
{
    super.viewDidLoad()
    sizetextfield.delegate = self
    }
    
    @IBOutlet var TyLabel: UILabel!
    @IBOutlet weak var SLabel: UILabel!
    @IBOutlet weak var sizetextfield: UITextField!
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    var Q2answer:String = ""
    var TyLabelText = String()
    
    let iPhone8:Array = ["fingerprint", "medium", "750", "850", "1000", "Retina HD", "wireless charging", "fast processor", "good camera", "lots of storage", "glass design", "TrueTone", "3D Touch", "colours", "battery", "OLED", "value"]
    let iPhoneX:Array = ["good screen", "fast", "good camera", "fast processor", "face", "Face ID", "medium", "bigger", "1000", "wireless charging", "Super Retina", "storage", "high resolution", "TrueTone", "3D Touch", "battery", "Animoji", "all screen", "last long time"]
    let iPhoneSE:Array = ["reliable", "small", "500", "300", "1000", "Retina", "fingerprint", "pocket-sized", "less expensive", "fits in pocket", "headphone jack", "headphone", "budget"]
    let iPhoneXS:Array = ["good screen", "fast", "works", "reliable", "camera", "processor", "Face ID", "face", "big screen", "edge-to-edge screen", "notch", "big", "1000", "TrueTone", "3D Touch", "lots of storage", "fast processor", "good camera", "new", "battery", "all screen", "OLED", "Memoji", "dual-camera", "good investment", "last long time", "biggest"]
    
    var iPhoneXScore = Int()
    var iPhone8Score = Int()
    var iPhoneSEScore = Int()
    var iPhoneXSScore = Int()
    var MatchQuality = Int()
    
    @IBAction func Q2Button(_ sender: Any) {
        let Q2answer:String = sizetextfield.text!
        SLabel.text = " \(Q2answer)"
        if iPhoneX.contains(Q2answer) {
            iPhoneXScore = iPhoneXScore + 1;
        }
        if iPhone8.contains(Q2answer) {
            iPhone8Score = iPhone8Score + 1;
        }
        if iPhoneSE.contains(Q2answer) {
            iPhoneSEScore = iPhoneSEScore + 1
        }
        if iPhoneXS.contains(Q2answer) {
            iPhoneXSScore = iPhoneXSScore + 1
        }
        else {
            MatchQuality = MatchQuality + 1
        }
        SLabel.text = " \(iPhoneXScore)"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DestViewController: Q3ViewController = segue.destination as! Q3ViewController
        DestViewController.iPhoneXScore = iPhoneXScore
        DestViewController.iPhone8Score = iPhone8Score
        DestViewController.iPhoneSEScore = iPhoneSEScore
        DestViewController.iPhoneXSScore = iPhoneXSScore
        DestViewController.MatchQuality = MatchQuality
    }
    
}

