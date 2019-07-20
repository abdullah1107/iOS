
//  Created by Muhammad Abdullah Al Mamun on 7/8/18.
//  Copyright © 2018 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class MemeCell: UICollectionViewCell {

    @IBOutlet var image: UIImageView!
    @IBOutlet var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with model: MemeModel) {
        image.image = model.image
        name.text = model.name
    }
}
