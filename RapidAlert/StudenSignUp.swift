//
//  StudenSignUp.swift
//  RapidAlert
//
//  Created by Kyle Litton on 6/11/18.
//  Copyright © 2018 Kyle Litton. All rights reserved.
//

import Foundation
import UIKit

class StudentSignUp: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var schoolCode: UITextField!
    @IBOutlet weak var confPassword: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var firstName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        schoolCode.delegate=self
        confPassword.delegate = self
        password.delegate = self
        email.delegate = self
        lastName.delegate = self
        firstName.delegate = self
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
