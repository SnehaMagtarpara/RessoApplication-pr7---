//
//  historyPop.swift
//  Reso
//
//  Created by R93 on 17/05/23.
//

import UIKit

class historyPop: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    @IBOutlet weak var popView: UIView!
    
    @IBOutlet weak var cv: UICollectionView!
    var mynev : UINavigationController?
    var image = [UIImage(named:"1.1"),UIImage(named:"1.2"),UIImage(named:"1.3"),UIImage(named:"1.4"),UIImage(named:"1.5")]
    var songName = ["Man Meri Jaan","Jhume Zaamana","Tere Dard Se","Main Woh Chaand","Chand Sifarish"]
    var singerName = ["king","Raj Meena","Kumar Sanu","Darshan Raval","Shaan,Jatin-Lalit,Kailash Kher"]
    override func viewDidLoad() {
        super.viewDidLoad()
        view.alpha = 0
        dismiss(animated: true, completion: nil)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.1, delay: 0, options: .curveLinear){
            self.view.alpha = 1
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "sell", for: indexPath) as! DownloadCell
        cell.img.image = image[indexPath.row]
        cell.songNameLabel.text = songName[indexPath.row]
        cell.singerNameLabel.text = singerName[indexPath.row]
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 374, height: 110)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        navigation(song: songName[indexPath.row], singer: singerName[indexPath.row], image: image[indexPath.row]!)
    }
    
    func navigation(song:String,singer:String,image:UIImage)
    {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "HistoryPopView") as! HistoryPopView
        naviget.Song = song
        naviget.singer = singer
        naviget.image = image
        navigationController?.pushViewController(naviget, animated: true)
    }


}
