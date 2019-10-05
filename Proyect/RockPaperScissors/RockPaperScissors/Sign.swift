//
//  Sign.swift
//  RockPaperScissors
//
//  Created by Diana Arana on 05/10/19.
//  Copyright © 2019 Diana Arana. All rights reserved.
//

import Foundation

import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .piedra
    } else if sign == 1 {
        return .papel
    } else {
        return .tijera
    }
}

enum Sign {
    case piedra
    case papel
    case tijera
    
    var signValue: String {
        switch self {
        case .piedra:
            return "👊🏻"
        case .papel:
            return "🖐🏻"
        case .tijera:
            return "✌🏻"
            
        }
    }
    
    
    
    func getGameState(sign: Sign) -> GameState {
        switch self {
        case .piedra:
            switch sign {
            case .piedra: return .empate
            case .papel: return .perdiste
            case .tijera: return .ganaste
            }
        case .papel:
            switch sign {
            case .piedra: return .ganaste
            case .papel: return .ganaste
            case .tijera: return .perdiste
            }
        case .tijera:
            switch sign {
            case .piedra: return .perdiste
            case .papel: return .ganaste
            case .tijera: return .empate
            }
        }
    }
}
