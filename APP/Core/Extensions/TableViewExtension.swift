//
//  TableViewExtension.swift
//  APP
//
//  Created by funny on 2018/9/3.
//  Copyright © 2018年 Funny. All rights reserved.
//

import Foundation
import UIKit
import SwiftyAttributes
import MJRefresh

extension UITableView {

    // MARK: - 添加下拉刷新
    public func addPullDownToRefresh() -> () {

        let refreshControl: UIRefreshControl = UIRefreshControl()
        refreshControl.tintColor = FRandomColor
        refreshControl.attributedTitle = "正在刷新...".withFont(FFont(14)).withTextColor(FRandomColor)
        self.refreshControl = refreshControl;
    }

    func freshRefreshControlStyle() -> () {
        self.refreshControl?.tintColor = FRandomColor
        self.refreshControl?.attributedTitle = "正在刷新...".withFont(FFont(14)).withTextColor(FRandomColor)
    }

    // MARK: - 添加上拉加载
    public func addPullUpToRefresh() -> () {

    }
}
