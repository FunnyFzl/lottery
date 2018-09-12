//
//  UIFontExtension.swift
//  APP
//
//  Created by funny on 2018/9/6.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit

//楷体
enum KaitiSC: String {
    //李旭科毛笔行书
    case brushXingshu = "LiXuKe"
}

extension UIFont {

    class func fontTheme(_ value: CGFloat) -> UIFont {
        return UIFont(name: KaitiSC.brushXingshu.rawValue, size: value)!
    }

    class func font(_ value: CGFloat) -> UIFont {
        return UIFont.systemFont(ofSize: value)
    }
}
