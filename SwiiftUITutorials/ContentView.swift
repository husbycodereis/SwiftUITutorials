//
//  ContentView.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 18.03.2022.
//

import SwiftUI
//creating a content view here
struct ContentView: View {
    
    
    var body: some View {
        SampleVerticalView()
    }
}
//verfical view similar to Column
fileprivate func SampleVerticalView() -> some View {
    return VStack{
        Spacer(minLength: 300)
        Text("Hello, world!")
            .padding()
        Text("Hello, cano!")
            .padding()
        SampleHorizontalView()
        SampleStackView()
        Spacer(minLength: 300)
       
    }
}
//horizontal view similar to Row
fileprivate func SampleHorizontalView() -> some View {
    return HStack{
        Text("Hello, world!")
            .padding()
        Text("Hello, cano!")
            .padding()
    }
}
//stack view similar to stack
fileprivate func SampleStackView() -> some View {
    return ZStack(alignment: Alignment.bottom){
        Color.purple
        Text("Hello, cano!")
            .padding()
    }
}

//running the view in this function
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
