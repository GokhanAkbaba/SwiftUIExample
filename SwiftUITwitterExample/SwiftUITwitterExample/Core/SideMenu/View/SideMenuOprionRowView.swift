//
//  SideMenuOprionRowView.swift
//  SwiftUITwitterExample
//
//  Created by Dijital Dönüşüm on 15.03.2022.
//

import SwiftUI

struct SideMenuOprionRowView: View {
    let viewModel: SideMenuViewModel
    var body: some View {
        HStack(spacing:16){
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.title)
                .foregroundColor(.black)
                .font(.subheadline)
            
            Spacer()
        }
        .frame(height:40)
        .padding(.horizontal)
    }
}

struct SideMenuOprionRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOprionRowView(viewModel: .profile)
    }
}
