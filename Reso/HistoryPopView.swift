//
//  HistoryPopView.swift
//  Reso
//
//  Created by R93 on 23/05/23.
//

import UIKit

class HistoryPopView: UIViewController {

    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var singername: UILabel!
    @IBOutlet weak var songName: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    var time = Timer()
    var image = UIImage()
    var Song = String()
    var singer = String()
    override func viewDidLoad() {
        super.viewDidLoad()
       
        img.image = image
        songName.text = "\(Song)"
        singername.text = "\(singer)"
        progressBar.progress = 0.0
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
        let n = storyboard?.instantiateViewController(withIdentifier: "historyPop") as! historyPop
        navigationController?.popViewController(animated: true)
    }

    

    

}
