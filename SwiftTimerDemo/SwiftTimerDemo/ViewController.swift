//
//  ViewController.swift
//  SwiftTimerDemo
//
//  Created by Sanjeev Gautam on 08/06/20.
//  Copyright © 2020 SG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    deinit {
        print("ViewController deinit called")
    }

    @IBAction func openSecondViewController(_ sender: UIButton) {
        if let vc = self.storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController {
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

}

