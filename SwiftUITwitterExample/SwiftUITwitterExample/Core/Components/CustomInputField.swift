//
//  CustomInputField.swift
//  SwiftUITwitterExample
//
//  Created by Dijital Dönüşüm on 20.03.2022.
//

import SwiftUI

struct CustomInputField: View {
    let imageName:String
    let placeholderText: String
    @Binding var text:String
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 30)
                    .foregroundColor(Color(.darkGray))
                
                TextField(placeholderText, text:$text)
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}

struct CustomInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputField(imageName: "envelope", placeholderText: "Email", text: .constant(""))
    }
}
