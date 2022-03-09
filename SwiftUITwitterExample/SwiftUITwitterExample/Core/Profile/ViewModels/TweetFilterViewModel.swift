//
//  TweetFilterViewModel.swift
//  SwiftUITwitterExample
//
//  Created by Dijital Dönüşüm on 9.03.2022.
//

import SwiftUI

enum TweetFilterViewModel: Int, CaseIterable{
    case tweets
    case replies
    case likes
    var title: String{
        switch self{
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}
