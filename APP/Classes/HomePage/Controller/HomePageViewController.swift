//
//  HomePageViewController.swift
//  APP
//
//  Created by funny on 2018/7/5.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Funny"



    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        print()
        view.backgroundColor = UIColor.random
    }
}
