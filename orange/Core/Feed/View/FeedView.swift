//
//  FeedView.swift
//  orange
//
//  Created by Abhijith H on 12/03/23.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    var body: some View {
        ZStack (alignment:.bottomTrailing){
            ScrollView{
                LazyVStack{
                    ForEach(0 ... 20 ,id: \.self){_ in
                        TweetsRowView()
                            .padding()
                        
                    }
                }
            }
            Button{
                showNewTweetView.toggle()
            }label:{
                Image(systemName: "carrot")
                    .resizable()
                    .frame(width: 28,height: 28)
                    .padding()
                    
            }
            .background(Color(.systemOrange))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView){
                NewTweetView()
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
