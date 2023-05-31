//
//  SongList2.swift
//  Reso
//
//  Created by R93 on 19/05/23.
//

import UIKit

class SongList2: UIViewController {

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var singerName: UILabel!
    @IBOutlet weak var songName: UILabel!
    var image = UIImage()
    var Song = String()
    var singer = String()
    var time = Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0.0
        img.image = image
        songName.text = "\(Song)"
        singerName.text = "\(singer)"
        progressbar()
    }
    func progressbar()
    {
         var a : Float = 0.0
      
        self.progressBar.progress = a
    
        time = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true, block: { (timer) in
            a += 0.01
            self.progressBar.progress = a
            if self.progressBar.progress == 1.0

            {
                self.navigation()
                self.time.invalidate()
            }
        })
    }
    func navigation()
    {
        let n = storyboard?.instantiateViewController(withIdentifier: "Explore") as! Explore
        navigationController?.popViewController(animated: true)
    }
    
    

}
