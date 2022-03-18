//
//  ContentView.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 18.03.2022.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        SampleVerticalView()
    }
}

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

fileprivate func SampleHorizontalView() -> some View {
    return HStack{
        Text("Hello, world!")
            .padding()
        Text("Hello, cano!")
            .padding()
    }
}

fileprivate func SampleStackView() -> some View {
    return ZStack(alignment: Alignment.bottom){
        Color.purple
        Text("Hello, cano!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
