//
//  DataItem.swift
//  CustomizeTableViewCellByNib
//
//  Created by HuuLuong on 8/1/16.
//  Copyright © 2016 CanhDang. All rights reserved.
//

import UIKit

class DataItem {
    var imageMovieLogo: UIImage!
    var imageStarRating: UIImage!
    var movieName: String!
    var officialSite: String!
    init(imgMovieLogo: String, imgStarRating: Float, nameMovie: String, officialSite: String) {
        self.imageMovieLogo = UIImage(named: "\(imgMovieLogo).jpg")
        self.imageStarRating = UIImage(named: "\(imgStarRating)stars.png")
        self.movieName = nameMovie
        self.officialSite = officialSite 
    }
}
