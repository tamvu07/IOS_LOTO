//
//  NumberCell.swift
//  LOTO
//
//  Created by Tam Vu on 10/05/2024.
//

import UIKit

class NumberCell: UITableViewCell {

    @IBOutlet weak var txtabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(number: String) {
        txtabel.text = number
    }
    
}
