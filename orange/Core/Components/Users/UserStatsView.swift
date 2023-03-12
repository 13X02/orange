//
//  UserStatsView.swift
//  orange
//
//  Created by Abhijith H on 12/03/23.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing:24){
            HStack(spacing:4){
                Text("11")
                    .bold()
                    .font(.subheadline)
                Text("Follwing")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            HStack(spacing:4){
                Text("5M")
                    .bold()
                    .font(.subheadline)
                Text("Follwers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
