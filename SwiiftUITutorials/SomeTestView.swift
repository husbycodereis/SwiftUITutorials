//
//  SomeTestView.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 22.03.2022.
//

import SwiftUI
import Kingfisher

struct SomeTestView: View {
   private let imageUrl:String = "https://picsum.photos/id/237/200/300"
    @State var textFieldValue: String  = ""
    
    var body: some View{
        VStack{
            CircleTextImageView(title: "Hayvo", imageUrl: imageUrl)
            TextField("Hello canim", text: $textFieldValue)
            Text(textFieldValue)
                .font(.largeTitle)
                .fontWeight(.bold)
            Image(systemName: textFieldValue.lowercased()).resizable().frame(width: 100, height: 100)
        }
    }
}

//running the view in this function
struct SomeTestView_Previews: PreviewProvider {
    static var previews: some View {
       SomeTestView()
    }
}
