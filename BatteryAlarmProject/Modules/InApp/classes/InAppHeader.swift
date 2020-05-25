//
//  InAppHeader.swift
//  BatteryAlarmProject
//
//  Created by Developer on 23/05/20.
//  Copyright © 2020 Karan . All rights reserved.
//

import Foundation
import UIKit

class InAppHeader: UIView {
    
    var superViewController : UIViewController?
    
    @IBAction func presentInApp(_ sender: Any) {
        
        let storybaoard = UIStoryboard(name: "InAppScreens", bundle: Bundle.main)
        let inAppController : InAppController = storybaoard.instantiateViewController(withIdentifier: "InAppController") as! InAppController
        
        self.superViewController?.present(inAppController, animated: true, completion: nil)
    }
    
}
