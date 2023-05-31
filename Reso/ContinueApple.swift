//
//  ContinueApple.swift
//  Reso
//
//  Created by R93 on 22/04/23.
//

import UIKit

class ContinueApple: UIViewController {

    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var pop: UIView!
    
    @IBOutlet weak var continueButton: UIButton!
    var mynev : UINavigationController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.alpha = 0
        pop.layer.cornerRadius = 10
        img.layer.cornerRadius = 10
        continueButton.layer.cornerRadius = 10
       
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear){
            self.view.alpha = 1
        }
    }
    
    
    @IBAction func cancelButtonAction(_ sender: Any) {
        dismiss(animated: false, completion: nil)
    }
    @IBAction func countinueButtonAction(_ sender: Any) {
       navigation()
        dismiss(animated: false, completion: nil)
    }
    func navigation()
    {
        let navigation = storyboard?.instantiateViewController(withIdentifier:"AgePage" ) as! AgePage
        mynev?.pushViewController(navigation, animated: true)
    }
    
}
