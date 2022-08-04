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
    private let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack{
            SubscriptionView(content: Text(timeText), publisher: timer) { time in
                timeText = String(describing: time)
                colorRed = .random(in: 0...1)
                colorGreen = .random(in: 0...1)
                colorBlue = .random(in: 0...1)
                
            }
        }.background( Color(red: colorRed, green: colorGreen, blue: colorBlue))
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
