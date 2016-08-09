//
//  DetailVC.swift
//  CustomizeTableViewCellByNib
//
//  Created by HuuLuong on 8/1/16.
//  Copyright © 2016 CanhDang. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {

    
    @IBOutlet weak var imageView2: UIImageView!
    
    @IBOutlet weak var imageVIew3: UIImageView!
    
    var stringTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = stringTitle
        imageView2.image = UIImage(named: "\(stringTitle)2.jpg")
        imageVIew3.image = UIImage(named: "\(stringTitle)3.jpg")
    
    }
}
