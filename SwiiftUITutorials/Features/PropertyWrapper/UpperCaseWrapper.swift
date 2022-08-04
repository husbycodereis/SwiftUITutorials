//
//  UpperCaseWrapper.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 30.06.2022.
//

import Foundation


@propertyWrapper struct UpperCaseWrapper{
    var wrappedValue: String {
        didSet {
            wrappedValue = wrappedValue.uppercased()
        }
    }
    
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.uppercased()
    }
}
