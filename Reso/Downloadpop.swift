//
//  Downloadpop.swift
//  Reso
//
//  Created by R93 on 17/05/23.
//

import UIKit

class Downloadpop: UIViewController {
    
    @IBOutlet weak var pop: UIView!
    var mynev : UINavigationController?

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
    

}
