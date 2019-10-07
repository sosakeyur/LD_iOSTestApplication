//
//  MainCellTableViewCell.swift
//  SwiftNews
//
//  Created by Admin on 10/7/19.
//  Copyright © 2019 KEYUR SOSA. All rights reserved.
//

import UIKit

class MainCellTableViewCell: UITableViewCell {
    @IBOutlet var newsTitle: UILabel!
}

extension MainCellTableViewCell {
    func bind(with viewModel: MainModels.ChildViewModel?) {
        newsTitle.text = viewModel?.title
    }
}
