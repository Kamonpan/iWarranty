//
//  promotion.swift
//  MyISProject
//
//  Created by Kamonpan Ketlue on 7/28/2560 BE.
//  Copyright © 2560 Kamonpan Ketlue. All rights reserved.
//

import Foundation
import UIKit

class Promotion {
    private var _name = ""
    var detail = ""
    var picture = UIImage()
    var url = ""
    
    var PromoName:String{
        get {return _name}
        set {_name = newValue}
    }
}

class Notification {
    private var _noti = ""
    var detail = ""
    var picture = UIImage()
    
    var noti:String{
        get {return _noti}
        set {_noti = newValue}

    }
}
