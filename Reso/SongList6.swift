//
//  SongList6.swift
//  Reso
//
//  Created by R93 on 19/05/23.
//

import UIKit

class SongList6: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var singerName: UILabel!
    @IBOutlet weak var songNmae: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var time = Timer()
    var image = UIImage()
    var Song = String()
    var singer = String()
    override func viewDidLoad() {
        super.viewDidLoad()

        img.image = image
        songNmae.text = "\(Song)"
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
