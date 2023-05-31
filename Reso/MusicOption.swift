//
//  MusicOption.swift
//  Reso
//
//  Created by R93 on 24/04/23.
//

import UIKit

class MusicOption: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout  {
    
    @IBOutlet weak var cv: UICollectionView!
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    var img = [UIImage(named:"1"),UIImage(named:"2"),UIImage(named:"3"),UIImage(named:"4"),UIImage(named:"5"),UIImage(named:"6"),UIImage(named:"7"),UIImage(named:"8"),UIImage(named:"9"),UIImage(named:"10"),UIImage(named:"11"),UIImage(named:"12")]
    var name = ["English","Hindi","Punjabi","Tamil","Telugu","Malayam","kannada","Bhojpuri","Harynavi","Brmgali","Marathi","Gujarati"]
    var selectcell = -1

    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.layer.cornerRadius = 20
        nextButton.isHidden = true
    }
    
    
    @IBAction func nextButtonAction(_ sender: Any) {
        
        let n = storyboard?.instantiateViewController(withIdentifier: "ChooseArtists") as! ChooseArtists
        navigationController?.pushViewController(n, animated: true)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.img.image = img[indexPath.row]
        cell.label.text = name[indexPath.row]
        
        if selectcell == indexPath.row
        {
            cell.radioImage.image = UIImage(systemName: "circle.fill")
        }
        else
        {
            cell.radioImage.image = UIImage(systemName: "circle")
        }
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        nextButton.isHidden = false
        selectcell = indexPath.row
        cv.reloadData()
        
    }
    
    
    
    
}

