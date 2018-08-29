//
//  BaseNavigationController.swift
//  APP
//
//  Created by funny on 2018/7/5.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let backButton: UIButton = UIButton(type: .custom)
        backButton.setTitle(title: "返回", titleColor: .black, font: UIFont.systemFont(ofSize: 15))

        self.navigationItem.leftBarButtonItem?.customView = backButton

    }
}


