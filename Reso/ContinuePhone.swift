//
//  ContinuePhone.swift
//  Reso
//
//  Created by R93 on 22/04/23.
//

import UIKit

class ContinuePhone: UIViewController {

    
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    @IBOutlet weak var sendOtpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        sendOtpButton.layer.cornerRadius = 15
        sendOtpButton.layer.masksToBounds = true
    }
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let abc = segue.destination as! OtpPage
            abc.a = phoneNumberTextField.text!
    }
        
    @IBAction func sendOtpButtonAction(_ sender: Any) {
        
        if phoneNumberTextField.text?.count ?? 0 != 10
        {
            showalert()
        }
          savealert()
        
    }
    func showalert()
    {
        
        let alert = UIAlertController(title: "Error", message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "Enter your number in 10 digit", style: .default, handler: nil))
        present(alert,animated:true,completion: nil)
    }
    func savealert()
    {
        let alert = UIAlertController(title: "save", message: "save", preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "save", style: .default, handler: { _ in
            UserDefaults.standard.set(self.phoneNumberTextField.text!, forKey: "userName")
            self.performSegue(withIdentifier:"cell" , sender: self)
//            let n = self.storyboard?.instantiateViewController(withIdentifier: "OtpPage") as! OtpPage
//            self.navigationController?.pushViewController(n, animated:true)
        }))
        alert.addAction(UIAlertAction.init(title: "cancel", style: .destructive, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
}
