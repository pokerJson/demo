//
//  dyy.swift
//  demo
//
//  Created by dzc on 2018/6/22.
//  Copyright © 2018年 dyy. All rights reserved.
//

import Foundation
import UIKit
//扩展一下UIdevice
extension UIDevice {
    
    public func isX() -> Bool {
        if UIScreen.main.bounds.height == 812 {
            return true
        }
        return false
    }
}
//MARK:判断导航栏高度iphonx 44 其它20
let kStatusHeight:CGFloat = UIDevice.current.isX() ? 44.0 : 20.0 //转为CGFloat方便使用

let KWidth = UIScreen.main.bounds.size.width//CGFloat类型的
let KHeight = UIScreen.main.bounds.size.height

