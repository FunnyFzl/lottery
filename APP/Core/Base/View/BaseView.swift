//
//  BaseView.swift
//  APP
//
//  Created by funny on 2018/7/5.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit

class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    // MARK: - 处理所有事件
    public func handleActions() -> () {

    }

    // MARK: - 添加UI
    public func setupUI() -> () {

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
