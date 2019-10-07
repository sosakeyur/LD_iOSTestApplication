//
//  NetworkManager.swift
//  SwiftNews
//
//  Created by Admin on 10/7/19.
//  Copyright © 2019 KEYUR SOSA. All rights reserved.
//

import UIKit

let url = URL(string: "https://www.reddit.com/r/swift/.json")

class NetworkManager {
    private let session = URLSession.shared

    func fetchNews<T: Decodable>(completion: @escaping (_ result: T?, _ error: Error?) -> Void) {
        guard let url = url else {
            return
        }

        session.dataTask(with: url) { data, _, _ in
            guard let responseData = data else { return }
            do {
                let jsonObj = try JSONDecoder().decode(T.self, from: responseData)
                completion(jsonObj, nil)
            } catch let jsonErr {
                print("couldn't decode Json response", jsonErr)
                completion(nil, jsonErr)
            }
        }.resume()
    }
}
