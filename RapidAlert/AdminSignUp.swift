//
//  AdminSignUp.swift
//  RapidAlert
//
//  Created by Kyle Litton on 6/22/18.
//  Copyright © 2018 Kyle Litton. All rights reserved.
//

import Foundation
import UIKit
import FirebaseFirestore
import Firebase


class AdminSignUp: UIViewController {
    
    @IBOutlet weak var SignUp: UIButton!
    @IBOutlet weak var sCode: UITextField!
    @IBOutlet weak var tCode: UITextField!
    @IBOutlet weak var FrCode: UITextField!
    @IBOutlet weak var PasswordConf: UITextField!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var SchoolName: UITextField!
    
    var db: Firestore!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        db = Firestore.firestore()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func SignUpPress(_ sender: Any) {
       //check for misspelled password
        
        if(Password.text != PasswordConf.text){
            let alertController = UIAlertController(title: "Sign Up Failed", message: "Sorry, your Passwords were not matching.", preferredStyle: .alert)
            
            
            let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                // ...
            }
            alertController.addAction(OKAction)
            
            self.present(alertController, animated: true) {
                // ...
            }
        }
      
        //create account
        
        Auth.auth().createUser(withEmail: Email.text!, password: Password.text!) { (authResult, error) in
            
            if error == nil {
                
            }else{
                let alertController = UIAlertController(title: "Sign Up Failed", message: "Sorry, something went wrong", preferredStyle: .alert)
                
                
                let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                    // ...
                }
            }
            
        }
        
        // sign in
        
        Auth.auth().signIn(withEmail: Email.text!, password: Password.text!) { (user, error) in
            // ...
            if error == nil {
                
            }else{
                let alertController = UIAlertController(title: "Sign Up Failed", message: "Sorry, something went wrong", preferredStyle: .alert)
                
                
                let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
                    // ...
                }
            }
            
            
        }
        
        
        //check database for duplicates
        
        db.collection("schools").document(SchoolName.text!).setData(
            
            [FrCode.text!: "First Responders",
             tCode.text!: "Teachers",
             sCode.text!: "Students"
            ]
        
        )
        
        
    }
    
    
}
