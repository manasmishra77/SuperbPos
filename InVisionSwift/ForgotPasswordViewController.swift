//
//  ForgotPasswordViewController.swift
//  InVisionSwift
//
//  Created by Manas Mishra on 27/05/17.
//  Copyright © 2017 Manas Mishra. All rights reserved.
//

import UIKit

class ForgotPasswordViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        userNameTextField.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSForegroundColorAttributeName : UIColor.gray])
        loginButton.layer.cornerRadius = 25.0

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onSubmit(_ sender: UIButton) {
        if !((userNameTextField.text?.isEmpty)!){
            self.dismiss(animated: true, completion: nil)
        }else{
            Utilities.alertBubble("Text input can not be empty", view: view)
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        view.endEditing(true)
    }
    @IBAction func onReturnLogin(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    


}
