//
//  UIColorExtension.swift
//  APP
//
//  Created by funny on 2018/9/6.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit


extension UIColor {

    // 便利构造函数,调用的时候可不加init
    convenience init(_ r:UInt32 ,_ g:UInt32 , _ b:UInt32 , _ a:CGFloat = 1.0) {
        self.init(red: CGFloat(r) / 255.0,
                  green: CGFloat(g) / 255.0,
                  blue: CGFloat(b) / 255.0,
                  alpha: a)
    }

    //设置随机色
    class var random: UIColor {
        return UIColor(arc4random_uniform(256),
                       arc4random_uniform(256),
                       arc4random_uniform(256))
    }

    //设置单色
    class func singleColor(_ rgb: UInt32, _ alpha: CGFloat) -> UIColor{
        return UIColor(rgb, rgb, rgb, alpha)
    }

    //主题色
    public func themeColor(_ alpha: CGFloat) -> UIColor {
        return UIColor.init(128, 213, 201, alpha)
    }

    //获取单色的图片
    public func image() -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(self.cgColor)
        context!.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }

    //16进制色值
    class func hex(hexString: String) -> UIColor {
        var cString: String = hexString.trimmingCharacters(in: .whitespacesAndNewlines)
        if cString.count < 6 { return UIColor.black }

        let index = cString.index(cString.endIndex, offsetBy: -6)
        let subString = cString[index...]
        if cString.hasPrefix("0X") { cString = String(subString) }
        if cString.hasPrefix("#") { cString = String(subString) }

        if cString.count != 6 { return UIColor.black }

        var range: NSRange = NSMakeRange(0, 2)
        let rString = (cString as NSString).substring(with: range)
        range.location = 2
        let gString = (cString as NSString).substring(with: range)
        range.location = 4
        let bString = (cString as NSString).substring(with: range)

        var r: UInt32 = 0x0
        var g: UInt32 = 0x0
        var b: UInt32 = 0x0

        Scanner(string: rString).scanHexInt32(&r)
        Scanner(string: gString).scanHexInt32(&g)
        Scanner(string: bString).scanHexInt32(&b)

        return UIColor(r, g, b)
    }
}
