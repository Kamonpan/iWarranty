//
//  AlertHelper.swift
//  MyISProject
//
//  Created by Jaruwit S on 8/4/2560 BE.
//  Copyright © 2560 Kamonpan Ketlue. All rights reserved.
//

import Foundation
import UIKit

class AlertHelper {
    class func showAlert(title:String , message:String , viewController:UIViewController) {
        let alert = UIAlertController(title:title , message:message , preferredStyle:.alert)
        let resultAlert = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(resultAlert)
        viewController.present(alert, animated: true,   completion: nil)
    }
}
