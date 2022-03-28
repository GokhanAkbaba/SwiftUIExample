//
//  AuthenticationViewModel.swift
//  SwiftUITwitterExample
//
//  Created by Dijital Dönüşüm on 29.03.2022.
//

import Foundation
import Firebase

class AuthenticationViewModel:ObservableObject{
    @Published var userSession: FirebaseAuth.User?
    
    init(){
        self.userSession = Auth.auth().currentUser
        
        print("DEBUG: User session is \(self.userSession)")
    }
    
    func login(withEmail email : String, password: String){
        print("DEBUG: Login with email \(email)")
        
    }
    
    func regisiter(withEmail email:String, password:String,fullname:String,username:String){
        print("DEBUG: Register with email \(email)")
    }
}
