//
//  TableViewExtension.swift
//  APP
//
//  Created by funny on 2018/9/3.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit
import SwiftyAttributes
import MJRefresh
import SwiftDate

extension UITableView {

    // static和class 一样都表示类型范围作用域 static包含了final关键字的特性
    static var key: UnsafeRawPointer! {
        return UnsafeRawPointer.init(bitPattern: "UITableView.dataModels.key".hashValue)
    }

    // 数据源
    var dataModels: Array<Any> {

        set {
            objc_setAssociatedObject(self, UITableView.key, newValue, .OBJC_ASSOCIATION_COPY_NONATOMIC)
        }

        get {
            if let ar = objc_getAssociatedObject(self, UITableView.key) as? Array<Any> {
                return ar
            }
            return []
        }
    }

    // MARK: - 去除FooterView
    public func removeTableFooterView() -> () {
        self.tableFooterView = UIView()
    }

    // MARK: - 添加下拉刷新
    public func addPullDownToRefresh() -> () {

        let header: MJRefreshNormalHeader = MJRefreshNormalHeader.init(refreshingTarget: self, refreshingAction: #selector(pullDown))
        header.setTitle("谁在拉我？！", for: MJRefreshState.idle)
        header.setTitle("快松开！", for: MJRefreshState.pulling)
        header.setTitle("这是自由的感觉...", for: MJRefreshState.refreshing)
        header.stateLabel.font = UIFont.fontTheme(12)
        header.lastUpdatedTimeLabel.font = UIFont.fontTheme(12)
        header.isAutomaticallyChangeAlpha = true
        self.mj_header = header
    }

    // MARK: - 添加上拉加载
    public func addPullUpToRefresh() -> () {

        let footer: MJRefreshAutoNormalFooter = MJRefreshAutoNormalFooter.init(refreshingTarget: self, refreshingAction: #selector(pullUp))
        footer.setTitle("别拉我!", for: MJRefreshState.noMoreData)
        footer.isRefreshingTitleHidden = false
        footer.isAutomaticallyChangeAlpha = true
        self.mj_footer = footer;
    }

    // MARK: - 下拉刷新action
    @objc public func pullDown() -> () {

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            self.mj_header.endRefreshing()
        }
    }

    // MARK: - 上拉刷新action
    @objc public func pullUp() -> () {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            self.mj_footer.endRefreshing()
        }
    }
}
