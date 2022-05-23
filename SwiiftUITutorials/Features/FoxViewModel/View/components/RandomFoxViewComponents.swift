//
//  RandomFoxViewComponents.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 23.05.2022.
//

import SwiftUI
import Kingfisher
import ActivityIndicatorView

struct RefreshButtonRow: View {
    var title: String
    var onPressed: () -> Void
   
    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
            Spacer()
            Button("Refresh") {
                onPressed()
            }
        }.padding(.all)
    }
}

struct LoadingView: View {
    var body: some View {
        VStack{
            Spacer()
            ActivityIndicatorView(isVisible: .constant(true), type: .growingCircle)
            Spacer()
        }
    }
}


struct GeometryView: View {
    let imageUrl: String?
    var body: some View {
        GeometryReader { geometry in
            KFImage(URL(string: imageUrl ?? "")).resizable().frame( height: geometry.size.height * 0.4, alignment: .center)
        }
    }
}
