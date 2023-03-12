//
//  LoginView.swift
//  orange
//
//  Created by Abhijith H on 12/03/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @EnvironmentObject var viewModel : AuthViewModel
    
    var body: some View {
        VStack{
            VStack(alignment:.leading){
                HStack{Spacer()}
                Text("Hello.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Welcome Back")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                
            }
            .frame(height: 260)
            .padding(.leading)
            .background(Color(.orange))
            .foregroundColor(.white)
            .clipShape(RoundedShape(corners: [.bottomRight]))
            
            VStack(spacing:40){
                TextField("Email",text: $email)
                SecureField("Password",text: $password)
            }
            .padding(.horizontal,32)
            .padding(.top,44)
            
            HStack{
                Spacer()
                NavigationLink{
                    Text("Reset Password View")
                }label: {
                    Text("Forgot Password ?")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.orange))
                        .padding(.top)
                        .padding(.trailing,24)
                }
            }
            Button{
                viewModel.login(withEmail: email, password: password)
            }label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340,height: 50)
                    .background(Color(.systemOrange))
                    .clipShape(Capsule())
                    .padding()
            }
            Spacer()
            
            NavigationLink{
                RegistrationView()
                    .navigationBarHidden(true)
            }label: {
                HStack{
                    Text("Don't have an account?")
                        .font(.caption)
                    Text("Sign Up")
                        .font(.footnote)
                        
                        .fontWeight(.semibold)
                }.foregroundColor(.orange)
            }
            .padding(.bottom,32)
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
