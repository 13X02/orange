//
//  AuthViewModel.swift
//  orange
//
//  Created by Abhijith H on 12/03/23.
//

import Foundation
import SwiftUI
import Firebase


class AuthViewModel:ObservableObject{
    @Published var userSession : FirebaseAuth.User?
    
    init(){
        self.userSession = Auth.auth().currentUser
        print("Debug \(self.userSession)")
    }
    func login(withEmail email:String,password:String){
        Auth.auth().signIn(withEmail: email, password: password){ result,error in
            if let error = error{
                print("failed to login")
                return
            }
            guard let user = result?.user else{return}
            self.userSession = user
            print("Did log in")
            
        }
    }
    func register(withEmail email:String,password:String,fullname:String,username:String){
        Auth.auth().createUser(withEmail: email, password: password){
            result,error in
            if let error = error {
                print("Failed to Register\(error.localizedDescription)")
            }
            guard let user = result?.user else{return}
            self.userSession = user
            
            let data = ["email":email,"username":username.lowercased(),"fullname":fullname,"uid":user.uid]
            Firestore.firestore().collection("users").document(user.uid)
                .setData(data){
                    _ in
                    print("Did upload user data")
                }
        }
    }
    func signOut(){
        userSession = nil
        try?Auth.auth().signOut()
    }
}
