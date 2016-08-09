//
//  TableViewCell.swift
//  CustomizeTableViewCellByNib
//
//  Created by HuuLuong on 8/1/16.
//  Copyright © 2016 CanhDang. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var image_movieLogo: UIImageView!
    
    @IBOutlet weak var lbl_movieName: UILabel!
    
    @IBOutlet weak var image_starRating: UIImageView!
    
    @IBOutlet weak var lbl_officialSite: UILabel!
//    
//    required init?(coder aDecoder: NSCoder) {
//    
//        super.init(coder: aDecoder)
//    
//        
//    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    
    func cellHeight() -> CGFloat {
        return self.contentView.bounds.height
    }
    

    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
