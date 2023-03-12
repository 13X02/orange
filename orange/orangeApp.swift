//
//  orangeApp.swift
//  orange
//
//  Created by Abhijith H on 12/03/23.
//

import SwiftUI
import Firebase

@main
struct orangeApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
                    
        }.environmentObject(viewModel)
        }
    }
}
