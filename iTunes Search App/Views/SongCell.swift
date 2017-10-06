//
//  SongCell.swift
//  iTunes Search App
//
//  Created by Marcin Pietrzak on 07.10.2017.
//  Copyright © 2017 Marcin Pietrzak. All rights reserved.
//

import UIKit

class SongCell: UITableViewCell {
    
    static let reuseIdentifier = "SongCell"

    @IBOutlet weak var songeTitleLabel: UILabel!
    @IBOutlet weak var songRuntimeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
