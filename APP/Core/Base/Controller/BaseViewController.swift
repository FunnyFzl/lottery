//
//  BaseViewController.swift
//  APP
//
//  Created by funny on 2018/7/5.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        BaseViewModel().request()
    }

    // MARK: - 处理所有事件
    public func handleActions() -> () {

    }

    // MARK: - 添加UI
    public func setupUI() -> () {

    }
}
