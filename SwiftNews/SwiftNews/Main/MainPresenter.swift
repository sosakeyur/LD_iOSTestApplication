//
//  MainPresenter.swift
//  SwiftNews
//
//  Created by Admin on 10/7/19.
//  Copyright © 2019 KEYUR SOSA. All rights reserved.
//

import UIKit

struct MainPresenter: MainPresentable {
    private weak var viewController: MainDisplayable?

    init(viewController: MainDisplayable?) {
        self.viewController = viewController
    }
}

extension MainPresenter {
    func presentFetched(for response: MainModels.Response) {
        guard let newsModel = response.newsModel else {
            return
        }

        let viewModel = MainModels.ViewModel(
            children: newsModel.childrenData.children.map {
                MainModels.ChildViewModel(title: $0.childData.title)
            }
        )
        viewController?.displayFetched(with: viewModel)
    }

    func presentFetched(error: Error?) {
        viewController?.displayFetched(with: "Error in request.")
    }
}
