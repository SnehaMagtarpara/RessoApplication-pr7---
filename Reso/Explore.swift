//
//  Explore.swift
//  Reso
//
//  Created by R93 on 09/05/23.
//

import UIKit

class Explore: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    
   
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var cv3: UICollectionView!
    @IBOutlet weak var cv2: UICollectionView!
    @IBOutlet weak var cv7: UICollectionView!
    @IBOutlet weak var cv6: UICollectionView!
    @IBOutlet weak var cv5: UICollectionView!
    @IBOutlet weak var cv4: UICollectionView!
    @IBOutlet weak var cv: UICollectionView!
    @IBOutlet weak var songcatchlabel: UILabel!
    
    @IBOutlet weak var cv8: UIView!
    
    
    
    
    var image = [UIImage(named:"1.1"),UIImage(named:"1.2"),UIImage(named:"1.3"),UIImage(named:"1.4"),UIImage(named:"1.5")]
    var songName = ["Man Meri Jaan","Jhume Zaamana","Tere Dard Se","Main Woh Chaand","Chand Sifarish"]
    var singerName = ["king","Raj Meena","Kumar Sanu","Darshan Raval","Shaan,Jatin-Lalit,Kailash Kher"]
    
    var image2 = [UIImage(named:"2.1"),UIImage(named:"2.2"),UIImage(named:"2.3"),UIImage(named:"2.4"),UIImage(named:"2.5")]
    var songName2 = ["Apna Bana Le","Thoda Thoda Pyar","Naiyo Lagda","Bholenath(A Love Story)","Chori Chori Dil Tera"]
    var singername2 = ["Arijit Singh","Arijit Singh,Sachin-Jigar","Stebin Ben,Nilesh Ahuja, Kumar Sanu","Kaka WRLD","Anurati Roy"]
    
    var image3 = [UIImage(named:"3.1"),UIImage(named:"3.2"),UIImage(named:"3.3"),UIImage(named:"3.4"),UIImage(named:"3.5")]
    var songName3 = ["Paa Liya hain Pyar Tera","Aaja We Mahiya(lofi)","Bhaad Yaara(Slowed...)","Bheed Mein Tanhaai Main","Safar(Lofi)"]
    var singername3 = ["Udit Narayan,Alka Yagnik","Sahel Ahmed","Angad Ji","Gopi Saini,Himanshu Bairwa","wtfsagar"]

    var img4 = [UIImage(named:"4.1"),UIImage(named:"4.2"),UIImage(named:"4.3"),UIImage(named:"4.4"),UIImage(named:"4.5"),UIImage(named:"4.6"),UIImage(named:"4.7"),UIImage(named:"4.8"),UIImage(named:"4.9"),UIImage(named:"4.10"),]
    var song4 = ["Retro Gold","OOs Hip Hop","Punjabi Pop 2010s","90s Bollwwood","Classc R&B 2010s","Tamil Retro Hits","Unfading 90s","90s Tamil Chill","Mollywood Romance","Gujarati"]
    var singer4 = ["Kumar Sanu,Alka Yagnik","Raftar","Diljit Disanjh,Param Singh","Lata Mangeshkar","Kesarabai Kerkar","Amrinder Gill","Mano,Unni Menon","Radhika Thailak,K.J.","Unni Menon,Sujath","Haricharan,Shahab"]
    
    var img5 = [UIImage(named:"5.1"),UIImage(named:"5.2"),UIImage(named:"5.3"),UIImage(named:"5.4"),UIImage(named:"5.5"),UIImage(named:"5.6"),UIImage(named:"5.7"),UIImage(named:"5.8"),UIImage(named:"5.9"),UIImage(named:"6.0")]
    
    var songName5 = ["Golden Era","Bollywood Party","Retro Gold","90s Bollywood","70s Bollywood","Mathudi Dixit","90s Bollywood Hits","90s Sad Song","80s Bollywood","Salman Kham"]
    var singerName5 = ["Curated by Resso","Naksh Aziz, Viashl","Vishal-Shekhar,Nikhil","Amit Kumar","Suresh Wadkar","Sadhana Sargam","Vishal-Shekhar","saDhana Sargam","Sadhna Saegam","Nikhil"]
    
    var img6 = [UIImage(named:"6.1"),UIImage(named:"6.2"),UIImage(named:"6.3"),UIImage(named:"6.4"),UIImage(named:"6.5"),UIImage(named:"6.6"),UIImage(named:"6.7"),UIImage(named:"6.8"),UIImage(named:"6.9"),UIImage(named:"7.0")]
    var singerName6 = ["King,KingThe beatz","Dino James,Kaprila","MC Stan,MC Altaf","Arijit Singh","KE$NA,Fotty Seven","DIVINE,MC Altaf","Harnoor,Karan Randhwa","Bali,Fotty Seven,Dj Karan","Emiway Bantai,Yo Yo Honet Singh","AP Dhilon,intense,Gurinder Gill"]
    
    var im1 = [UIImage(named:"11.1"),UIImage(named:"11.1")]
    var songname7 = ["Apna Bana Le","Apna Bana Le"]
    var singerName7 = ["Arijit Singh,Sachin-jigar","Arijit Singh,Sachin-jigar"]
    
    var im2 = [UIImage(named:"11.2"),UIImage(named:"11.2")]
    var songname8 = ["Malang Sajna","Malang Sajna"]
    var singerName8 = ["Sachet  Tandon","Sachet  Tandon"]
    
    var im3 = [UIImage(named:"11.3"),UIImage(named:"11.3")]
    var songName9 = ["Kahani Suno2.0","O Bedardeya"]
    var singername9 = ["Kaifi Khali","Pritam,Arijit Singh"]
    
    var image7 = [UIImage(named:"7.1"),UIImage(named:"7.2"),UIImage(named:"7.3"),UIImage(named:"7.4"),UIImage(named:"7.5"),UIImage(named:"7.6"),UIImage(named:"7.7"),UIImage(named:"7.8"),UIImage(named:"7.9"),UIImage(named:"8.0")]
    var song7 = ["Dholida","Prityu No Rang","Valam Aavo Ne","Dhun Lagi","Chand Ne Kaho","Ude Re Gulal","Pa Pa Pagli","Holi Avi", "Valida","Mahahetvali"]
   
    var image8 = [UIImage(named:"8.1"),UIImage(named:"8.2"),UIImage(named:"8.3"),UIImage(named:"8.4"),UIImage(named:"8.5"),UIImage(named:"8.6"),UIImage(named:"8.7"),UIImage(named:"8.8"),UIImage(named:"8.9"),UIImage(named:"9.0")]
    var song8 = ["Top Hits Malayalam","Breakup Malayalam","Adipoli Dance Hits","New in Malayalam","Unfading 10s malayalam","Drive Poyalo","top Hits Mollywood","90s Romantic Malayalam","Chill Cheyyu Aliya","Malayalam Indie& Romantic"]
    var singer8 = ["Sachin Warrier","Sujatha,Shreya Ghoshal","Rimi Tomy","Haricharan","Sachin Warrier","Mohanlal,Tippu","Sachin Warrier","G Venugopal","G Venugopal","Shreya Ghoshal"]
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        songcatchlabel.layer.cornerRadius = 22
        songcatchlabel.layer.masksToBounds = true
        button.layer.borderColor = UIColor.gray.cgColor
        button.layer.cornerRadius = 15
        button.layer.masksToBounds = true
        button.layer.borderWidth = 2
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cv
        {
            return image.count
        }
        else if collectionView == self.cv2{
            return img4.count
        }
        else if collectionView == self.cv3
        {
            return img5.count
        }
        else if collectionView == self.cv4
        {
            return img6.count
        }
        else if collectionView == self.cv5
        {
            return im1.count
            
        }
        else if collectionView == self.cv6
        {
            return image7.count
        }
        else
        {
            return image8.count
        }
      
        
      
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.cv
        {
            let cell4 = cv.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath) as! CollectionViewCell5
                    cell4.img.image = image[indexPath.row]
                    cell4.songName.text = songName[indexPath.row]
                    cell4.singername.text = singerName[indexPath.row]
                
                    cell4.img2.image = image2[indexPath.row]
                    cell4.songNameLabel2.text = songName2[indexPath.row]
                    cell4.singerNameLabel2.text = singername2[indexPath.row]
                
                    cell4.img3.image = image3[indexPath.row]
                    cell4.songNamelabel3.text = songName3[indexPath.row]
                    cell4.singerNameLabel3.text = singername3[indexPath.row]
            
                return cell4
            
        }
        else if collectionView == self.cv2
        {
            let cell5 = cv2.dequeueReusableCell(withReuseIdentifier: "cell5", for: indexPath) as! CollectionViewCell6
                    cell5.img4.image = img4[indexPath.row]
                    cell5.song4.text = song4[indexPath.row]
                    cell5.singer4.text = singer4[indexPath.row]
            
            return cell5
        }
        else if collectionView == self.cv3
        {
            let cell6 = cv3.dequeueReusableCell(withReuseIdentifier: "cell6", for: indexPath) as! CollectionViewCell7
                    cell6.img5.image = img5[indexPath.row]
                    cell6.song5.text = songName5[indexPath.row]
                    cell6.singer5.text = singerName5[indexPath.row]
            
            return cell6
            
        }
        else if collectionView == self.cv4
        {
            let cell7 = cv4.dequeueReusableCell(withReuseIdentifier: "cell7", for: indexPath) as! CollectionViewCell8
                    cell7.img6.image = img6[indexPath.row]
                    cell7.singerName6.text = singerName6[indexPath.row]
            
            return cell7
            
        }
        else if collectionView == self.cv5
        {
            let cell8 = cv5.dequeueReusableCell(withReuseIdentifier: "cell8", for: indexPath) as! CollectionViewCell9
                    cell8.im1.image = im1[indexPath.row]
                    cell8.SongName7.text = songname7[indexPath.row]
                    cell8.singerName7.text = singerName7[indexPath.row]
            cell8.im2.image = im2[indexPath.row]
            cell8.songName8.text = songname8[indexPath.row]
            cell8.singerName8.text = singerName8[indexPath.row]
            cell8.im3.image = im3[indexPath.row]
            cell8.songname9.text = songName9[indexPath.row]
            cell8.singerName9.text = singername9[indexPath.row]
                   
            return cell8
            
        }
        else if collectionView == self.cv6
        {
            let cell9 = cv6.dequeueReusableCell(withReuseIdentifier: "cell9", for: indexPath) as! CollectionViewCell10
            cell9.image1.image = image7[indexPath.row]
            cell9.songName10.text = song7[indexPath.row]
           
            return cell9
            
        }
        else
        {
            let cell10 = cv7.dequeueReusableCell(withReuseIdentifier: "cell10", for: indexPath) as! CollectionViewCell11
            cell10.image8.image = image8[indexPath.row]
            cell10.songnameLabel8.text = song8[indexPath.row]
            cell10.singerNameLabel8.text = singer8[indexPath.row]
           
            return cell10
            
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.cv
        {
            return CGSize(width: 373, height: 312)
        }
        else if collectionView == self.cv2{
            return CGSize(width: 147, height: 186)
        }
        else if collectionView == self.cv3
        {
            return CGSize(width: 147, height: 186)
        }
        else if collectionView == self.cv4
        {
            return CGSize(width: 147, height: 186)
        }
        else if collectionView == self.cv5
        {
            return CGSize(width: 373, height: 312)
        }
        else if collectionView == self.cv6
        {
            return CGSize(width: 147, height: 165)
            
        }
        else
        {
            return CGSize(width: 147, height: 186)
        }
        
    
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == self.cv
        {
            navigation(song: songName[indexPath.row], singer: singerName[indexPath.row], dataimage: image[indexPath.row]!)
           
        }
        else if collectionView == self.cv2{
            navigation(song2: song4[indexPath.row], singer2: singer4[indexPath.row], image2: img4[indexPath.row]!)
        }
        else if collectionView == self.cv3
        {
            navigation(song3: songName5[indexPath.row], singer3: singerName5[indexPath.row], image3: img5[indexPath.row]!)
        }
        else if collectionView == self.cv4
        {
            navigation(singer4: singerName6[indexPath.row], image4: img6[indexPath.row]!)
        }
        else if collectionView == self.cv5
        {
            navigation(song5:songname7[indexPath.row] , singer5: singerName7[indexPath.row], image5: im1[indexPath.row]!, song0: songname8[indexPath.row], singer0: singerName8[indexPath.row], image0: im2[indexPath.row]!, song00: songName9[indexPath.row], singer00: singername9[indexPath.row], image00: im3[indexPath.row]!)
        }
        else if collectionView == self.cv6
        {
            navigation(song6: song7[indexPath.row], image6: image7[indexPath.row]!)
            
        }
        else
        {
            navigation(song7: song8[indexPath.row], singer7: singer8[indexPath.row], image7: image8[indexPath.row]!)
           
        }
        
       
    }
   
    func navigation(song:String,singer:String,dataimage:UIImage)
    {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "SongList1") as! SongList1
        naviget.Song = song
        naviget.singer = singer
        naviget.image = dataimage
      
        navigationController?.pushViewController(naviget, animated: true)
    } 
    
    
    func navigation(song2:String,singer2:String,image2:UIImage)
    {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "SongList2") as! SongList2
        naviget.Song = song2
        naviget.singer = singer2
        naviget.image = image2
        navigationController?.pushViewController(naviget, animated: true)
    }
    func navigation(song3:String,singer3:String,image3:UIImage)
    {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "SongList3") as! SongList3
        naviget.Song = song3
        naviget.singer = singer3
        naviget.image = image3
        navigationController?.pushViewController(naviget, animated: true)
    }
    func navigation(singer4:String,image4:UIImage)
    {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "SongList4") as! SongList4
        
        naviget.singer = singer4
        naviget.image = image4
        navigationController?.pushViewController(naviget, animated: true)
    }
    func navigation(song5:String,singer5:String,image5:UIImage,song0:String,singer0:String,image0:UIImage,song00:String,singer00:String,image00:UIImage)
    {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "SongList5") as! SongList5
        naviget.Song = song5
        naviget.singer = singer5
        naviget.image = image5
        
        naviget.Song = song0
        naviget.singer = singer0
        naviget.image = image0
        
        naviget.Song = song00
        naviget.singer = singer00
        naviget.image = image00
        navigationController?.pushViewController(naviget, animated: true)
    }
    func navigation(song6:String,image6:UIImage)
    {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "SongList6") as! SongList6
        naviget.Song = song6
        naviget.image = image6
        navigationController?.pushViewController(naviget, animated: true)
    }
    func navigation(song7:String,singer7:String,image7:UIImage)
    {
        let naviget = storyboard?.instantiateViewController(withIdentifier: "SongList7") as! SongList7
        naviget.Song = song7
        naviget.singer = singer7
        naviget.image = image7
        navigationController?.pushViewController(naviget, animated: true)
    }
    

}
