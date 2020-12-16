//
//  PlaySpace.swift
//  FinalProject_CardGame
//
//  Created by Tiger Coder on 12/8/20.
//  Copyright © 2020 Tiger Coder. All rights reserved.
//

import UIKit

class PlaySpace: UIViewController {
    @IBOutlet weak var youLabel: UILabel!
    @IBOutlet weak var computerLabel: UILabel!
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
    @IBOutlet weak var numCardsPlayerLabel: UILabel!
    @IBOutlet weak var playerSymbol2: UIImageView!
    
    
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
    @IBOutlet weak var numCardsCompLabel: UILabel!
    @IBOutlet weak var compSymbol2: UIImageView!
    @IBOutlet weak var outcomeLabel: UILabel!
    
    var playerNum = 0
    var compNum = 0
    var tempTuple: (Int, suit2)!
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
        //tieCards = 0
        plainPlayerCard.isHidden = false
        plainCompCard.isHidden = false
        playerSymbol.isHidden = false
        compSymbol.isHidden = false
        tempTuple = playingDeck.drawACard()
        playerNum = tempTuple.0

        if tempTuple.0 != 500 {
        if (tempTuple.0 < 11 && tempTuple.0 > 1)  {
        topPlayerNumber.text = "\(tempTuple.0)"
        bottomPlayerNumber.text =  "\(tempTuple.0)"
            }
        else if tempTuple.0 == 1 {
            topPlayerNumber.text = "A"
            bottomPlayerNumber.text =  "A"
            playerSymbol.image = UIImage(named: "cardAce")
        }
        else if tempTuple.0 == 11 {
            topPlayerNumber.text = "J"
                       bottomPlayerNumber.text =  "J"
                       playerSymbol.image = UIImage(named: "cardJack")
        }
        else if tempTuple.0 == 12 {
            topPlayerNumber.text = "Q"
                       bottomPlayerNumber.text =  "Q"
                       playerSymbol.image = UIImage(named: "cardQueen")
        }
        else if tempTuple.0 == 13 {
            topPlayerNumber.text = "K"
                       bottomPlayerNumber.text =  "K"
                       playerSymbol.image = UIImage(named: "cardKing")
        }
        
            if tempTuple.0 < 11 && tempTuple.0 > 1{
        switch tempTuple.1 {
        case .hearts:

            playerSymbol.image = UIImage(named: "cardHeart")

        case .diamonds:

            playerSymbol.image = UIImage(named: "cardDiamond")

        case .clubs:
            playerSymbol.image = UIImage(named: "clubsSuit")

        case .spades:
            playerSymbol.image = UIImage(named: "spadeSuit")

        default:
            print("") //nothing
        }
            }
            
        tempTuple = playingDeck.drawACard()
            compNum = tempTuple.0
            if (tempTuple.0 < 11 && tempTuple.0 > 1)  {
                   topCompNumber.text = "\(tempTuple.0)"
                   bottomCompNumber.text =  "\(tempTuple.0)"
                       }
                   else if tempTuple.0 == 1 {
                       topCompNumber.text = "A"
                       bottomCompNumber.text =  "A"
                       compSymbol.image = UIImage(named: "cardAce")
                   }
                   else if tempTuple.0 == 11 {
                       topCompNumber.text = "J"
                                  bottomCompNumber.text =  "J"
                                  compSymbol.image = UIImage(named: "cardJack")
                   }
                   else if tempTuple.0 == 12 {
                       topCompNumber.text = "Q"
                                  bottomCompNumber.text =  "Q"
                                  compSymbol.image = UIImage(named: "cardQueen")
                   }
                   else if tempTuple.0 == 13 {
                       topCompNumber.text = "K"
                                  bottomCompNumber.text =  "K"
                                  compSymbol.image = UIImage(named: "cardKing")
                   }

            
            
            
          if tempTuple.0 > 1 && tempTuple.0 < 11{
              switch tempTuple.1 {
              case .hearts:
                compSymbol.image = UIImage(named: "cardHeart")
              case .diamonds:
                  compSymbol.image = UIImage(named: "cardDiamond")
              case .clubs:
                  compSymbol.image = UIImage(named: "clubsSuit")
              case .spades:
                  compSymbol.image = UIImage(named: "spadeSuit")
          }
            }
            //scoring
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

            if playerNum == compNum {
                      goBtn.isHidden = true
                      delay()
                  }
            
            
        }else { //if end of deck
            print("empty deck")
            hide()
            youLabel.isHidden = true
            computerLabel.isHidden = true
            numCardsCompLabel.isHidden = true
            numCardsPlayerLabel.isHidden = true
            goBtn.isHidden = true
            plainPlayerCard.isHidden = true
            plainCompCard.isHidden = true
            topPlayerNumber.isHidden = true
            bottomPlayerNumber.isHidden = true
            topCompNumber.isHidden = true
            bottomCompNumber.isHidden = true
            compSymbol.isHidden = true
            if(playerCards > compCards){
                outcomeLabel.text = "You win!"
                outcomeLabel.isHidden = false
            } else if(playerCards < compCards){
                outcomeLabel.text = "You lose..."
                outcomeLabel.isHidden = false
            }else if(playerCards == compCards){
                outcomeLabel.text = "It's a tie."
                outcomeLabel.isHidden = false
            }
              }
        print(playerNum)
        print(compNum)
        

    }


    
    @IBAction func restartButton(_ sender: UIButton) {
        playingDeck = DeckOfCards()
        playerCards = 0
        compCards = 0
        tieCards = 0
        hide()
        plainPlayerCard.isHidden = true
        plainCompCard.isHidden = true
        playerSymbol.isHidden = true
        compSymbol.isHidden = true
        topPlayerNumber.text = ""
        bottomPlayerNumber.text = ""
        topCompNumber.text = ""
        bottomCompNumber.text = ""
        topPlayerNumber.isHidden = false
        bottomPlayerNumber.isHidden = false
        topCompNumber.isHidden = false
        bottomCompNumber.isHidden = false
        goBtn.isHidden = false
        starterCard.isHidden = false
        starterCard2.isHidden = false
        numCardsPlayerLabel.text = "Number Of Cards Collected \(compCards)/52"
        numCardsCompLabel.text = "Number Of Cards Collected \(compCards)/52"
        computerLabel.isHidden = false
        youLabel.isHidden = false
        numCardsPlayerLabel.isHidden = false
        numCardsCompLabel.isHidden = false
    }
    
    
    func hide() {
           playerSymbol.isHidden = true
        compSymbol.isHidden = true
        playerSymbol2.isHidden = true
        compSymbol2.isHidden = true
        starterCard.isHidden = true
        starterCard2.isHidden = true
           compWarCard1.isHidden = true
           compWarCard2.isHidden = true
           compWarCard3.isHidden = true
           playerWarCard1.isHidden = true
           playerWarCard2.isHidden = true
           playerWarCard3.isHidden = true
        plainPlayerCard2.isHidden = true
        plainCompCard2.isHidden = true
        topPlayerNum2.isHidden = true
        bottomPlayerNum2.isHidden = true
        topCompNum2.isHidden = true
        bottomCompNum2.isHidden = true
        outcomeLabel.isHidden = true
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
                          DispatchQueue.main.asyncAfter(deadline: .now() + secondsToDelay) {
                        self.goBtn.isHidden = false
                            self.plainPlayerCard2.isHidden = false
                            self.plainCompCard2.isHidden = false
                            self.doubleWar()
                        }
                   }
                  }
                 }
               
   }

    
    func doubleWar() {
    playerSymbol2.isHidden = false
    compSymbol2.isHidden = false
    topPlayerNum2.isHidden = false
    bottomPlayerNum2.isHidden = false
    topCompNum2.isHidden = false
    bottomCompNum2.isHidden = false
        //do-while loop so that is at least does it once
        //called repeat-while loop in swift
        repeat {
        
        tempTuple = playingDeck.drawACard()
            if tempTuple.0 != 500 {
                playerNum = tempTuple.0
                if (tempTuple.0 < 11 && tempTuple.0 > 1)  {
                    topPlayerNum2.text = "\(tempTuple.0)"
                    bottomPlayerNum2.text =  "\(tempTuple.0)"
                    }
                else if tempTuple.0 == 1 {
                            topPlayerNum2.text = "A"
                            bottomPlayerNum2.text =  "A"
                            playerSymbol2.image = UIImage(named: "cardAce")
                        }
                        else if tempTuple.0 == 11 {
                            topPlayerNum2.text = "J"
                                       bottomPlayerNum2.text =  "J"
                                    playerSymbol2.image = UIImage(named: "cardJack")
                        }
                        else if tempTuple.0 == 12 {
                            topPlayerNum2.text = "Q"
                                       bottomPlayerNum2.text =  "Q"
                                      playerSymbol2.image = UIImage(named: "cardQueen")
                        }
                        else if tempTuple.0 == 13 {
                            topPlayerNum2.text = "K"
                                       bottomPlayerNum2.text =  "K"
                                      playerSymbol2.image = UIImage(named: "cardKing")
                        }
                        if tempTuple.0 < 11 && tempTuple.0 > 1{
                               switch tempTuple.1 {
                               case .hearts:

                                   playerSymbol2.image = UIImage(named: "cardHeart")

                               case .diamonds:

                                   playerSymbol2.image = UIImage(named: "cardDiamond")

                               case .clubs:
                                   playerSymbol2.image = UIImage(named: "clubsSuit")

                               case .spades:
                                   playerSymbol2.image = UIImage(named: "spadeSuit")

                               default:
                                   print("") //nothing
                               }
                                   }
                               tempTuple = playingDeck.drawACard()
                                    compNum = tempTuple.0
                                   if (tempTuple.0 < 11 && tempTuple.0 > 1)  {
                                          topCompNum2.text = "\(tempTuple.0)"
                                          bottomCompNum2.text =  "\(tempTuple.0)"
                                              }
                                          else if tempTuple.0 == 1 {
                                              topCompNum2.text = "A"
                                              bottomCompNum2.text =  "A"
                                              compSymbol2.image = UIImage(named: "cardAce")
                                          }
                                          else if tempTuple.0 == 11 {
                                              topCompNum2.text = "J"
                                                         bottomCompNum2.text =  "J"
                                                         compSymbol2.image = UIImage(named: "cardJack")
                                          }
                                          else if tempTuple.0 == 12 {
                                              topCompNum2.text = "Q"
                                                         bottomCompNum2.text =  "Q"
                                                         compSymbol2.image = UIImage(named: "cardQueen")
                                          }
                                          else if tempTuple.0 == 13 {
                                              topCompNum2.text = "K"
                                                         bottomCompNum2.text =  "K"
                                                         compSymbol2.image = UIImage(named: "cardKing")
                                          }
                               
      
                                 if tempTuple.0 > 1 && tempTuple.0 < 11 {
                                     switch tempTuple.1 {
                                     case .hearts:
                                       compSymbol2.image = UIImage(named: "cardHeart")
                                     case .diamonds:
                                         compSymbol2.image = UIImage(named: "cardDiamond")
                                     case .clubs:
                                         compSymbol2.image = UIImage(named: "clubsSuit")
                                     case .spades:
                                         compSymbol2.image = UIImage(named: "spadeSuit")
                                 }
                                    //scoring
                                   }
                                    if (playerNum == compNum) {
                                                 tieCards += 2
                                    } else if ( playerNum > compNum) {
                                     playerCards += (2+tieCards)
                                     tieCards = 0
                                     numCardsPlayerLabel.text = "Number Of Cards Collected \(playerCards)/52"
                                 }
                                 else {
                                     compCards += (2 + tieCards)
                                     tieCards = 0
                                     numCardsCompLabel.text = "Number Of Cards Collected \(compCards)/52"
                                    }
                                   
                                   
                               }else { //if end of deck
                                   print("empty deck")
                                   hide()
                                   goBtn.isHidden = true
                                   plainPlayerCard.isHidden = true
                                   plainCompCard.isHidden = true
                                   topPlayerNumber.isHidden = true
                                   bottomPlayerNumber.isHidden = true
                                   topCompNumber.isHidden = true
                                   bottomCompNumber.isHidden = true
                if(playerCards > compCards){
                    outcomeLabel.text = "You win!"
                    outcomeLabel.isHidden = false
                } else if(playerCards < compCards){
                    outcomeLabel.text = "You lose..."
                    outcomeLabel.isHidden = false
                }else if(playerCards == compCards){
                    outcomeLabel.text = "It's a tie."
                    outcomeLabel.isHidden = false
                }
                
                                     }
                               print(playerNum)
                               print(compNum)

                           } while (playerNum == compNum)
                           
                    }
}



