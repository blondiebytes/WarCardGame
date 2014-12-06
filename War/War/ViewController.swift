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
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var enemyScore: UILabel!
    
    var cardNamesArray:[String] = ["ace", "card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12","card13"]
    
    var playerScoreTotal = 0;
    var enemyScoreTotal = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func playRoundTapped(sender: UIButton) {
        // Comments serve as documentation for your code
         // Also /* */ comments
        
        // Randomize a number for the first imageview
        var firstRandomNumber:Int = Int(arc4random_uniform(13))
        
        // Construct a string with the random number
        var firstCardString:String = self.cardNamesArray[firstRandomNumber]
        
        // Randomize a number for the second imageview
        var secondRandomNumber:Int = Int(arc4random_uniform(13))
        
        // Construct a string with the random number
        var secondCardString:String = self.cardNamesArray[secondRandomNumber]
        
        // Set the first card image view to the assest
        // corresponding to the randomized number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        // Set the second card image view to the assest
        // corresponding to the randomized number
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
       // randomization done
        
        // Determine the higher card
        if (firstRandomNumber > secondRandomNumber) {
            
            // TODO: first card is larger
            playerScoreTotal += 1;
            self.playerScore.text = String(playerScoreTotal);
            
        } else if (firstRandomNumber == secondRandomNumber) {
           
            // TODO: numbers are equal
            
        } else {
            
            //TODO: second card is larger
            enemyScoreTotal+=1;
            self.enemyScore.text = String(enemyScoreTotal);
            
        }
        
    }
    
    


}

