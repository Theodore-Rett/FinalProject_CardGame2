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
    @IBOutlet weak var starterCard: UIImageView!
    @IBOutlet weak var playerSymbol: UIImageView!
    @IBOutlet weak var numCardsPlayerLabel: UILabel!
    @IBOutlet weak var numCardsCompLabel: UILabel!
    
    
    @IBOutlet weak var plainCompCard: UIImageView!
    @IBOutlet weak var topCompNumber: UILabel!
    @IBOutlet weak var bottomCompNumber: UILabel!
    @IBOutlet weak var starterCard2: UIImageView!
    @IBOutlet weak var compSymbol: UIImageView!
    
    
    var playingDeck: DeckOfCards!
    var playerCards = 0
    var compCards = 0
    var tieCards = 0
 override func viewDidLoad() {
     super.viewDidLoad()
     // Do any additional setup after loading the view.
    playingDeck = DeckOfCards()
    
 }

    
    @IBAction func goButton(_ sender: UIButton) {
        //hello
        
        var playerNum: Int = 0
        var compNum: Int = 0
        var tempTuple: (Int, suit2)
        plainPlayerCard.isHidden = false
        plainCompCard.isHidden = false
        starterCard.isHidden = true
        starterCard2.isHidden = true
        playerSymbol.isHidden = false
        compSymbol.isHidden = false
        tempTuple = playingDeck.drawACard()
        playerNum = tempTuple.0
        topPlayerNumber.text = "\(tempTuple.0)"
        bottomPlayerNumber.text = "\(tempTuple.0)"
        
        switch tempTuple.1 {
        case .hearts:
            playerSymbol.image = UIImage(contentsOfFile: "cardHeart")
        case .diamonds:
            playerSymbol.image = UIImage(contentsOfFile: "cardDiamond")
        case .clubs:
            playerSymbol.image = UIImage(contentsOfFile: "cardClub")
        case .spades:
            playerSymbol.image = UIImage(contentsOfFile: "cardSpade")
        default:
            print("") //nothing
        }
        tempTuple = playingDeck.drawACard()
          compNum = tempTuple.0
              topCompNumber.text = "\(tempTuple.0)"
              bottomCompNumber.text = "\(tempTuple.0)"
          
              switch tempTuple.1 {
              case .hearts:
                compSymbol.image = UIImage(contentsOfFile: "cardHeart")
              case .diamonds:
                  compSymbol.image = UIImage(contentsOfFile: "cardDiamond")
              case .clubs:
                  compSymbol.image = UIImage(contentsOfFile: "cardClub")
              case .spades:
                  compSymbol.image = UIImage(contentsOfFile: "cardSpade")
          }

          if (playerNum == compNum) {
              tieCards += 2
          }
          else if ( playerNum > compNum) {
              playerCards += (2+tieCards)
              tieCards = 0
              numCardsPlayerLabel.text = "Number Of Cards Collected \(playerCards)/52"
          }
          else {
              compCards += (2 + tieCards)
              tieCards = 0
              numCardsCompLabel.text = "Number Of Cards Collected \(compCards)/52"
        

    }
    

   

}
}
