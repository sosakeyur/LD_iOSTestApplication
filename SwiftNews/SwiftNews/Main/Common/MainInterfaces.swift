//
//  MainInterfaces.swift
//  SwiftNews
//
//  Created by KEYUR SOSA on 10/7/19.
//  Copyright © 2019 KEYUR SOSA. All rights reserved.
//

protocol MainInterface {
    func fetchNews()
}

protocol MainPresentable {
    func presentFetched(for response: MainModels.Response)
    func presentFetched(error: Error?)
}

protocol MainDisplayable: class { // Controller
    func displayFetched(with viewModel: MainModels.ViewModel)
    func displayFetched(with error: String)
}

protocol HomeRoutable { // Router
    func navigateToDetail(with segueId: String, newsData: MainModels.ChildViewModel?)
}
