//
//  SignInViewController.swift
//  InVisionSwift
//
//  Created by Manas Mishra on 23/05/17.
//  Copyright © 2017 Manas Mishra. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var passwordImageView: UIImageView!
    @IBOutlet weak var userNameImageView: UIImageView!
    @IBOutlet weak var userName: UITextField!
     @IBOutlet weak var loginButton: UIButton!
    
    var validUserName = false
    var validPassword = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        password.delegate = self
        userName.delegate = self
        userName.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSForegroundColorAttributeName : UIColor.gray])
        password.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSForegroundColorAttributeName : UIColor.gray])
        
        loginButton.layer.cornerRadius = 25.0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        view.endEditing(true)
        if !((textField.text?.isEmpty)!){
            if textField.tag == 101{
                if (password.text?.characters.count)! > 4{
                    validPassword = true
                }else{
                    let vc = Utilities.alertViewController(title: "Enter valid password", msg: "")
                    present(vc, animated: true, completion: nil)
                }
            }else{
                validUserName = true
            }
        }else{
            Utilities.alertBubble("Text input can not be empty", view: view)
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldDidEndEditing(textField)
        return true
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        validUserName = false
        validPassword = false

        return true
    }
    

    @IBAction func loginButton(_ sender: UIButton) {
        if validUserName && validPassword{
            
        }else if validUserName{
            let vc = Utilities.alertViewController(title: "Enter valid password", msg: "")
            present(vc, animated: true, completion: nil)
        }else{
            let vc = Utilities.alertViewController(title: "Enter valid username", msg: "")
            present(vc, animated: true, completion: nil)
        }
    }
    @IBAction func contactUs(_ sender: UIButton) {
    }
    @IBAction func onHelpButton(_ sender: Any) {
        if !((userName.text?.isEmpty)!){
            let vc  = storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordViewController")
            present(vc!, animated: true, completion: nil)
        }else{
            Utilities.alertBubble("Text input can not be empty", view: view)
        }

    }

}












