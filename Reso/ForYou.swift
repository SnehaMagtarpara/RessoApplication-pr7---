//
//  ForYou.swift
//  Reso
//
//  Created by R93 on 04/05/23.
//

import UIKit

class ForYou: UIViewController {

    
    @IBOutlet weak var pop: UIView!
    
    var mynev : UINavigationController?
   
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        view.alpha = 0
        pop.layer.cornerRadius = 10

    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear){
            self.view.alpha = 1
        }
    }
    

}
