//
//  NewsModel.swift
//  SwiftNews
//
//  Created by Admin on 10/7/19.
//  Copyright © 2019 KEYUR SOSA. All rights reserved.
//

public struct NewsModel: Decodable {
    let kind: String
    let childrenData: ChildrenData
}

extension NewsModel {
    private enum CodingKeys: String, CodingKey {
        case kind
        case childrenData = "data"
    }
}

struct ChildrenData: Decodable {
    let children: [Child]

    enum CodingKeys: String, CodingKey {
        case children
    }
}

struct Child: Decodable {
    let childData: ChildData

    enum CodingKeys: String, CodingKey {
        case childData = "data"
    }
}

//
struct ChildData: Decodable {
    let title: String
    let selftext: String
    let thumbnail: String

    enum CodingKeys: String, CodingKey {
        case title
        case selftext
        case thumbnail
    }
}
