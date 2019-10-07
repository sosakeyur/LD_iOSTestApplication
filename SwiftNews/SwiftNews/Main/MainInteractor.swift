//
//  MainInteractor.swift
//  SwiftNews
//
//  Created by Admin on 10/7/19.
//  Copyright © 2019 KEYUR SOSA. All rights reserved.
//

struct MainInteractor: MainInterface {
    private let presenter: MainPresentable
    private let service = NewsService()

    init(presenter: MainPresentable) {
        self.presenter = presenter
    }
}

extension MainInteractor {
    func fetchNews() {
        service.fetchNews { response, error in

            guard error == nil else {
                return self.presenter.presentFetched(error: error)
            }

            let response = MainModels.Response(newsModel: response)
            self.presenter.presentFetched(for: response)
        }
    }
}
