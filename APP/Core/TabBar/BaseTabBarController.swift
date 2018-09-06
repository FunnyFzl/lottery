//
//  BaseTabBarController.swift
//  APP
//
//  Created by funny on 2018/7/5.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit
import ESTabBarController_swift

class BaseTabBarController: ESTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white

        setupUI()
    }

    override func setupUI() {

        let v1 = HouseViewController()
        let v2 = HomePageViewController()

        let content1 = BaseTabBarItemContentView()
        let content2 = BaseTabBarItemContentView()

        v1.tabBarItem = ESTabBarItem.init(content1, title: "列表", image: UIImage(named: "Houses"), selectedImage: UIImage(named: "Houses"))
        v2.tabBarItem = ESTabBarItem.init(content2, title: "我的", image: UIImage(named: "Home_Page"), selectedImage: UIImage(named: "Home_Page"))

        let n1 = BaseNavigationController.init(rootViewController: v1)
        let n2 = BaseNavigationController.init(rootViewController: v2)

        self.viewControllers = [n1, n2]
    }
}
