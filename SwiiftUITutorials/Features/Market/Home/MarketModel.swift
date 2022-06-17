//
//  MarketModel.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 17.06.2022.
//

import Foundation

struct MarketModel : Identifiable {
    let id: UUID = UUID()
    let name: String
    var price: Int
    
    //To change values of a property inside a struct with a method, mutating annotation has to be added
    mutating func updatePrice(value: Int?) {
        guard let _value = value else {return}
        price = _value
    }
}

extension MarketModel {
   static let items = [
    MarketModel(name: "adam", price: 20),
    MarketModel(name: "kral", price: 25)
    ]
}
