//
//  ViewController.swift
//  a207HelloLifeC
//
//  Created by 申潤五 on 2020/8/1.
//  Copyright © 2020 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var counter = 0.0
    var timer:Timer!
    var newView:UIView!
    
    @IBOutlet weak var counterLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.newView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        newView.backgroundColor = UIColor.red
        newView.center = self.view.center
        newView.layer.cornerRadius = 75
        newView.clipsToBounds = true
        self.view.addSubview(newView)
        
    }
    
    
    

    @objc func timerJob(){
        print(counter)
        
        let d = counter * ( M_PI / 180 )
        
//        newView.center = CGPoint.init(x: counter, y: counter)
        newView.transform = CGAffineTransform(rotationAngle: CGFloat(d))
        
        counterLabel.text = "\(counter)"
        counter += 1
    }
    

    @IBAction func startTimer(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: (1/60), target: self, selector: #selector(timerJob), userInfo: nil, repeats: true)
    }
    @IBAction func breakTimer(_ sender: Any) {
        timer.invalidate()
    }
    
}

