//
//  ViewController.swift
//  collectionview
//
//  Created by CH 002 on 28/09/22.
//

import UIKit

var foodItems:[String] = ["food","food2","food3","food4"]

class ViewController: UIViewController {
    
 
    @IBOutlet weak var collectionview: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionview.dataSource = self
        collectionview.delegate = self
    }


}
extension UIViewController : UICollectionViewDelegate,UICollectionViewDataSource{
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodItems.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectioncell", for: indexPath) as! customCollectionViewCell
        cell.foodimage.image = UIImage(named: foodItems[indexPath.row])
        return cell
    }
    
    
    
}
