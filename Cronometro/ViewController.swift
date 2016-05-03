//
//  ViewController.swift
//  Cronometro
//
//  Created by Petrus Carvalho on 03/05/16.
//  Copyright © 2016 Petrus Carvalho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    var timer = NSTimer()
    var time = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func increaseTime() {
        self.time += 1
        self.timerLabel.text = String(self.time)
    }
    
    @IBAction func play(sender: AnyObject) {
        self.timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.increaseTime), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(sender: AnyObject) {
        self.timer.invalidate()
    }
    
    @IBAction func stop(sender: AnyObject) {
        self.time = 0
        self.timerLabel.text = String(self.time)
        self.timer.invalidate()
    }
    
    

}

