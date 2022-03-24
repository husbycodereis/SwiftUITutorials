//
//  TweetModel.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 24.03.2022.
//

import Foundation


struct TweetModel: Identifiable {
    var id: UUID = UUID()
    let userName: String
    var body: String
    var likeCount: Int?
}

extension TweetModel {
   static let tweets = [
        TweetModel(userName: "floki", body: "candir", likeCount: 10),
        TweetModel(userName: "Darina", body: "sevdamdir", likeCount: 15),
        TweetModel(userName: "Ali", body: "adamdir"),
    ]
    
    static let fakeTweet = TweetModel(userName: "floki", body: "candir", likeCount: 10)
}
