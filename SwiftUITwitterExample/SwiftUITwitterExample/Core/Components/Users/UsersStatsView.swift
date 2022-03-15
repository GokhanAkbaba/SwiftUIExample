//
//  UsersStatsView.swift
//  SwiftUITwitterExample
//
//  Created by Dijital Dönüşüm on 14.03.2022.
//

import SwiftUI

struct UsersStatsView: View {
    var body: some View {
        HStack(spacing:24){
            HStack(spacing:4){
                Text("807")
                    .font(.subheadline)
                    .bold()
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            HStack(spacing:4){
                Text("6.9M")
                    .font(.subheadline)
                    .bold()
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
        }
    }
}

struct UsersStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UsersStatsView()
    }
}
