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
    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myMessage.text = ""
        // Do any additional setup after loading the view.
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
        if  myMessage.text == "Swiftacular" {
            myMessage.text = "Makin' Apps Swiftly"
            myMessage.textColor = UIColor.yellow
            myMessage.textAlignment = NSTextAlignment.center
            myImage.image = UIImage(named: "image0")
            
        }
        else if myMessage.text == "You Are Cool" || myMessage.text == "" {
            myMessage.text = "Swiftacular"
            myMessage.textColor = UIColor.red
            myMessage.textAlignment = NSTextAlignment.left
            myImage.image = UIImage(named: "image2")
            
        }
            
        else{
            myMessage.text = "You Are Cool"
            myMessage.textColor = UIColor.cyan
            myMessage.textAlignment = NSTextAlignment.right
            
            myImage.image = UIImage(named: "image1")
            
        }
    }
    
    
    

}

