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
    
    @IBOutlet weak var plainCompCard: UIImageView!
    @IBOutlet weak var topCompNumber: UILabel!
    @IBOutlet weak var bottomCompNumber: UILabel!
    @IBOutlet weak var compDiamond: UIImageView!
    @IBOutlet weak var compHeart: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goButton(_ sender: UIButton) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
