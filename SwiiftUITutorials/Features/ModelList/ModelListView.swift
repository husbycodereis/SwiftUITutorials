//
//  ModelListView.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 24.03.2022.
//

import SwiftUI

struct ModelListView: View {
    var body: some View {
        VStack {
            Text("Hello, List")
            List(TweetModel.tweets) {
                data in TweetCard(tweet: data)
            }.listStyle(.sidebar)
        }
    }
}

struct ModelListView_Previews: PreviewProvider {
    static var previews: some View {
        ModelListView()
    }
}
