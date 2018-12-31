//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Deepa Thalikar on 11/16/18.
//  Copyright © 2018 Deepa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    var randomBallNumber: Int = 0

    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateBallImages()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallImages()
    }
    
    func updateBallImages() {
    randomBallNumber = Int(arc4random_uniform(5))
    imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImages()
    }

}

