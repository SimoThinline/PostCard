//
//  ViewController.swift
//  PostCard
//
//  Created by Thinline on 4/10/15.
//  Copyright (c) 2015 Thinline. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!

    @IBOutlet weak var nameLabel: UILabel!
    
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
    
    // this function is called when send mail button is pressed
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //test commit
        messageLabel.hidden = false
        messageLabel.text = enterNameTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterMessageTextField.text
        nameLabel.textColor = UIColor.purpleColor()
        enterMessageTextField.text = ""
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState:UIControlState.Normal)
        
        
    }


}

