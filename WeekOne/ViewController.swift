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
        myImage.contentMode = .scaleAspectFit
        // Do any additional setup after loading the view.
        
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
        let colors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.blue, UIColor.green, UIColor.black, UIColor.purple]
        let inspiringMessages = ["Swiftacular",
                                 "You Are Cool",
                                 "Makin' Apps Swiftly",
                                 "Swift = Awesome",
                                 "Professor Gallaugher is a Swift God"]
        let imageName = "image\(Int.random(in:0...9))"
        myMessage.text = inspiringMessages[Int.random(in:0...inspiringMessages.count-1)]
        myMessage.textColor = colors[Int.random(in:0...colors.count-1)]
        myImage.image = UIImage(named: imageName)

        
         
        //        if  myMessage.text == swiftMessage{
        //            myMessage.text = makinMessage
        //            myMessage.textColor = UIColor.yellow
        //            myMessage.textAlignment = NSTextAlignment.center
        //            myImage.image = UIImage(named: "image0")
        //
        //        }
        //        else if myMessage.text == coolMessage || myMessage.text == "" {
        //            myMessage.text = swiftMessage
        //            myMessage.textColor = UIColor.red
        //            myMessage.textAlignment = NSTextAlignment.left
        //            myImage.image = UIImage(named: "image2")
        //
        //        }
        //
        //        else{
        //            myMessage.text = coolMessage
        //            myMessage.textColor = UIColor.cyan
        //            myMessage.textAlignment = NSTextAlignment.right
        //            myImage.image = UIImage(named: "image1")
        //
        //        }
    }
    
    
    

}

