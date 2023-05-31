//
//  OtpPage.swift
//  Reso
//
//  Created by R93 on 22/04/23.
//

import UIKit

class OtpPage: UIViewController {

    
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var numberLabel: UILabel!
    var a = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.text = a
        
        continueButton.layer.cornerRadius = 15
        continueButton.layer.masksToBounds = true
    }
   
    
    @IBAction func continueButtonAction(_ sender: Any) {
        let n = storyboard?.instantiateViewController(withIdentifier: "AgePage" ) as! AgePage
        navigationController?.pushViewController(n, animated: true)
    }
    
    
}
