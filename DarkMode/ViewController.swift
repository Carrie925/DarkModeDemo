//
//  ViewController.swift
//  DarkMode
//
//  Created by dan wang on 2020/3/15.
//  Copyright © 2020 dan wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Dark Mode Demo"
        print("test")
    }

    @IBAction func colorBtnClicked(_ sender: UIButton) {
        if #available(iOS 13.0, *) {
            let vc = ColorViewController(nibName: nil, bundle: nil)
            self.navigationController?.pushViewController(vc, animated: true)
        } else {
            // Fallback on earlier versions
        }
    }
    
    @IBAction func symbolBtnClick(_ sender: Any) {
        let vc = SymbolVC(nibName: nil, bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

