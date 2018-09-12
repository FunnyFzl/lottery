//
//  MainViewController.swift
//  APP
//
//  Created by funny on 2018/7/5.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = UIDevice.appName()


        setupUI()
    }

    override func setupUI() {

        view.addSubview(tableView)
    }


    let tableView: MainTableView = {

        let tableView: MainTableView = MainTableView.init(frame: CGRect.init(x: 0, y: 0, width: FScreenWidth, height: FScreenHeight), style: .plain)
        tableView.backgroundColor = UIColor.white
        
        return tableView
    }()

}
