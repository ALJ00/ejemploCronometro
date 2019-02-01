//
//  ViewController.swift
//  cronometro
//
//  Created by Sofía Juarez Gonzalez on 31/1/19.
//  Copyright © 2019 armas jose. All rights reserved.
//

import UIKit
import Each


class ViewController: UIViewController {
    
    let timer = Each(1).seconds     // Can be .milliseconds, .seconds, .minute, .hours

   
    @IBOutlet weak var timeDisplay: UILabel!
    
    
    @IBAction func startButton(_ sender: Any) {
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 1. Instantiate the Each class with a value
        // 2. Define the value mesure (milliseconds, seconds, minutes, hours)
        // 3. Register the perfom closure
        // 4. Return .continue in the closure to continue, otherwise .stop to stop the timer
        Each(1).seconds.perform {
            print("second passed")
            
            print(self.timer.seconds)
            return .continue
        }
        
        
    }
    
    
    
    

}

