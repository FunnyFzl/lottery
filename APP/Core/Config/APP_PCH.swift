//
//  APP_PCH.swift
//  APP
//
//  Created by funny on 2018/7/12.
//  Copyright © 2018年 Funny. All rights reserved.
//

import Foundation
import UIKit

public let FScreenWidth: CGFloat = UIScreen.main.bounds.size.width
public let FScreenHeight: CGFloat = UIScreen.main.bounds.size.height

public func kWidth(_ x: CGFloat) -> CGFloat {
    return x * (FScreenWidth / 375.0)
}

public func kHeight(_ x: CGFloat) -> CGFloat {
    return x * (FScreenHeight == 812 ? 1 : FScreenHeight / 667.0)
}

public let isPad: Bool = UIDevice.current.userInterfaceIdiom == .pad

public func iOS9_OR_LATER() -> Bool {
    if #available(iOS 9.0, *) {
        return true
    }
    return false
}

public let isIPhoneX: Bool =
    (UIScreen.instancesRespond(to: #selector(getter: UIScreen.currentMode))
        && (Int(FScreenHeight)) == 2_436)

public let kDocumentPath =
    NSSearchPathForDirectoriesInDomains(
        FileManager.SearchPathDirectory.documentDirectory,
        FileManager.SearchPathDomainMask.userDomainMask, true)

//获取时间戳
public let kCurentTime: String = String(NSDate().timeIntervalSince1970)

public let kNotificationCenter = NotificationCenter.default

public let userId: String = "userid"

public let token: String = "accesstoken"

public let weChatAppID: String = "wxd930ea5d5a258f4f"

public let singleLineWidth: CGFloat = 1 / (UIScreen.main.scale)

public let singleLineAdjustOffset: CGFloat = 1 / (UIScreen.main.scale) / 2

//#define IsNilOrNull(_ref)   (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]))

