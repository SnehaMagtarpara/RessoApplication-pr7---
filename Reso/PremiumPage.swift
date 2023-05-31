//
//  PremiumPage.swift
//  Reso
//
//  Created by R93 on 05/05/23.
//

import UIKit

class PremiumPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var cv: UICollectionView!
    @IBOutlet weak var getPremiumLabel: UILabel!
    var bannerImage = [UIImage(named:"resso 1"),UIImage(named:"resso 2"),UIImage(named:"resso 3"),UIImage(named:"resso 4"),UIImage(named:"resso 5")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getPremiumLabel.layer.cornerRadius = 15
        getPremiumLabel.layer.masksToBounds = true
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bannerImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell4
        cell.bannerImg.image = bannerImage[indexPath.row]
 
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 390, height: 449)
    }
    

  

}
