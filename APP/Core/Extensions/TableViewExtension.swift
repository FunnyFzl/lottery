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
        header.stateLabel.textColor = UIColor.random
        header.lastUpdatedTimeLabel.font = UIFont.themeFont(12)
        header.lastUpdatedTimeLabel.textColor = UIColor.random
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
