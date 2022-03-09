//
//  UserRowView.swift
//  SwiftUITwitterExample
//
//  Created by Dijital Dönüşüm on 10.03.2022.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack{
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4){
                Text("joker")
                    .font(.subheadline).bold()
                
                Text("Heat Ledger")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
            }
            Spacer()
        }
        .padding()
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
