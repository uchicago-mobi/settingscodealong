//
//  ViewController.swift
//  SettingsCodeAlong
//
//  Created by Chelsea Troy on 5/15/19.
//  Copyright © 2019 Chelsea Troy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        UserDefaults.standard.set("1.0", forKey: "VERSION")
        print(UserDefaults.standard.string(forKey: "VERSION"))
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(defaultsChanged),
            name: UserDefaults.didChangeNotification,
            object: nil
        )
        defaultsChanged()
    }
    
    @objc func defaultsChanged() {
        if UserDefaults.standard.bool(forKey: "BLUE_THEME") {
            self.view.backgroundColor = UIColor.blue
        } else {
            self.view.backgroundColor = UIColor.orange
        }
    }
}

