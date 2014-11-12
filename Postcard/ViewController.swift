//
//  ViewController.swift
//  Postcard
//
//  Created by Mikhail Sidorov on 06.11.14.
//  Copyright (c) 2014 Mikhail Sidorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var txtEnterName: UITextField!
    @IBOutlet weak var txtEnterMessage: UITextField!
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
        messageLabel.text = txtEnterMessage.text
        messageLabel.hidden = false
        messageLabel.textColor = UIColor.redColor()
        
        txtEnterMessage.text = ""
        txtEnterMessage.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

