//
//  RegistrationView.swift
//  orange
//
//  Created by Abhijith H on 12/03/23.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var username = ""
    @State private var  fullname = ""
    @EnvironmentObject var viewModel : AuthViewModel
    var body: some View {
        VStack{
            VStack(alignment:.leading){
                HStack{Spacer()}
                Text("Get Started.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("Create your account")
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
                TextField("User Name",text: $username)
                TextField("Full Name",text: $fullname)
                SecureField("Password",text: $password)
            }
            .padding(.horizontal,32)
            .padding(.top,44)
            
            Button{
                viewModel.register(withEmail: email, password: password, fullname: fullname, username: username)
            }label: {
                Text("Sign Up")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 340,height: 50)
                    .background(Color(.systemOrange))
                    .clipShape(Capsule())
                    .padding()
            }
            Spacer()
            
            NavigationLink{
                LoginView()
                    .navigationBarHidden(true)
            }label: {
                HStack{
                    Text("Already have an Account?")
                        .font(.caption)
                    Text("Sign In")
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

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
