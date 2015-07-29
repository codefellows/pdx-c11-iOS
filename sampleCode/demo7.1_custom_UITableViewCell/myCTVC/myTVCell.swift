//  myTVCell.swift
//  myCTVC
//
//  Created by Al on 7/21/15.
//  Copyright (c) 2015 Al. All rights reserved.
import UIKit

class myTVCell: UITableViewCell {

    @IBOutlet weak var myImgView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myDetails: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
