//
//  ReceiptTableViewCell.swift
//  InVisionSwift
//
//  Created by Manas Mishra on 02/06/17.
//  Copyright © 2017 Manas Mishra. All rights reserved.
//

import UIKit

class ReceiptTableViewCell: UITableViewCell {

    @IBOutlet weak var itemPrice: UILabel!
    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemSerialNumber: UILabel!
    @IBOutlet weak var numberOfItem: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
