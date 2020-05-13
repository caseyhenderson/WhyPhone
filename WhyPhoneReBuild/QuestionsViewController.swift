//
//  QuestionsViewController.swift
//  WhyPhoneReBuild
//
//  Created by Casey Henderson on 06/12/2018.
//  Copyright © 2018 Casey Henderson. All rights reserved.
//

import Foundation
import UIKit
class QuestionsViewController: UIViewController, UITextFieldDelegate {
    
// MARK Properties
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        
    }
    // Do any additional setup after loading the view, typically from a nib.
    // text field

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var iLabel: UILabel!
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var label1: UILabel!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    var Q1answer:String = ""
    let iPhone8:Array = ["fingerprint", "medium", "750", "850", "1000", "Retina HD", "wireless charging", "fast processor", "good camera", "lots of storage", "glass design", "TrueTone", "3D Touch", "colours", "battery", "OLED", "value", "Touch ID"]
    let iPhoneX:Array = ["good screen", "fast", "good camera", "fast processor", "face", "Face ID", "medium", "1000", "wireless charging", "Super Retina", "storage", "high resolution", "TrueTone", "3D Touch", "battery", "Animoji", "all screen", "last long time"]
    let iPhoneSE:Array =  ["reliable", "small", "500", "300", "1000", "Retina", "fingerprint", "pocket-sized", "less expensive", "fits in pocket", "headphone jack", "headphone", "budget"]
    let iPhoneXS:Array = ["good screen", "fast", "works", "reliable", "camera", "processor", "Face ID", "face", "big screen", "edge-to-edge screen", "notch", "big", "1000", "TrueTone", "3D Touch", "lots of storage", "fast processor", "good camera", "new", "battery", "all screen", "OLED", "Memoji", "dual-camera", "good investment", "last long time"]
    
    public var iPhoneXScore:Int = 0
    public var iPhone8Score:Int = 0
    public var iPhoneSEScore: Int = 0
    public var iPhoneXSScore: Int = 0
    public var MatchQuality: Int = 0


    @IBAction func inputGetter(_ sender: Any) {
        let Q1answer:String = nameTextField.text!
        testLabel.text = " \(Q1answer)"
        if iPhoneX.contains(Q1answer) {
            iPhoneXScore = iPhoneXScore + 1;
        }
        if iPhone8.contains(Q1answer) {
            iPhone8Score = iPhone8Score + 1;
        }
        if iPhoneSE.contains(Q1answer) {
            iPhoneSEScore = iPhoneSEScore + 1
        }
        if iPhoneXS.contains(Q1answer) {
            iPhoneXSScore = iPhoneXSScore + 1
        }
        else {
            MatchQuality = MatchQuality + 1
        }
        label1.text = " \(iPhoneXScore)"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let DestViewController: Q2ViewController = segue.destination as! Q2ViewController
        DestViewController.iPhoneXScore = iPhoneXScore
        DestViewController.iPhone8Score = iPhone8Score
        DestViewController.iPhoneSEScore = iPhoneSEScore
        DestViewController.iPhoneXSScore = iPhoneXSScore
        DestViewController.MatchQuality = MatchQuality
    }
    }






    



