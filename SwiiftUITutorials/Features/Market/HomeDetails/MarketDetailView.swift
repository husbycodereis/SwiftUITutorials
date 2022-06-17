//
//  MarketHomeDetailView.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 17.06.2022.
//

import SwiftUI

struct MarketDetailView: View {
    @StateObject private var marketDetailViewModel : MarketDetailViewModel = MarketDetailViewModel()
    @EnvironmentObject var marketViewModel: MarketViewModel
    // presentation mode is a variable to pop to previous screen when called
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack {
            TextField("Name", text: $marketDetailViewModel.name)
            TextField("Name", text: $marketDetailViewModel.count)
            Button("Save"){
                saveItem()
            }
        }
    }
}

extension MarketDetailView {
    private func saveItem()   {
        let result = marketDetailViewModel.save()
        guard result.0 == true else {return}
        marketViewModel.addItem(item: result.1!)
        presentationMode.wrappedValue.dismiss()
    }
}

struct MarketHomeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MarketDetailView()
    }
}
