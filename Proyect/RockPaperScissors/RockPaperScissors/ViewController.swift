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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clickRock(_ sender: UIButton) {
        let R = randomSign()
        computerChoice.text =  R.signValue
        print(R.signValue)
        myPaper.isHidden = true
        myPaper.isEnabled = false
        myScissors.isHidden = true
        myScissors.isEnabled = false
        let piedra = Sign.piedra
        let result = piedra.getGameState(sign: R)
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

    }
    
    @IBAction func clickScissors(_ sender: UIButton) {
    }
}



