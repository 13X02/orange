//
//  NewTweetView.swift
//  orange
//
//  Created by Abhijith H on 12/03/23.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            HStack{
                Button{
                    presentationMode.wrappedValue.dismiss()
                }label: {
                    Text("Cancel")
                        .foregroundColor(Color(.orange))
                        
                }
                Spacer()
                Button{
                    print("tweet")
                }label: {
                    Text("Tweet")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical,8)
                        .foregroundColor(Color(.white))
                        .background(Color(.systemOrange))
                        .clipShape(Capsule())
                }
            }.padding()
            
            HStack(alignment:.top){
                Circle()
                    .frame(width:64,height: 64)
                TextArea("What's Happening",text: $caption)
                    .foregroundColor(.gray)
            }.padding()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
