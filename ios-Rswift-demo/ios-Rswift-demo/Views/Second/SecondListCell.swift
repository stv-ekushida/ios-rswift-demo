//
//  SecondListCell.swift
//  ios-Rswift-demo
//
//  Created by OkuderaYuki on 2017/04/13.
//  Copyright © 2017年 YukiOkudera. All rights reserved.
//

import UIKit

class SecondListCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var message1Label: UILabel!
    @IBOutlet weak var message2Label: UILabel!
    @IBOutlet weak var message3Label: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var starButton: UIButton!
    
    var item: SecondListCellItem? {
        didSet {
            titleLabel.text = item?.title
            
            message1Label.text = item?.message1
            message2Label.text = item?.message2
            message3Label.text = item?.message3
            if let newImage = item?.image {
                cellImageView.image = newImage
            }
        }
    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
    
    @IBAction func didTapStar(_ sender: Any) {
        print("didTapStar")
        starButton.isSelected = !starButton.isSelected
    }
    
}
