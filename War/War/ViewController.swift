//
//  ViewController.swift
//  War
//
//  Created by Kathryn Hodge on 10/25/14.
//  Copyright (c) 2014 blondiebytes. All rights reserved.
//

//PREPO -> creating images
// name@3x.png

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.playRoundButton.setTitle("Play", forState: UIControlState.Normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func playRoundTapped(sender: UIButton) {
        // Comments serve as documentation for your code
         // Also /* */ comments
        
        // Randomize a number for the first imageview
        var firstRandomNumber = arc4random_uniform(13) + 1
        
        // Randomize a number for the second imageview
        var secondRandomNumber = arc4random_uniform(13) + 1
        
        // Set the first card image view to the assest
        // corresponding to the randomized number
        self.firstCardImageView.image = UIImage(named: "card\(firstRandomNumber)")
        
        // Set the second card image view to the assest
        // corresponding to the randomized number
        self.secondCardImageView.image = UIImage(named: "card\(secondRandomNumber)")
        
       // randomization done
        
    }
    
    


}

