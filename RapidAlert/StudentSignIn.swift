//
//  SignIn.swift
//  RapidAlert
//
//  Created by Kyle Litton on 6/11/18.
//  Copyright © 2018 Kyle Litton. All rights reserved.
//

import Foundation
import UIKit

class StudentSignIn: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        emailField.delegate = self
        passwordField.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if(textField == emailField){
            passwordField.becomeFirstResponder()
        } else if(textField == passwordField){
            passwordField.resignFirstResponder()
        }
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
