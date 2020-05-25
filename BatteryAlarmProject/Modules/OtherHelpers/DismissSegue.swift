//
//  DismissSegue.swift
//  BatteryAlarmProject
//
//  Created by Developer  on 23/05/20.
//  Copyright © 2020 Karan . All rights reserved.
//

import UIKit

class DismissSegue: UIStoryboardSegue {
    override func perform() {
        self.source.presentingViewController?.dismiss(animated: true, completion: nil)
   }
}
