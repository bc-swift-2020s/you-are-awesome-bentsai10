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
    
    var imageNumber = 0
    
    let swiftMessage = "Swiftacular"
    let coolMessage = "You Are Cool"
    let makinMessage = "Makin' Apps Swiftly"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myMessage.text = ""
        myImage.contentMode = .scaleAspectFit
        // Do any additional setup after loading the view.
        
    }
    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        //let imageName = "image" + String(imageNumber)
        let imageName = "image\(imageNumber)"
        myImage.image = UIImage(named: imageName)
        imageNumber += 1
        if imageNumber == 10{
            imageNumber = 0
        }
        
         
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

