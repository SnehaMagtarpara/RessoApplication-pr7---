//
//  ViewController.swift
//  Reso
//
//  Created by R93 on 21/04/23.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate {
    
    
    @IBOutlet weak var frrdbackButton: UIButton!
    
    @IBOutlet weak var continuePhoneButton: UIButton!
    @IBOutlet weak var continuefacebookButton: UIButton!
    @IBOutlet weak var continueGoogleButton: UIButton!
    @IBOutlet weak var continueAppleButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButton()
       
    }
    @IBAction func continuePhoneButtonAction(_ sender: UIButton) {
        
        let navigation = storyboard?.instantiateViewController(withIdentifier:"ContinuePhone" ) as! ContinuePhone
        navigationController?.pushViewController(navigation, animated: true)
    }
    @IBAction func continueFacebookButtonAction(_ sender: UIButton) {
        showalert(title:"This allows the app and website to share infirmation about you." )
    }
    @IBAction func continueGoogleButtonAction(_ sender: UIButton) {
        showalert(title:"This allows the app and website to share infirmation about you." )
        
        
    }
    @IBAction func continueAppleButtonAction(_ sender: UIButton) {
        
        let navigation = storyboard?.instantiateViewController(withIdentifier:"ContinueApple" ) as! ContinueApple
        navigation.mynev = self.navigationController
        present(navigation, animated: true, completion: nil)

    }
    func showalert(title:String)
    {
        let alert = UIAlertController(title: "Resso Wants to Use facebook.com to Sidn In", message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "Cancle", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "Continue", style: .default, handler: { _ in
            let n = self.storyboard?.instantiateViewController(withIdentifier:"TabBar" ) as! TabBar
            self.navigationController?.pushViewController(n, animated: true)
        }))
        present(alert,animated:true,completion: nil)
    }
    func setButton()
    {
        continuePhoneButton.layer.cornerRadius = 20
        continuePhoneButton.layer.masksToBounds = true
        continuefacebookButton.layer.cornerRadius = 20
        continuefacebookButton.layer.masksToBounds = true
        continueGoogleButton.layer.cornerRadius = 20
        continueGoogleButton.layer.masksToBounds = true
        continueAppleButton.layer.cornerRadius = 20
        continueAppleButton.layer.masksToBounds = true
        
    }
    
    
}

