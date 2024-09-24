//
//  LoginViewController.swift
//  BCCU-SWIFT
//
//  Created by Jack Tolley on 23/09/2024.
//

import Foundation
import UIKit
import FirebaseAuth
import GoogleSignIn
import FirebaseCore

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        guard let email = emailTextField.text, let password = passwordTextField.text else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password) { (authResult, error) in
            if let error = error {
                print("Error logging in: \(error.localizedDescription)")
            } else {
                // Navigate to next screen
                print("User signed in")
                
            }}
    }
}
