//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Esmaeil MIRZAEE on 2019-09-13.
//  Copyright © 2019 Esmaeil MIRZAEE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    let question = ["ball1", "ball2", "ball3", "ball4", "ball5", ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        ask()
    }

    @IBAction func askButton(_ sender: UIButton) {
        ask()
    }
    
    func ask() {
        ballImage.image = UIImage(named: question[Int.random(in: 0...4)])
    }
}

