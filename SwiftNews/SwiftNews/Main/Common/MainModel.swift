//
//  MainModel.swift
//  SwiftNews
//
//  Created by KEYUR SOSA on 10/7/19.
//  Copyright © 2019 KEYUR SOSA. All rights reserved.
//
import UIKit
enum MainModels {
    struct Response {
        var newsModel: NewsModel?
    }

    struct ViewModel {
        let children: [ChildViewModel]
    }

    struct ChildViewModel {
        let title: String
        let selftext: String
        let thumbnail: String?
        var articalImage: UIImage?
    }
}
