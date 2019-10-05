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
