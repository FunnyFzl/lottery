//
//  MainTableView.swift
//  APP
//
//  Created by funny on 2018/9/6.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit

class MainTableView: UITableView, UITableViewDelegate, UITableViewDataSource {

    static let identifier = "MainTableViewCellIdentifier"

    override init(frame: CGRect, style: UITableViewStyle) {
        super.init(frame: frame, style: style)

        self.removeTableFooterView()

        dataModels = ["算彩票","算运势","算星座","算天气"]

        //下拉刷新
        self.addPullDownToRefresh()

        self.rowHeight = (frame.size.height - self.contentInset.bottom - self.contentInset.top) / 4

        self.register(MainTableViewCell.self, forCellReuseIdentifier: MainTableView.identifier)

        self.delegate = self
        self.dataSource = self


    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModels.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell: MainTableViewCell = tableView.dequeueReusableCell(withIdentifier: MainTableView.identifier) as! MainTableViewCell
        cell.titleLabel.text = dataModels[indexPath.row] as? String
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
