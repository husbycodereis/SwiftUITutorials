//
//  NavigationUserModel.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 25.03.2022.
//

import Foundation

struct NavigationUserModel:Identifiable {
    let id: UUID = UUID()
    let name: String
}


extension NavigationUserModel {
    //static variables can be called in any file of the project
    static let samples: [NavigationUserModel] = [
     NavigationUserModel(name: "Floki"),
     NavigationUserModel(name: "Darina"),
     NavigationUserModel(name: "Ali")
    ]
}
