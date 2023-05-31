//
//  SongList4.swift
//  Reso
//
//  Created by R93 on 19/05/23.
//

import UIKit

class SongList4: UIViewController {

    @IBOutlet weak var singerName: UILabel!
    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var progressBar: UIProgressView!
    
    var time = Timer()
    var image = UIImage()
    var Song = String()
    var singer = String()
    override func viewDidLoad() {
        super.viewDidLoad()
         
        img.image = image
        songName.text = "\(Song)"
        singerName.text = "\(singer)"
        progressBar.progress == 0.0
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
