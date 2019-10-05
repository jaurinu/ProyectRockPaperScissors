//
//  GameState.swift
//  RockPaperScissors
//
//  Created by Diana Arana on 05/10/19.
//  Copyright © 2019 Diana Arana. All rights reserved.
//

import Foundation
enum GameState {
    case comenzamos
    case ganaste
    case perdiste
    case empate
    
    var status: String {
        switch self {
        case .comenzamos:
            return "Elige: Piedra, Papel o Tijera?"
        case .ganaste:
            return "Ganaste!"
        case .perdiste:
            return "Lo siento ... Perdiste!"
        case .empate:
            return "Empate!"
        }
    }
}
