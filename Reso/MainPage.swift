//
//  MainPage.swift
//  Reso
//
//  Created by R93 on 27/04/23.
//

import UIKit

class MainPage: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
  
    @IBOutlet weak var cv: UICollectionView!
    
    
    var img = [UIImage(named: "31"),UIImage(named: "32"),UIImage(named: "33"),UIImage(named: "34"),UIImage(named: "35"),UIImage(named: "36"),UIImage(named: "37"),UIImage(named: "38"),UIImage(named: "39"),UIImage(named: "40"),UIImage(named: "41"),UIImage(named: "42"),UIImage(named: "43"),UIImage(named: "44"),UIImage(named: "45"),UIImage(named: "46"),UIImage(named: "47"),UIImage(named: "48"),UIImage(named: "49"),UIImage(named: "50")]
    
    var songName = ["Halki Si Barsaat","12 Ladke","Thoda Thoda Pyaar","Leja Leja Re","Malang Sajna","Tera Fitoor","Channa Ve","Ishq Tera","Man Meri Jaan","Bhagat Aadmi","Pal Pal Dil Ke Pass","Rabba Janda","Mast Aankhein","Tum Hi Ho","Rab Manneya","Shiddat","Pehla Pyaar","Maiyaa Mennu","Duniya","Hawa Banke"]
    var lyrics = ["Tumne Humse Vaada Kiya Tha Aayega Jo Savan Toh Aaoge","Main Gym Shym Jaata Hoon Tere Liye Main Body Banata Hoon Tere Liye","तेरी नज़र ने ये क्या कर दिया मुझसे ही मुझको जुदा कर दिया","मुझसे दूर कहीं ना जा बस यहीं कहीं रह जा मैं तेरी दीवानी रे..अफ़सोस तुझे है क्या","Tere Warga Taan Mainu Koyi Dissda Nai Main Taan Laya Bada Dil Kithe Lagda Nai","Tera fitoor jab se chadh gaya re Ishq jo zara sa tha woh badh gaya re","Mere Raanjhanaa Kyun Dikhe Mujhe Tu Sirhane Mere","Mainu pehli pehli vaar ho gaya Haay pehla pehla pyar ho gaya","मैं तेरी आँखों में उदासी कभी देख साकडा नई तुझे खुश मैं रखूँगा सोहनेया मैं तेरे होठों पे खामोशी","Kyu bairi teri khode ye Kabar rahve se Ho meri sari hana tv pe Khabar rahve se","पल पल दिल के पास तुम रहती हो पल पल दिल के पास तुम रहती हो","Hmm.. Ke Rabba Janda Rabba Janda Tainu Kitni Mohabbata Dil Karda","Mast Aankhen Zara Uthao Toh Mujhe Inmein Zara Dubao Toh","Hum tere bin ab reh nahi sakte Tere bina kya wajood mera","Tere Naina Aise Kaafir Kya Chupaun Tujhse Aakhi","Tujhko Bana Doon Main Apna Khuda Aur Sajde Tere Kar Sakun"," Baatein Zaruri Hain Tera Milna Bhi Zaruri","Tujh Bin Rehna Nahi Hona Dekh Tujhe Bas Hai Jeena","Bulaave Tujhe Yaar Aaj Meri Galiyaan Basau Tere Sang Main Alag Duniya","Main zameen tu aasmaan Main daag hoon tu chand sa"]
    
    var time = Timer()
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //progressBar.progress = 0.0
    }
    
    
 
    
        
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell3 = cv.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! MYCollectionViewCell
        cell3.img.image = img[indexPath.row]
        cell3.songNameLabel.text = songName[indexPath.row]
        cell3.lyricsLabel.text = lyrics[indexPath.row]
      //  self.progressBar.progress = 0.0
        //self.progress()
        
       return cell3
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 390, height: 742)
        
    }
//    func progress()
//    {
//
//        var a : Float = 0.0
//        self.progressBar.progress = a
//        time = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (timer) in
//            a += 0.01
//            self.progressBar.progress = a
//            if self.progressBar.progress == 1.0
//            {
//                self.time.invalidate()
//            }
//        })
//
//    }
  
   
       
        
    }
    

    


