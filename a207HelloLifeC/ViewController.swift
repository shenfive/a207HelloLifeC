//
//  ViewController.swift
//  a207HelloLifeC
//
//  Created by 申潤五 on 2020/8/1.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0
    var timer:Timer!
    
    @IBOutlet weak var counterLabel: UILabel!


    @objc func timerJob(){
        print(counter)
        counterLabel.text = "\(counter)"
        counter += 1
    }
    

    @IBAction func startTimer(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(timerJob), userInfo: nil, repeats: true)
    }
    @IBAction func breakTimer(_ sender: Any) {
        timer.invalidate()
    }
    
}

