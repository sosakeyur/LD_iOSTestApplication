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
    @IBOutlet var articalThumbImage: UIImageView!
}

extension MainCellTableViewCell {
    func bind(with viewModel: MainModels.ChildViewModel?) {
        newsTitle.text = viewModel?.title
        articalThumbImage.loadImage(from: "https://b.thumbs.redditmedia.com/OqJY94cOahTur0iqw1rrpnClcZLBaltcXfb_xP46ytw.jpg")
    }
}


