//
//  ViewController.swift
//  Movida
//
//  Created by Ian Knott on 2/1/20.
//  Copyright © 2020 Ian Knott. All rights reserved.
//

import UIKit
import TextFieldEffects
import LGButton
import SwiftIconFont
import Firebase
import FirebaseAuth


class ViewController: UIViewController {

    // viewcontroller is the initial screen that holds the signup process
    
    
   
    
    //passwordTextField
    @IBOutlet weak var passwordSupField: IsaoTextField!
    
    @IBOutlet weak var emailTextField: IsaoTextField!
    
    
    
    
    
    
    @IBAction func registerIsPressed(_ sender: LGButton) {
        
        sender.isLoading = true
                     let deadlineTime = DispatchTime.now() + .seconds(3)
                     DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
                         sender.isLoading = false
              }
              
              Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordSupField.text!){
                        (result,error)in
                       
                        //tests to see if there is an error
                  if error != nil  {
                            print(error!)
                        }else{
                                            //uploads profile image to firebase storage
                            //won't be adding this until update
                           // self.uploadProfileImage(<#T##image: UIImage##UIImage#>, completion: <#T##((String?) -> ())##((String?) -> ())##(String?) -> ()#>)
                                               
                                           self.performSegue(withIdentifier: "signUpGoToFeed", sender: self)
                                        
                        
                            
                  
                  }

                  }
        
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
            view.addGestureRecognizer(tap)
        
        
    }


}


