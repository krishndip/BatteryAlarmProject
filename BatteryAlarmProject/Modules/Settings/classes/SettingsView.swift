//
//  SettingsView.swift
//  BatteryAlarmProject
//
//  Created by Developer on 23/05/20.
//  Copyright © 2020 Karan . All rights reserved.
//

import Foundation
import UIKit

class SettingsView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableviewSettings: UITableView!
    
    @IBOutlet weak var inappHeaderView: UIView!
    
    
    let dataSource = ["Set Passcode","Touch ID Or Face ID","Touch ID Or Face ID","Log History" ,"Security Alarm - AntiTheft","Set Alarm Volume Level","Alarm Vibration","Repeat Alarm","In-App Purchase (Remove Ads)","Restore Purchase","Rate Us","Share This App","Feedback","Terms & Policy","App Version"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.tableviewSettings.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.tableviewSettings.register(UINib(nibName: "SettingsCell", bundle: nil), forCellReuseIdentifier: "SettingsCell")

        
        let xibInappHeader : InAppHeader = Bundle.main.loadNibNamed("InAppHeader", owner: self, options: nil)?.first as! InAppHeader
        xibInappHeader.superViewController = self
        xibInappHeader.frame = CGRect(x: 0, y: 0, width: self.inappHeaderView.frame.size.width, height: self.inappHeaderView.frame.size.height)
        self.inappHeaderView.addSubview(xibInappHeader)
        
    }
    
    //MARK:- delegate tableview
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
        }
        
        //MARK:- data source tableview
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.dataSource.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell", for: indexPath) as! SettingsCell
            cell.contentView.backgroundColor = UIColor.black
            cell.backgroundColor = UIColor.black
            
            cell.accessoryType = .disclosureIndicator
            cell.tintColor = UIColor(red: 199.0/255.0, green: 199.0/255.0, blue: 204.0/255.0, alpha: 1.0)
            cell.accessoryView?.tintColor = UIColor(red: 199.0/255.0, green: 199.0/255.0, blue: 204.0/255.0, alpha: 1.0)
    //        cell.editingAccessoryType = .
//            cell.textLabel?.text = self.dataSource[indexPath.row]
            cell.titleLabel.text = self.dataSource[indexPath.row]

            self.hideSwitchAndDetailLabel(cell: cell, isHidden: true)

            switch indexPath.row {
            case 0:
                cell.detailLabel.text = "change passcode"
                self.hideDetailLabel(detailLableCell: cell.detailLabel, isHidden: false)
                break;
            case 4:
                cell.detailLabel.text = "Install Now"
                self.hideDetailLabel(detailLableCell: cell.detailLabel, isHidden: false)
                break
            case 5:
                cell.detailLabel.text = "Level 5"
                self.hideDetailLabel(detailLableCell: cell.detailLabel, isHidden: false)
                break
            case 7:
                cell.detailLabel.text = "3 Times"
                self.hideDetailLabel(detailLableCell: cell.detailLabel, isHidden: false)
                break
            case 8:
                cell.detailLabel.text = "Just $2.99"
                self.hideDetailLabel(detailLableCell: cell.detailLabel, isHidden: false)
                break
            case 14:
                cell.detailLabel.text = "0.0.1"
                self.hideDetailLabel(detailLableCell: cell.detailLabel, isHidden: false)
                break
            case 1:
                self.hideSwitch(switchCell: cell.switchCell, isHidden: false)
                cell.accessoryType = .none
                break
            case 6:
                self.hideSwitch(switchCell: cell.switchCell, isHidden: false)
                cell.accessoryType = .none
                break
            default:
                break;
            }
            
            return cell
        }
    
    func hideSwitch(switchCell : UISwitch, isHidden : Bool)
    {
        switchCell.isHidden = isHidden
    }
    
    func hideDetailLabel(detailLableCell : UILabel, isHidden : Bool)
    {
        detailLableCell.isHidden = isHidden
    }
    
    func hideSwitchAndDetailLabel(cell : SettingsCell, isHidden : Bool)
    {
        self.hideSwitch(switchCell: cell.switchCell, isHidden: isHidden)
        self.hideDetailLabel(detailLableCell: cell.detailLabel, isHidden: isHidden)
    }
    
}

