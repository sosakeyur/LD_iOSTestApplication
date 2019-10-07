//
//  NewsService.swift
//  SwiftNews
//
//  Created by Admin on 10/7/19.
//  Copyright © 2019 KEYUR SOSA. All rights reserved.
//

public struct NewsService {
    public static let service = NewsService()

    private let networkManager = NetworkManager()
}

extension NewsService {
    func fetchNews(completion: @escaping (_ result: NewsModel?, _ error: Error?) -> Void) {
        networkManager.fetchNews(completion: completion)
    }
}
