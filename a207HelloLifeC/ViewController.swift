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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerJob), userInfo: nil, repeats: true)
        
        
    }

    @objc func timerJob(){
        print(counter)
        counter += 1
    }
    


}

