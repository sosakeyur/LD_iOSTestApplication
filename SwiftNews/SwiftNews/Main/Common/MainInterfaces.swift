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
    func presentFetched(for response:)
}
