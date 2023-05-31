//
//  ChooseArtists.swift
//  Reso
//
//  Created by R93 on 26/04/23.
//

import UIKit

class ChooseArtists: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    
    @IBOutlet weak var cv: UICollectionView!
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var nextButton: UIButton!
    
    var img = [UIImage(named:"11"),UIImage(named:"12"),UIImage(named:"13"),UIImage(named:"14"),UIImage(named:"15"),UIImage(named:"16"),UIImage(named:"17"),UIImage(named:"18"),UIImage(named:"19"),UIImage(named:"20"),UIImage(named:"21"),UIImage(named:"22"),UIImage(named:"23"),UIImage(named:"24"),UIImage(named:"25"),UIImage(named:"26"),UIImage(named:"27"),UIImage(named:"28"),UIImage(named:"29")]
    
       var name = ["Arijit Singh","Rahat Fateh ali Khan","Tonny Kakkar","Ali aslam","Dhvani Bhanushali","Akjhil","Raftaar","Jassie Gill","Shreya Ghoshal","Diljit Dosanjh","Mollind Gaba","Jubin Nautiyal","Honet Singh","Neha Kakkar","Badshah","Daeshal Rawal","King","MC Stan","Alka Yagnik"]
    
    var selectcell = -1
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.layer.cornerRadius = 20
        nextButton.isHidden = true
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell2 = cv.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell2
        cell2.img.image = img[indexPath.row]
        cell2.nameLabel.text = name[indexPath.row]
        cell2.img.layer.cornerRadius = cell2.img.frame.size.width/2
        if selectcell == indexPath.row
        {
            cell2.img2.image = UIImage(systemName: "heart.circle.fill")
        }
        else
        {
            cell2.img2.image = UIImage(systemName: "heart.circle")
        }
        return cell2
        return cell2
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectcell = indexPath.row
        cv.reloadData()
        nextButton.isHidden = false
    }
    
    
       
    @IBAction func nextButtonAction(_ sender: Any) {
        
        let n = storyboard?.instantiateViewController(withIdentifier: "TabBar") as! TabBar
        navigationController?.pushViewController(n, animated: true)
    }
    
}
