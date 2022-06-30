//
//  UserWrapperModel.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 30.06.2022.
//

import Foundation

// Usecase: Lastname is always Uppercase
struct UserWrapperModel {
    var name: String
    @UpperCaseWrapper  var lastName: String
    @NumberCaseWrapper var age: String
    
    var fullName: String {
        return "\(name) \(lastName) \(age)"
    }
    
}
