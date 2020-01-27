//
//  ViewController.swift
//  WeekOne
//
//  Created by Ben Tsai on 1/13/20.
//  Copyright © 2020 Ben Tsai. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    

    @IBOutlet weak var myMessage: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    var audioPlayer =  AVAudioPlayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myMessage.text = ""
        myImage.contentMode = .scaleAspectFit
        // Do any additional setup after loading the view.
        
    }
    
    func playSound(name:String){
        if let sound = NSDataAsset(name: name){
            do{
                try audioPlayer = AVAudioPlayer(data: sound.data )
                audioPlayer.play()
            }catch {
                print("😡ERROR: \(error.localizedDescription)Could not initialize AVAudioPlayer object")
            }
        }else{
            print("😡ERROR: Could not read data from file sound\(name)")
        }
    }
    
    func nonRepeatingRandom(originalNumber: Int, upperLimit:Int) -> Int{
        var newNumber:Int
        repeat{
            newNumber = Int.random(in:0...upperLimit)
        }while originalNumber == newNumber
        return newNumber
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
       
        let colors = [UIColor.red, UIColor.orange, UIColor.yellow, UIColor.blue, UIColor.green, UIColor.black, UIColor.purple]
        let inspiringMessages = ["Swiftacular",
                                 "You Are Cool",
                                 "Makin' Apps Swiftly",
                                 "Swift = Awesome",
                                 "Professor Gallaugher is a Swift God"]
        var messageNumber = -1
        var imageNumber = -1
        var colorNumber = -1
        var soundNumber = -1
        
        let totalImages = 10
        let totalSounds = 6
        
        
        messageNumber = nonRepeatingRandom(originalNumber:  messageNumber, upperLimit: inspiringMessages.count-1)
        myMessage.text = inspiringMessages[messageNumber]
        
        imageNumber = nonRepeatingRandom(originalNumber:  imageNumber, upperLimit: totalImages-1)
        myImage.image = UIImage.init(named: "image\(imageNumber)")
        
        colorNumber = nonRepeatingRandom(originalNumber:  colorNumber, upperLimit: colors.count-1)
        myMessage.textColor = colors[colorNumber]
        
        soundNumber = nonRepeatingRandom(originalNumber:  soundNumber, upperLimit: totalSounds-1)
        soundNumber = newSoundNumber
        
        playSound(name: "sound\(soundNumber)")
        
        
    }
    
    
    

}

