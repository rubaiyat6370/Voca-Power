//
//  BookLessionCell.swift
//  VocaPower
//
//  Created by Rubaiyat Jahan Mumu on 2020-02-24.
//  Copyright © 2020 Rubaiyat Jahan Mumu. All rights reserved.
//

import UIKit

class BookLessionCell: UITableViewCell {

    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var lessionNoLabel: UILabel!
    @IBOutlet weak var wordCountLabel: UILabel!
    @IBOutlet weak var progressColorView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        contentView.layer.borderWidth = 1.5
        contentView.layer.borderColor = AppConstants.themeColor.cgColor
        contentView.layer.cornerRadius = 2.0
        contentView.layer.masksToBounds = false
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    @IBAction func studyLessionPressed(_ sender: Any) {
    }

    @IBAction func startQuizPressed(_ sender: Any) {
    }
}
