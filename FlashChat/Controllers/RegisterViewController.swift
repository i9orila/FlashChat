//
//  RegisterViewController.swift
//  FlashChat
//
//  Created by I9orila T on 18.06.2022.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            
            
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                // ...
            }
        }
    }
}
