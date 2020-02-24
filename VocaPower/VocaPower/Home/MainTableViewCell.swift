//
//  MainTableViewCell.swift
//  VocaPower
//
//  Created by Rubaiyat Jahan Mumu on 2020-02-16.
//  Copyright © 2020 Rubaiyat Jahan Mumu. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var TextLabel: UILabel!
    @IBOutlet weak var headerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        layer.masksToBounds = false // shadow radius
    }
    
}

class RoundedView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        layer.cornerRadius = 10
        layer.masksToBounds = true
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        layer.cornerRadius = 10
        layer.masksToBounds = true
    }
}
