//
//  DeckOfCards.swift
//  FinalProject_CardGame
//
//  Created by Tiger Coder on 12/8/20.
//  Copyright © 2020 Tiger Coder. All rights reserved.
//

import Foundation
import UIKit

enum suit {
    case hearts, diamonds, clubs, spades
}

class DeckOfCards {
    var deck = [Int: suit]()
    var yourCards: Int = 0
    var computerCards: Int = 0
    
    init () {
        deck = [2: .hearts, 3: .hearts, 4: .hearts, 5: .hearts, 6: .hearts, 7: .hearts, 8: .hearts, 9: .hearts, 10: .hearts, 11: .hearts, 12: .hearts, 13: .hearts]
        //will print on card Jack for 11, Queen for 12, and Ace for 13
    }
    
    
}
