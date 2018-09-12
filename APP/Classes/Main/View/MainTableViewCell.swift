//
//  MainTableViewCell.swift
//  APP
//
//  Created by funny on 2018/9/6.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupUI()
    }

    override func setupUI() {

        contentView.addSubview(titleLabel)
    }

    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = UIFont.fontTheme(35)
        titleLabel.textColor = UIColor.init(51, 51, 51, 1)
        titleLabel.textAlignment = .center
        return titleLabel
    }()

    override func layoutSubviews() {
        super.layoutSubviews()
        titleLabel.frame = contentView.bounds
    }


    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
