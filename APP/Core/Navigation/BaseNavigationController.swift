//
//  BaseNavigationController.swift
//  APP
//
//  Created by funny on 2018/7/5.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit

extension UINavigationController {
    
}

class BaseNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    override func setupUI() {
        
        let appearance = UIBarButtonItem.appearance()
        appearance.setBackButtonTitlePositionAdjustment(UIOffset.init(horizontal: -80, vertical: 0.0), for: .default)
        self.navigationBar.isTranslucent = true
        self.navigationBar.barTintColor = UIColor.init(red: 250/255.0, green: 250/255.0, blue: 250/255.0, alpha: 0.8)
        self.navigationBar.tintColor = FRandomColor

        let backButton: UIButton = UIButton(type: .custom)
        backButton.setTitle(title: "返回", titleColor: .black, font: UIFont.systemFont(ofSize: 15))
        self.navigationItem.leftBarButtonItem?.customView = backButton

        #if swift(>=4.0)
        self.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor : FRandomColor, NSAttributedStringKey.font: FFont(18)]
        #elseif swift(>=3.0)
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : FRandomColor, NSFontAttributeName: FFont(18)];
        #endif
    }
}


