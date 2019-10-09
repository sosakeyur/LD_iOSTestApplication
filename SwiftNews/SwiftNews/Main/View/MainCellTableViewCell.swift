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
    func bind(with viewModel: MainModels.ChildViewModel?, completion: @escaping (_ result: UIImage?) -> Void) {
        newsTitle.text = viewModel?.title
        articalThumbImage.loadImage(from: viewModel?.thumbnail, completion: { result in
            DispatchQueue.main.async {
                self.articalThumbImage.isHidden = result
                if result == false {
                    completion(self.articalThumbImage.image)
                }
            }
        })
    }
}
