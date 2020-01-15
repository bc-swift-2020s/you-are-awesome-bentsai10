//
//  ViewController.swift
//  WeekOne
//
//  Created by Ben Tsai on 1/13/20.
//  Copyright © 2020 Ben Tsai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var myMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    var count1 = 0
    @IBAction func showMessagePressed(_ sender: UIButton) {
        if count1%2 == 0 {
            myMessage.text = "Swiftacular"
            myMessage.textColor = UIColor.yellow
            myMessage.textAlignment = NSTextAlignment.left
            count1+=1
            
        }
            
        else{
            myMessage.text = "Makin' Apps Swiftly"
            myMessage.textColor = UIColor.cyan
            myMessage.textAlignment = NSTextAlignment.left
            count1-=1
            
        }
    }
    var count2 = 0
    @IBAction func showOtherMessagePressed(_ sender: UIButton) {
        if count2%2 == 0 {
            myMessage.text = "You are Awesome"
            myMessage.textColor = UIColor.blue
            myMessage.textAlignment = NSTextAlignment.right
            count2+=1
        }
            
        else{
            myMessage.text = "Swift is Awesome"
            myMessage.textColor = UIColor.black
            myMessage.textAlignment = NSTextAlignment.right
            count2-=1
        }

        
    }
    
    

}

