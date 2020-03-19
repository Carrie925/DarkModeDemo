//
//  SymbolVC.swift
//  DarkMode
//
//  Created by dan wang on 2020/3/18.
//  Copyright © 2020 dan wang. All rights reserved.
//

import UIKit

class SymbolVC: UIViewController {
    @IBOutlet weak var starImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if #available(iOS 13.0, *) {
            self.view.backgroundColor = UIColor.systemBackground
            starImageView.image = UIImage(systemName: "star.fill")
            starImageView.tintColor = UIColor.systemGray
        } else {
            // Fallback on earlier versions
        }
        self.title = "SF Symbols"
    }

}
