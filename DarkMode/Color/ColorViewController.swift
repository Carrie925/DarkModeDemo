//
//  ColorViewController.swift
//  DarkMode
//
//  Created by dan wang on 2020/3/15.
//  Copyright © 2020 dan wang. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
class ColorViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var colorSeg: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    let arrIOS12 = [["UIColor.black", UIColor.black],
                    ["UIColor.darkGray", UIColor.darkGray],
                    ["UIColor.lightGray", UIColor.lightGray],
                    ["UIColor.white", UIColor.white],
                    ["UIColor.gray", UIColor.gray],
                    ["UIColor.red", UIColor.red],
                    ["UIColor.green", UIColor.green],
                    ["UIColor.blue", UIColor.blue],
                    ["UIColor.cyan", UIColor.cyan],
                    ["UIColor.yellow", UIColor.yellow],
                    ["UIColor.magenta", UIColor.magenta],
                    ["UIColor.orange", UIColor.orange],
                    ["UIColor.purple", UIColor.purple],
                    ["UIColor.brown", UIColor.brown],
                    ["UIColor.clear", UIColor.clear]
                    ]
    
    let arrIOS13 = [["UIColor.systemRed", UIColor.systemRed],
                    ["UIColor.systemGreen", UIColor.systemGreen],
                    ["UIColor.systemBlue", UIColor.systemBlue],
                    ["UIColor.systemOrange", UIColor.systemOrange],
                    ["UIColor.systemYellow", UIColor.systemYellow],
                    ["UIColor.systemPink", UIColor.systemPink],
                    ["UIColor.systemPurple", UIColor.systemPurple],
                    ["UIColor.systemTeal", UIColor.systemTeal],
                    ["UIColor.systemIndigo", UIColor.systemIndigo],
                    ["UIColor.systemGray", UIColor.systemGray],
                    ["UIColor.systemGray2", UIColor.systemGray2],
                    ["UIColor.systemGray3", UIColor.systemGray3],
                    ["UIColor.systemGray4", UIColor.systemGray4],
                    ["UIColor.systemGray5", UIColor.systemGray5],
                    ["UIColor.systemGray6", UIColor.systemGray6],
                    ["UIColor.label", UIColor.label],
                    ["UIColor.secondaryLabel", UIColor.secondaryLabel],
                    ["UIColor.tertiaryLabel", UIColor.tertiaryLabel],
                    ["UIColor.quaternaryLabel", UIColor.quaternaryLabel],
                    ["UIColor.link", UIColor.link],
                    ["UIColor.placeholderText", UIColor.placeholderText],
                    ["UIColor.separator", UIColor.separator],
                    ["UIColor.opaqueSeparator", UIColor.opaqueSeparator],
                    ["UIColor.systemBackground", UIColor.systemBackground],
                    ["UIColor.secondarySystemBackground", UIColor.secondarySystemBackground],
                    ["UIColor.tertiarySystemBackground", UIColor.tertiarySystemBackground],
                    ["UIColor.systemGroupedBackground", UIColor.systemGroupedBackground],
                    ["UIColor.secondarySystemGroupedBackground", UIColor.secondarySystemGroupedBackground],
                    ["UIColor.tertiarySystemGroupedBackground", UIColor.tertiarySystemGroupedBackground],
                    ["UIColor.systemFill", UIColor.systemFill],
                    ["UIColor.secondarySystemFill", UIColor.secondarySystemFill],
                    ["UIColor.tertiarySystemFill", UIColor.tertiarySystemFill],
                    ["UIColor.quaternarySystemFill", UIColor.quaternarySystemFill],
                    ["UIColor.lightText", UIColor.lightText],
                    ["UIColor.darkText", UIColor.darkText],
                    ["UIColor.groupTableViewBackground", UIColor.groupTableViewBackground]
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.systemBackground
        self.title = "Static/Dynamic Color"
        tableView.register(UINib(nibName: "ColorTableViewCell", bundle: nil), forCellReuseIdentifier: "ColorTableViewCell")
//        //System Color
//        colorSeg.selectedSegmentTintColor = UIColor.systemBlue
        
        //Customer Color
        colorSeg.selectedSegmentTintColor = UIColor(named: "UrglyBlue")
    }

    @IBAction func segClicked(_ sender: UISegmentedControl) {
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if colorSeg.selectedSegmentIndex == 0 {
            return arrIOS12.count
        } else {
            return arrIOS13.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorTableViewCell") as! ColorTableViewCell
        
        if colorSeg.selectedSegmentIndex == 0 {
            guard let color = arrIOS12[indexPath.row][1] as? UIColor else {
                return cell
            }
            cell.titleLabel.text = arrIOS12[indexPath.row][0] as? String
            cell.colorLabel.backgroundColor = color
            cell.descLabel.text = color.hexString()
        } else {
            guard let color = arrIOS13[indexPath.row][1] as? UIColor else {
                return cell
            }
            cell.titleLabel.text = arrIOS13[indexPath.row][0] as? String
            cell.colorLabel.backgroundColor = arrIOS13[indexPath.row][1] as? UIColor
            cell.descLabel.text = color.hexString()
        }
        
        return cell
    }
}
