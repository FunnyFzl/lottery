//
//  BaseTabBarController.swift
//  APP
//
//  Created by funny on 2018/7/5.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit
import RAMAnimatedTabBarController

class BaseTabBarController: RAMAnimatedTabBarController {

    override func viewDidLoad() {

        view.backgroundColor = UIColor.white

        addAllChildsControllors()

        super.viewDidLoad()
    }
}

extension BaseTabBarController {

    // MARK: - 添加所有的子控制器
    fileprivate func addAllChildsControllors() -> () {

        let house = HouseViewController()
        let homePage = HomePageViewController()
        

        addOneChildrenVC(childVC: house, title: "列表", image: UIImage(named: "Houses"), selectedImage: UIImage(named: "Houses"))

        addOneChildrenVC(childVC: homePage, title: "我的", image: UIImage(named: "Home_Page"), selectedImage: UIImage(named: "Home_Page"))
    }


    // MARK: - 添加一个控制器
    func addOneChildrenVC(childVC: UIViewController, title: String?, image: UIImage? ,selectedImage: UIImage?) -> () {

        let navigationVC = BaseNavigationController(rootViewController: childVC)
        self.addChildViewController(navigationVC)

        let tabItem = RAMAnimatedTabBarItem(title: title, image: image, selectedImage: selectedImage)
        navigationVC.tabBarItem = tabItem

        let animation = RAMBounceAnimation()
        animation.iconSelectedColor = UIColor.red
        animation.textSelectedColor = UIColor.red
        tabItem.animation = animation
    }

}
