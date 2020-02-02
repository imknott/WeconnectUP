//
//  LogInView.swift
//  Movida
//
//  Created by Ian Knott on 2/1/20.
//  Copyright © 2020 Ian Knott. All rights reserved.
//

import Foundation
import UIKit
import Firebase
import FirebaseAuth
import LGButton
import SwiftIconFont
import TextFieldEffects

class LoginView: UIViewController{
    
    
    @IBOutlet weak var emailLogin: IsaoTextField!
    
    @IBOutlet weak var passwordLogin: IsaoTextField!
    
    @IBAction func logInpressed(_ sender: LGButton) {
        
        sender.isLoading = true
                          let deadlineTime = DispatchTime.now() + .seconds(3)
                          DispatchQueue.main.asyncAfter(deadline: deadlineTime) {
                              sender.isLoading = false
                   }
        
        Auth.auth().signIn(withEmail: emailLogin.text!, password: passwordLogin.text!){(result, error)in
                  
                  if error != nil {
                      print(error!)
                  }else{
                      print("Log in successful")
                      
                      let currentUser = result!.user.uid
                    
                    let vc = EventFeed()
                    vc.userID = currentUser
                      self.performSegue(withIdentifier: "loginPressedToFeed", sender: self)
        
        
    }
    
        }
}

}
