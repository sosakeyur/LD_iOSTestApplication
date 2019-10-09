//
//  Extensions.swift
//  SwiftNews
//
//  Created by Admin on 10/7/19.
//  Copyright © 2019 KEYUR SOSA. All rights reserved.
//

import UIKit

extension UIImageView {
    func loadImage(from stringUrl: String?, completion: @escaping (_ result: Bool) -> Void) {
        guard let link = stringUrl, let url = URL(string: link) else {
            completion(true)
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data: data)
            else {
                completion(true)
                return
            }
            DispatchQueue.main.async {
                completion(false)
                self.image = image
            }
        }.resume()
    }
}
