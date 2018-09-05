//
//  File.swift
//  APP
//
//  Created by funny on 2018/7/6.
//  Copyright © 2018年 Funny. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {

    public func setTitle(title: String?, titleColor: UIColor?, font: UIFont? ) -> () {

        if title?.count == 0 {
            return
        }
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
        titleLabel?.font = font
    }

}

