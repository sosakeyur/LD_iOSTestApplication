//
//  MainModel.swift
//  SwiftNews
//
//  Created by KEYUR SOSA on 10/7/19.
//  Copyright © 2019 KEYUR SOSA. All rights reserved.
//

enum MainModels {
    struct Response {
        let newsModel: NewsModel?
    }

    struct ViewModel {
        let children: [ChildViewModel]
    }

    struct ChildViewModel {
        let title: String
    }
}
