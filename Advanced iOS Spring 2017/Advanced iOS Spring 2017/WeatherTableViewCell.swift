//
//  WeatherTableViewCell.swift
//  Advanced iOS Spring 2017
//
//  Created by Emile Hoyek on 7/9/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var uiImageView: UIImageView!
    @IBOutlet weak var lblCityName: UILabel!
    @IBOutlet weak var lblCityTemp: UILabel!
    override func awakeFromNib() {
        
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
