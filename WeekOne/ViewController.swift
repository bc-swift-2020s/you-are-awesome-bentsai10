//
//  ViewController.swift
//  WeekOne
//
//  Created by Ben Tsai on 1/13/20.
//  Copyright © 2020 Ben Tsai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var count1 = 0
    @IBAction func sayItPressed(_ sender: UIButton) {
        if count1%2 == 0 {
            messageLabel.text = "Swiftacular"
            messageLabel.textColor = UIColor.yellow
            count1+=1
            
        }
            
        else{
            messageLabel.text = "Makin' Apps Swiftly"
            messageLabel.textColor = UIColor.cyan
            count1-=1
            
        }
    }
    var count2 = 0
    @IBAction func showOtherPressed(_ sender: UIButton) {
        if count2%2 == 0 {
            messageLabel.text = "You are Awesome"
            messageLabel.textColor = UIColor.blue
            count2+=1
        }
            
        else{
            messageLabel.text = "Swift is Awesome"
            messageLabel.textColor = UIColor.black
            count2-=1
        }

        
    }
    
    

}

