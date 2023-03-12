//
//  UserRowView.swift
//  orange
//
//  Created by Abhijith H on 12/03/23.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack{
            Circle()
                .frame(width: 48,height: 48)
            VStack(alignment:.leading,spacing: 4){
                Text("Luffy")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                Text("Pirate")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
