//
//  SecondViewController.swift
//  SwiftTimerDemo
//
//  Created by Sanjeev Gautam on 08/06/20.
//  Copyright © 2020 SG. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    private var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    deinit {
        print("SecondViewController deinit called")
    }
    
    @IBAction func startTimer(_ sender: UIButton) {
        self.setUpTimer()
    }
    
    private func setUpTimer() {
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.timerMethod), userInfo: nil, repeats: true)
        }
    }
    
    private func invalidateTimer() {
        self.timer?.invalidate()
        self.timer = nil
    }
    
    @objc private func timerMethod() {
        print("timerMethod called")
    }

}
