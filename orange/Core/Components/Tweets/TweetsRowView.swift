//
//  TweetsRowView.swift
//  orange
//
//  Created by Abhijith H on 12/03/23.
//

import SwiftUI

struct TweetsRowView: View {
    var body: some View {
        VStack(alignment:.leading){
            //Profile image & user info & tweet
            HStack(alignment:.top,spacing:12){
                Circle()
                    .frame(width:56,height:56)
                    .foregroundColor(Color(.systemOrange))
                //user info & tweets caption
                
                VStack(alignment:.leading,spacing: 4){
                    HStack{
                        Text("Mishal K")
                            .font(.subheadline).bold()
                        Text("@mequeen")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("2d")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    //tweet caption
                    
                    Text("Everyone should live in the moment")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
                
                
            }
            // action button
            
            HStack{
                Button{
                    // action here
                }label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                Button{
                    // action here
                }label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()
                Button{
                    // action here
                }label: {
                    Image(systemName: "leaf")
                        .font(.subheadline)
                }
                Spacer()
                Button{
                    // action here
                }label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
                
            }.padding()
                .foregroundColor(.gray)
            
            Divider()
        }
    }
}
struct TweetsRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetsRowView()
    }
}
