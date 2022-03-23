//
//  CircleTextImageView.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 23.03.2022.
//

import SwiftUI
import Kingfisher

struct CircleTextImageView: View {
    let title: String
    let imageUrl: String
    var body: some View {
        VStack {
            KFImage(URL(string: imageUrl)).resizable().frame(width: 250, height: 300).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).shadow(radius: /*@START_MENU_TOKEN@*/20/*@END_MENU_TOKEN@*/)
            Text(title)
                .font(.title)
                .fontWeight(.bold)
        }
        
    }
}

struct CircleTextImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleTextImageView(title: "hey", imageUrl: "hello")
    }
}
