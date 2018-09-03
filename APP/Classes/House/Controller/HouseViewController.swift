//
//  HouseViewController.swift
//  APP
//
//  Created by funny on 2018/7/5.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit
import MJRefresh

class HouseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Funny"

        setupUI()

    }

    override func setupUI() {

        let tableView: UITableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: FScreenWidth, height: FScreenHeight - 64 - 49), style: .plain)
        tableView.addPullDownToRefresh()
        tableView.refreshControl?.addTarget(self, action: #selector(pullDownToRefresh), for: .valueChanged)

        view.addSubview(tableView)
    }

    @objc func pullDownToRefresh(sender: UIRefreshControl) -> () {

        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            sender.endRefreshing()
        }
    }
}
