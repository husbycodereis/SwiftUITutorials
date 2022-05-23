//
//  FoxViewModel.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 23.05.2022.
//

import Foundation
//The class must given ObservableObject type in order to notify the changes in ViewModel to View
class FoxViewModel: ObservableObject {
    // init method is required in order to appoint service
    init(service: IFoxService) {
        self.service = service
        fetchFox()
    }
    
    // Published annotation ensures the variable to be used in View and track the state changes
    @Published var fox: FoxModel?
    @Published var isCompleted: Bool?
    
    private let service: IFoxService
    
    private func fetchFox(){
        print("fetch fox calisti")
        service.fetchItem(path: .floof) { data, isCompleted in
            self.isCompleted = isCompleted
            self.fox = data
        }
    }
    
    func refreshView(){
        isCompleted = false
        fetchFox()
    }
}
