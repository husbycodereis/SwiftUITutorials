//
//  MarketViewModel.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 17.06.2022.
//

import Foundation

class MarketViewModel: ObservableObject {
    @Published var items: [MarketModel]

    init() {
        items = MarketModel.items
    }
}

extension MarketViewModel: MarketUseCases {
    func addItem(item: MarketModel) {
        items.append(item)
    }

    func removeItem(id: UUID) -> Bool {
        guard let index = items.firstIndex(where: { item in
            item.id == id
        }) else { return false }
        items.remove(at: index)
        return true
    }
}

//protocols keeps the Logic and methods of a class in order to use them in other scenarios / similar to ISampleService
protocol MarketUseCases {
    func addItem(item: MarketModel)
    func removeItem(id: UUID) -> Bool
    var items: [MarketModel] { get set }
}
