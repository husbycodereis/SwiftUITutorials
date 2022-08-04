//
//  TimerView.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 4.08.2022.
//

import SwiftUI

struct TimerView: View {
    @State private var timeText:String = ""
    @State private var colorRed:Double = 0.0
    @State private var colorGreen:Double = 0.0
    @State private var colorBlue:Double = 0.0
    @State private var tapped:Bool = false
    private let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    
    
    private var onTap: some Gesture{
        TapGesture(count: 1).onEnded { _ in
            self.tapped = !self.tapped
        }
    }
    
    var body: some View {
        VStack{
            Spacer()
            SubscriptionView(content: Text(timeText), publisher: timer) { time in
                timeText = String(describing: time)
                colorRed = .random(in: 0...1)
                colorGreen = .random(in: 0...1)
                colorBlue = .random(in: 0...1)
            
               
            }.background( Color(red: colorRed, green: colorGreen, blue: colorBlue))
            Spacer()
            Circle().fill(self.tapped ? Color.blue : Color.red).frame(width: 100, height: 100, alignment: .center).gesture(onTap)
            Spacer()
        }
    }
}
