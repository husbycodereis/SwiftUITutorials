//
//  SampleListView.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 23.03.2022.
//

import SwiftUI

struct SampleListView: View {
    
    private let imageUrl:String = "https://picsum.photos/id/237/200/300"
    
    private var someLove:String = "I love my baby so much"
    
    @State var isTap:Bool = false
    
    var body: some View {
        let loveArray:Array<String> = someLove.components(separatedBy: " ")
        NavigationView(content: {
            List{
                //The subtitle of a section
                Section(header: Text("Profile")
                            .font(.headline)) {
                    ProfileListTile()
                    Text("Hello")
                    ChevronArrowListView()
                }
                Button("Tap me!"){
                    isTap.toggle()
                }
                Section(header: Text("Hey Canim").font(.headline)){
                    VStack{
                        ForEach(loveArray, id: \.self){
                            (word) in Text(isTap ? word : "hello")
                        }
                    }
                }
            }.navigationTitle("Adams")
        })
    }
}

struct ChevronArrowListView: View {
    private let items:Array<String> = [
        "chevron.right",
        "chevron.left",
        "chevron.up",
        "chevron.down"
    ]
    var body: some View {
        HStack{
            //Similar to ListView Builder
            ForEach(items, id: \.self){ (item) in Image(systemName: item)
            }
        }
    }
}

struct ProfileListTile: View {
    var body: some View {
        HStack{
            Image(systemName: "person.crop.circle")
            Text("profile")
            Spacer()
            Image(systemName: "chevron.right")
        }
    }
}


struct SampleListView_Previews: PreviewProvider {
    static var previews: some View {
        SampleListView()
    }
}
