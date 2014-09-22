//
//  ViewController.swift
//  Postcard
//
//  Created by Tyler Simko on 9/18/14.
//  Copyright (c) 2014 O8 Labs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var messageLabel: UILabel!

    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    //code will evaluate when we press button
}

