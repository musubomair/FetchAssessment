//
//  DessertTableViewCell.swift
//  fetch-assessment
//
//  Created by Musub Omair on 4/25/23.
//

import UIKit

class DessertTableViewCell: UITableViewCell {
    
    @IBOutlet weak var dessertThumbnail: UIImageView!
    @IBOutlet weak var dessertName: UILabel!
    @IBOutlet weak var dessertNameBackdropView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        dessertThumbnail.layer.cornerRadius = 15.0
        dessertNameBackdropView.layer.cornerRadius = 20.0
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
