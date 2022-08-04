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
        groupView()
    }
}

//group holds number of views
fileprivate func groupView() -> some View {
    return  Group {
        VStack {
            Text("welcome")
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            Image(systemName: "moon.fill").resizable().frame(width: 100, height: 100).foregroundColor(Color.red)
        }.frame(width: 200, height: 200, alignment: .center).background(Color("color_random"))
    }
}

//verfical view similar to Column
fileprivate func SampleVerticalView() -> some View {
    return VStack(){
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
        //use helper tab on the right to give values to the views
        Text("Hello, world!")
            .font(.title)
            .fontWeight(.bold)
        
        
        Text("Hello, cano!")
            .font(.subheadline)
            .padding(.horizontal, 5.0)
    }
    .padding(.vertical, 50.0)
}
//stack view similar to stack
fileprivate func SampleStackView() -> some View {
    return  VStack {
        Rectangle().frame(width: 100, height: 100, alignment: .center)
        Spacer(minLength: 40)
        ZStack(alignment: .bottom){
            
            RoundedRectangle(cornerRadius: 30).frame(width: 200, height: 200, alignment: .center)
            Circle().frame(width: 70, height: 70, alignment: .center) .foregroundColor(Color(red: 1.002, green: 0.478, blue: 0.696))
        }
        
    }
}

//running the view in this function
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}

