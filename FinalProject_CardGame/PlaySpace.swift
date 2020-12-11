//
//  PlaySpace.swift
//  FinalProject_CardGame
//
//  Created by Tiger Coder on 12/8/20.
//  Copyright © 2020 Tiger Coder. All rights reserved.
//

import UIKit

class PlaySpace: UIViewController {
    @IBOutlet weak var plainPlayerCard: UIImageView!
    @IBOutlet weak var topPlayerNumber: UILabel!
    @IBOutlet weak var bottomPlayerNumber: UILabel!
    @IBOutlet weak var playerDiamond: UIImageView!
    @IBOutlet weak var playerHeart: UIImageView!
    @IBOutlet weak var playerSpade: UIImageView!
    @IBOutlet weak var playerClub: UIImageView!
    @IBOutlet weak var starterCard: UIImageView!
    @IBOutlet weak var acePlayerCard: UIImageView!
    @IBOutlet weak var jackPlayerCard: UIImageView!
    @IBOutlet weak var queenPlayerCard: UIImageView!
    @IBOutlet weak var kingPlayerCard: UIImageView!
    
    
    @IBOutlet weak var plainCompCard: UIImageView!
    @IBOutlet weak var topCompNumber: UILabel!
    @IBOutlet weak var bottomCompNumber: UILabel!
    @IBOutlet weak var compDiamond: UIImageView!
    @IBOutlet weak var compHeart: UIImageView!
    @IBOutlet weak var compSpade: UIImageView!
    @IBOutlet weak var compClub: UIImageView!
    @IBOutlet weak var starterCard2: UIImageView!
    @IBOutlet weak var aceCompCard: UIImageView!
    @IBOutlet weak var jackCompCard: UIImageView!
    @IBOutlet weak var queenCompCard: UIImageView!
    @IBOutlet weak var kingCompCard: UIImageView!
    
    
    var playingDeck: DeckOfCards!
    
 override func viewDidLoad() {
     super.viewDidLoad()
     // Do any additional setup after loading the view.
    playingDeck = DeckOfCards()
 }

    
    @IBAction func goButton(_ sender: UIButton) {
        var playerNum: Int = 0
        var compNum: Int = 0
        var tempTuple: (Int, suit2)
        plainPlayerCard.isHidden = false
        plainCompCard.isHidden = false
        starterCard.isHidden = true
        starterCard2.isHidden = true
        tempTuple = playingDeck.drawACard()
        
        topPlayerNumber.text = "\(tempTuple.0)"
        bottomPlayerNumber.text = "\(tempTuple.0)"
        switch tempTuple.1 {
        case .hearts:
            playerHeart.isHidden = false
        case .diamonds:
            playerDiamond.isHidden = false
        case .clubs:
            playerClub.isHidden = false
        case .spades:
            playerSpade.isHidden = false
        default:
            print("") //nothing
        }

    }
    

   

}
