//
//  RoundedShape.swift
//  SwiftUITwitterExample
//
//  Created by Dijital Dönüşüm on 20.03.2022.
//

import SwiftUI
struct RoundedShape:Shape{
    var corners:UIRectCorner
    func path(in rect:CGRect) -> Path{
        let path = UIBezierPath(roundedRect:rect,byRoundingCorners: corners,cornerRadii: CGSize(width:80,height:80))
        
        return Path(path.cgPath)
    }
}
