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

    @IBOutlet weak var directionSegment: UISegmentedControl!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let newView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        newView.backgroundColor = UIColor.red
        newView.center = self.view.center
        newView.layer.cornerRadius = 15
        newView.clipsToBounds = true
        newView.alpha = 0.7
        newView.tag = 999
        self.view.addSubview(newView)
        timer = Timer.scheduledTimer(timeInterval: (1/60), target: self, selector: #selector(timerJob), userInfo: nil, repeats: true)

    }
    
    
    
    
    @objc func timerJob(){
        let d = counter * ( Double.pi / 180 )
        for theView in self.view.subviews{
            if theView.tag == 999{
                theView.transform = CGAffineTransform(rotationAngle: CGFloat(d))
            }
//            counter += 1
            switch  directionSegment.selectedSegmentIndex{
            case 0:
                counter += Double(slider.value)
            case 1:
                counter -= Double(slider.value)
            default:
                break
            }
            
            
        }
    }
    
    @IBAction func sliderValChange(_ sender: Any) {
        print("slider value:\(slider.value)")
    }
    
    
}

