//
//  NumberCaseWrapper.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 30.06.2022.
//

import Foundation


@propertyWrapper struct NumberCaseWrapper {
    var wrappedValue: String {
        didSet{
            self.wrappedValue = calculateValue(value: wrappedValue)
        }
    }
    
    init(wrappedValue: String){
        
        self.wrappedValue = Int(wrappedValue)?.description ?? ""
    }
    
    func calculateValue(value: String) -> String {
        return Int(value)?.description ?? ""
    }
}
