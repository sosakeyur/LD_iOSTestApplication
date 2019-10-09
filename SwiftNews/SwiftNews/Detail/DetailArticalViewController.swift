//
//  DetailArticalViewController.swift
//  SwiftNews
//
//  Created by Admin on 10/7/19.
//  Copyright © 2019 KEYUR SOSA. All rights reserved.
//

import UIKit

class DetailArticalViewController: UIViewController {
    // MARK: - Controls

    @IBOutlet var textArticalTitle: UILabel!
    @IBOutlet var textViewArticalBody: UITextView!
    @IBOutlet var articalImage: UIImageView!

    var newsData: MainModels.ChildViewModel?

    // MARK: - Controller cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        textArticalTitle.text = newsData?.title
        textViewArticalBody.text = newsData?.selftext
        guard let image = newsData?.articalImage else {
            articalImage.isHidden = true
            return
        }
        articalImage.image = image
    }
}
