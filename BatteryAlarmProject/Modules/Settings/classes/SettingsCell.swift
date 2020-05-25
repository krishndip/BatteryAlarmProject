//
//  SettingsCell.swift
//  BatteryAlarmProject
//
//  Created by Developer on 25/05/20.
//  Copyright © 2020 Karan . All rights reserved.
//

import Foundation
import UIKit

class SettingsCell: UITableViewCell {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var switchCell: UISwitch!
    
    @IBOutlet weak var detailLabel: UILabel!
    
    
    open override func layoutSubviews() {
        super.layoutSubviews()

        if let indicatorButton = allSubviews.compactMap({ $0 as? UIButton }).last {
            let image = indicatorButton.backgroundImage(for: .normal)?.withRenderingMode(.alwaysTemplate)
            indicatorButton.setBackgroundImage(image, for: .normal)
            indicatorButton.tintColor = UIColor(red: 199.0/255.0, green: 199.0/255.0, blue: 204.0/255.0, alpha: 1.0)
         }
      }
    }

    

    extension UIView {
       var allSubviews: [UIView] {
          return subviews.flatMap { [$0] + $0.allSubviews }
       }
    }


