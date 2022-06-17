//
//  MarketDetailViewModel.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 17.06.2022.
//

import Foundation
class MarketDetailViewModel: ObservableObject {
    @Published var name: String = ""
    @Published var count: String = ""
    
    func save() -> (Bool, MarketModel?) {
        guard !name.isEmpty else {
            return (false, nil)
        }
        guard let value = Int(count) else { return (false, nil) }
        return (true, MarketModel(name: name, price: value))
    }
}
