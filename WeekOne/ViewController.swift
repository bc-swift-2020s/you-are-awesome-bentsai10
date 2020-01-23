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
        
        var messageNumber = 0
        var imageNumber = 0
        var colorNumber = 0
        
        
        var newMessageNumber = Int.random(in:0...inspiringMessages.count-1)
        repeat{
            newMessageNumber = Int.random(in:0...inspiringMessages.count-1)
        }while messageNumber == newMessageNumber
        messageNumber = newMessageNumber
        myMessage.text = inspiringMessages[messageNumber]
        
        var newImageNumber = Int.random(in: 0...9)
        repeat {
            newImageNumber = Int.random(in:0...9)
        }while imageNumber == newImageNumber
        imageNumber = newImageNumber
        myImage.image = UIImage.init(named: "image\(imageNumber)")
        
        var newColorNumber = Int.random(in:0...colors.count-1)
        repeat{
            newColorNumber = Int.random(in:0...colors.count-1)
        }while colorNumber == newColorNumber
        colorNumber = newColorNumber
        myMessage.textColor = colors[colorNumber]
        
    }
    
    
    

}

