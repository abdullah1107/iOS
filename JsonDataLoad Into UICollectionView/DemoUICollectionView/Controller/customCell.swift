//
//  customCell.swift
//  DemoUICollectionView
//
//  Created by Muhammad Abdullah Al Mamun on 21/7/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class customCell: UICollectionViewCell {
    
    @IBOutlet weak var userID: UILabel!
    
    @IBOutlet weak var firstName: UILabel!
    
    @IBOutlet weak var lastName: UILabel!
    
    @IBOutlet weak var email: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
