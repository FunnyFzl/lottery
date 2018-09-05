//
//  HouseViewController.swift
//  APP
//
//  Created by funny on 2018/7/5.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit
import MJRefresh

class HouseViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Funny"

        setupUI()
    }

    override func setupUI() {

        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellidentiifer")
        view.addSubview(tableView)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 18
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cellidentiifer")
        cell?.contentView.backgroundColor = .red
        cell?.textLabel?.text = "nihaodehdiuwhd"
        return cell!
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let homepage: HomePageViewController = HomePageViewController()
        navigationController?.pushViewController(homepage, animated: true)
    }

    @objc func pullDownToRefresh(sender: UIRefreshControl) -> () {

        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
            self.tableView.freshRefreshControlStyle()
            sender.endRefreshing()
        }
    }


    let tableView: UITableView = {

        let tableView: UITableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: FScreenWidth, height: FScreenHeight), style: .plain)
        tableView.backgroundColor = UIColor.white
        tableView.addPullDownToRefresh()
        tableView.refreshControl?.addTarget(self, action: #selector(pullDownToRefresh), for: .valueChanged)

        return tableView
    }()

}
