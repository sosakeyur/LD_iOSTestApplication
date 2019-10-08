//
//  DetailArticalViewController.swift
//  SwiftNews
//
//  Created by Admin on 10/7/19.
//  Copyright © 2019 KEYUR SOSA. All rights reserved.
//

import UIKit

class DetailArticalViewController: UIViewController {
    
    // MARK: - Controls
    @IBOutlet var textArticalTitle: UILabel!
    @IBOutlet var textArticalBody: UILabel!
    @IBOutlet var textViewArticalBody: UITextView!
    @IBOutlet weak var atrticalImage: UIImageView!

    var newsData: MainModels.ChildViewModel?
   
    
    // MARK: - Controller cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        textArticalTitle.text = newsData?.title
        textViewArticalBody.text = newsData?.selftext
        atrticalImage.loadImage(from: "https://b.thumbs.redditmedia.com/OqJY94cOahTur0iqw1rrpnClcZLBaltcXfb_xP46ytw.jpg")
    }
    

    /*
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
     }
     */
}
extension String {
    var htmlToAttributedString: NSAttributedString? {
        guard let data = data(using: .utf8) else { return NSAttributedString() }
        do {
            return try NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html, .characterEncoding:String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch {
            return NSAttributedString()
        }
    }
    var htmlToString: String {
        return htmlToAttributedString?.string ?? ""
    }
}

