//
//  TweetCards.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 24.03.2022.
//

import SwiftUI

struct TweetCard: View {
    let tweet:TweetModel
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            Text(tweet.userName).font(.title)
            Text("\(tweet.body)").font(.title3)
            HStack {
                Text("\(tweet.likeCount ?? 0)")
                Image(systemName: tweet.likeCount != 0 ? "heart.circle.fill" : "heart.circle").foregroundColor(.pink)
                Spacer()
            }
            Spacer()
        }.padding(2).frame(height: 100, alignment: .top).overlay(RoundedRectangle(cornerRadius: 10).stroke(.purple, lineWidth: 2)).padding(2)
    }
}

struct TweetCards_Previews: PreviewProvider {
    static var previews: some View {
        TweetCard(tweet: TweetModel.fakeTweet)
    }
}
