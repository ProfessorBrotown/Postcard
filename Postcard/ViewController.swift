//
//  ViewController.swift
//  Postcard
//
//  Created by Macbook Pro on 2014-10-22.
//  Copyright (c) 2014 JonathanReichert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!

    @IBOutlet weak var mailButton: UIButton!
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        //makes the Label button appear after button pressed
        
        messageLabel.text = enterMessageTextField.text
        //makes the message appear near stamp
        
        messageLabel.textColor = UIColor.redColor()
        //text color
        
        enterMessageTextField.text = ""
        //makes the enterMessageTextField go back to blank
        
        enterMessageTextField.resignFirstResponder()
        //makes the keyboard go away!
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        //changes the text of the mail button to show mail has been sent after pressed
    }

}

