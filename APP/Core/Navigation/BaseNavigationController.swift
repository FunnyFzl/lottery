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
        self.navigationBar.barTintColor = .white
        self.navigationBar.tintColor = UIColor.singleColor(51, 1)

        #if swift(>=4.0)
        self.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor : UIColor.singleColor(51, 1), NSAttributedStringKey.font: UIFont.fontTheme(18)]
        #elseif swift(>=3.0)
        self.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName : UIColor.singleColor(51, 1), NSFontAttributeName: UIFont.fontTheme(18)];
        #endif
    }
}


