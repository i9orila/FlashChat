//
//  LoginViewController.swift
//  FlashChat
//
//  Created by I9orila T on 18.06.2022.
//

import UIKit
import FirebaseAuth
import FirebaseCore

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print (e)
                } else {
                    // Navigate to ChatViewController
                    self.performSegue(withIdentifier: "LoginToChat", sender: self)
                }
            }
        }
        
        
    }
    
}
