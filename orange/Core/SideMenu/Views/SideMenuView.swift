//
//  SideMenuView.swift
//  orange
//
//  Created by Abhijith H on 12/03/23.
//

import SwiftUI

struct SideMenuView: View {
    @EnvironmentObject var authViewModel : AuthViewModel
    var body: some View {
        VStack (alignment:.leading,spacing: 32){
            VStack(alignment:.leading){
                Circle()
                    .frame(width: 48,height: 48)
                VStack(alignment:.leading,spacing: 4){
                    Text("Mishuuu")
                        .font(.headline)
                    Text("@mish")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                }
                UserStatsView()
                    .padding(.vertical)
                
                
            }
            .padding(.leading)
            ForEach(SideMenuViewModel.allCases,id:\.rawValue){
                option in
                
                if option == .profile{
                    NavigationLink{
                        ProfileView()
                    }label:{
                        SideMenuOptionRowView(viewModel: option)
                    }
                }else if option == .logout{
                    Button{
                        authViewModel.signOut()
                    }label:{
                        SideMenuOptionRowView(viewModel: option)
                    }
                }else{
                    SideMenuOptionRowView(viewModel: option)
                }
                
                
            }
            
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}


