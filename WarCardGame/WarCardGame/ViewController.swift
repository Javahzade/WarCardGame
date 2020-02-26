//
//  ViewController.swift
//  WarCardGame
//
//  Created by student on 2/21/20.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var cpu : Int = 0
    var player : Int = 0
    
    @IBOutlet weak var leftCard: UIImageView!
    
    @IBOutlet weak var rightCard: UIImageView!
    
    @IBOutlet weak var scorePlayer: UILabel!
  
    @IBOutlet weak var gameScore: UILabel!
    
    @IBAction func close(_ sender: UIButton) {
    
        exit(0)
        
    }
    
    
    @IBOutlet weak var dealStop: UIButton!
    
    @IBOutlet weak var restartOut: UIButton!
    
    @IBOutlet weak var scoreCPU: UILabel!
    
    func scoreCheck () {
        
        if (player == 20) {
            gameScore.text = "Player WIN!"
            buttonHiddens()
        }
        else if (cpu == 20) {
            gameScore.text = "CPU WIN!"
            buttonHiddens()
        }
    }
    
    func buttonHiddens () {
        
        dealStop.isHidden = true
        restartOut.isHidden = false    }
    
    @IBAction func Deal(_ sender: UIButton) {
        
        let leftNumber  = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        leftCard.image = UIImage(named: "card\(leftNumber)")
        rightCard.image = UIImage(named: "card\(rightNumber)")

            if (leftNumber > rightNumber){
                player += 1
                scorePlayer.text = String(player)
            }
            else if (rightNumber > leftNumber) {
                cpu += 1
                scoreCPU.text = String(cpu)
            }
            else {
            }
        scoreCheck()
}
    @IBAction func restart(_ sender: UIButton) {
        
        player = 0
        cpu = 0
        scorePlayer.text = "0"
        scoreCPU.text = "0"
        gameScore.text = ""
        dealStop.isHidden = false
        restartOut.isHidden = true
        leftCard.image = UIImage(named: "back")
        rightCard.image = UIImage(named: "back")
    }
}


