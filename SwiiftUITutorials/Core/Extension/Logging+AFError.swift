//
//  Logging+AFError.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 1.06.2022.
//

import Foundation
import Alamofire
import Logging

extension AFError {
    private static let logger = Logger(label: "")
    func showError() {
        AFError.logger.error("\(errorDescription?.description ?? "error")")
    }
}
