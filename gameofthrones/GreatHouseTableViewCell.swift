//
//  GreatHouseTableViewCell.swift
//  gameofthrones
//
//  Created by Arystan on 01.12.2024.
//

import UIKit
import SDWebImage

class GreatHouseTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var regionLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var pictureImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        pictureImageView.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setData(greatHouse: GreatHouse) {
        nameLabel.text = greatHouse.name
        regionLabel.text = greatHouse.region
        locationLabel.text = greatHouse.location
        
        pictureImageView.sd_setImage(with: URL(string: greatHouse.picture))
    }

}
