
//  Created by Muhammad Abdullah Al Mamun on 7/8/18.
//  Copyright © 2018 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let data: [MemeModel] = [MemeModel(image: #imageLiteral(resourceName: "MockingSpongebob"), name: "Mocking Spongebob"),
                             MemeModel(image: #imageLiteral(resourceName: "Drake"), name: "Drake"),
                             MemeModel(image: #imageLiteral(resourceName: "DatBoi"), name: "Dat boi"),
                             MemeModel(image: #imageLiteral(resourceName: "ExpandingBrain"), name: "Expanding Brain")]

    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //collectionView Delegate Method
        collectionView.dataSource = self
        collectionView.delegate = self
        
        //Register a nib File
        collectionView.register(UINib.init(nibName: "MemeCell", bundle: nil), forCellWithReuseIdentifier: "MemeCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCell", for: indexPath) as! MemeCell
        
        //call the configure method for set the data
        cell.configure(with: data[indexPath.row])
        return cell
    }
}

