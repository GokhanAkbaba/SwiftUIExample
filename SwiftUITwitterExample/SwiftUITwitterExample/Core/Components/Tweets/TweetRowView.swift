//
//  TweetRowView.swift
//  SwiftUITwitterExample
//
//  Created by Dijital Dönüşüm on 8.03.2022.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment:.leading){
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                VStack(alignment: .leading, spacing: 4)
                {
                    HStack{
                        Text("Gökhan Akbaba")
                            .font(.subheadline).bold()
                        Text("@GokhanAkbaba")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    Text("Merhaba SwiftUI Çalışması")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
                
            }
            HStack{
                Button {
                    //
                } label: {
                        Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    //
                } label: {
                        Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    //
                } label: {
                        Image(systemName: "heart")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    //
                } label: {
                        Image(systemName: "bookmark")
                        .font(.subheadline)
                }
                

            }
            .padding()
            .foregroundColor(.gray)
            Divider()
        }
       
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
