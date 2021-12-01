//
//  ViewController.swift
//  FinalProject_CardGame
//
//  Created by Tiger Coder on 12/7/20.
//  Copyright © 2020 Tiger Coder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playButton(_ sender: UIButton) {
        performSegue(withIdentifier: "playGame", sender: nil)
    }
    
    @IBAction func unwind(_ seg: UIStoryboardSegue){
        
    }
    
    
    @IBOutlet weak var brightAction: UICommand!
    
    
    
    
}

