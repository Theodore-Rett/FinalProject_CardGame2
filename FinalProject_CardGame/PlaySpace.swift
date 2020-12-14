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
    @IBOutlet weak var playerWarCard1: UIImageView!
    @IBOutlet weak var playerWarCard2: UIImageView!
    @IBOutlet weak var playerWarCard3: UIImageView!
    @IBOutlet weak var warLabel: UILabel!
    @IBOutlet weak var goBtn: UIButton!
    @IBOutlet weak var plainPlayerCard2: UIImageView!
    @IBOutlet weak var topPlayerNum2: UILabel!
    @IBOutlet weak var bottomPlayerNum2: UILabel!
    
    
    @IBOutlet weak var plainCompCard: UIImageView!
    @IBOutlet weak var topCompNumber: UILabel!
    @IBOutlet weak var bottomCompNumber: UILabel!
    @IBOutlet weak var starterCard2: UIImageView!
    @IBOutlet weak var compSymbol: UIImageView!
    @IBOutlet weak var compWarCard1: UIImageView!
    @IBOutlet weak var compWarCard2: UIImageView!
    @IBOutlet weak var compWarCard3: UIImageView!
    @IBOutlet weak var plainCompCard2: UIImageView!
    @IBOutlet weak var topCompNum2: UILabel!
    @IBOutlet weak var bottomCompNum2: UILabel!
    
    
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
        hide()
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
        
        
    if tempTuple.0 != 500 {
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
        topCompNumber.text = "\(tempTuple.0)"
        bottomCompNumber.text = "\(tempTuple.0)"
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
        
        if topCompNumber.text == topPlayerNumber.text {
                  goBtn.isHidden = true
                  delay()
              }
        } else { //if end of deck
            print("empty deck")
            hide()
            goBtn.isHidden = true
            plainPlayerCard.isHidden = true
            plainCompCard.isHidden = true
            topPlayerNumber.isHidden = true
            bottomPlayerNumber.isHidden = true
            topCompNumber.isHidden = true
            bottomCompNumber.isHidden = true
              }

    }
    
    func hide() {
           playerSymbol.isHidden = true
           compWarCard1.isHidden = true
           compWarCard2.isHidden = true
           compWarCard3.isHidden = true
           playerWarCard1.isHidden = true
           playerWarCard2.isHidden = true
           playerWarCard3.isHidden = true
       }
       

   func delay() {
       let secondsToDelay = 0.7
          self.warLabel.isHidden = false
       DispatchQueue.main.asyncAfter(deadline: .now() + secondsToDelay) {
           self.warLabel.isHidden = true
           self.playerWarCard1.isHidden = false
           self.compWarCard1.isHidden = false
                  DispatchQueue.main.asyncAfter(deadline: .now() + secondsToDelay) {
                   self.playerWarCard2.isHidden = false
                   self.compWarCard2.isHidden = false
                      DispatchQueue.main.asyncAfter(deadline: .now() + secondsToDelay) {
                   self.playerWarCard3.isHidden = false
                   self.compWarCard3.isHidden = false
                          self.warLabel.isHidden = true
                        self.goBtn.isHidden = false
                   }
                  }
                 }
               
   }

}
}
