//
//  MarketHomeView.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 17.06.2022.
//

import SwiftUI

struct MarketView: View {
    @StateObject private var marketViewModel = MarketViewModel()

    var body: some View {
        NavigationView {
            VStack {
                List(marketViewModel.items) {
                    item in HStack{
                        Text(item.name)
                        Spacer()
                        Text("\(item.price)")
                    }
                }
                NavigationLink(destination: MarketDetailView()) {
                    Text("Add Item")
                }
            }
            
        }.environmentObject(marketViewModel)
    }
}

struct MarketHomeView_Previews: PreviewProvider {
    static var previews: some View {
        MarketView()
    }
}
