//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Diana Arana on 05/10/19.
//  Copyright © 2019 Diana Arana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myRock: UIButton!
    @IBOutlet weak var myPaper: UIButton!
    @IBOutlet weak var myScissors: UIButton!
    @IBOutlet weak var computerChoice: UILabel!
    @IBOutlet weak var whoWon: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBAction func clickRock(_ sender: UIButton) {
        let R = randomSign()
        computerChoice.text =  R.signValue
        print(R.signValue)
        myPaper.setTitle("👊", for: .normal)
        myPaper.isEnabled = false
        myRock.isHidden = true
        myRock.isEnabled = false
        myScissors.isHidden = true
        myScissors.isEnabled = false
        let piedra = Sign.piedra
        let result = piedra.getGameState(sign: R)
        whoWon.text = "\(piedra.getGameState(sign: R).status)"
        print("El resultado es \(result)")
        determineAppState(result: result)
    }
    
    func determineAppState(result: GameState) {
        switch result {
        case .ganaste:
            view.backgroundColor = .green
        case . perdiste:
            view.backgroundColor = .red
        case .empate:
            view.backgroundColor = .yellow
        default:
            view.backgroundColor = .blue
        }
    }

    @IBAction func clickPaper(_ sender: UIButton) {
        let R = randomSign()
        computerChoice.text = R.signValue
        print(R.signValue)
        myPaper.isEnabled = false
        myRock.isHidden = true
        myRock.isEnabled = false
        myScissors.isHidden = true
        myScissors.isEnabled = false
        let papel = Sign.papel
        let result = papel.getGameState(sign: R)
        whoWon.text = "\(papel.getGameState(sign: R).status)"
        print("El resultado es \(result)")
        determineAppState(result: result)
    }
    
    @IBAction func clickScissors(_ sender: UIButton) {
        let R = randomSign()
        computerChoice.text =  R.signValue
        print(R.signValue)
        myPaper.setTitle("✌️", for: .normal)
        myPaper.isEnabled = false
        myRock.isHidden = true
        myRock.isEnabled = false
        myScissors.isHidden = true
        myScissors.isEnabled = false
        let tijera = Sign.tijera
        let result = tijera.getGameState(sign: R)
        whoWon.text = "\(tijera.getGameState(sign: R).status)"
        print("El resultado es \(result)")
        determineAppState(result: result)
        
        
    }
}



