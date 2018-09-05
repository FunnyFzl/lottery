//
//  HouseViewController.swift
//  APP
//
//  Created by funny on 2018/7/5.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit

class HouseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Funny"

        setupUI()
    }

    override func setupUI() {

        view.addSubview(tableView)
    }


    let tableView: UITableView = {

        let tableView: UITableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: FScreenWidth, height: FScreenHeight), style: .plain)
        tableView.backgroundColor = UIColor.white
        tableView.addPullDownToRefresh()
        return tableView
    }()

}
