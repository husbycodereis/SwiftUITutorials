//
//  FoxService.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 23.05.2022.
//

import Foundation
import Alamofire

//the abstract protocol of the service
protocol IFoxService {
    func fetchItem(path: FoxPaths, onSuccess:@escaping (FoxModel, Bool) -> Void)
}

//Alamofire is a http package
class FoxService: IFoxService {
    private let baseUrl: String = "https://randomfox.ca/"
    //@escaping sends the callback value outside of the function. In order to use the response data, onSuccess callback is annotated with @escape.
    func fetchItem(path: FoxPaths, onSuccess:@escaping (FoxModel, Bool) -> Void) {
        //AF responseDecodable makes the json data be parsed with an embedded json parser
        //of: directly appoints the type of the model to the response value
        //completionHandleer is the callback function to use the response data
        AF.request(baseUrl + path.rawValue).responseDecodable(of: FoxModel.self, completionHandler:  { response in
            guard let value = response.value else { return }
            onSuccess(value, true)

        })
    }
}

enum FoxPaths: String {
    case floof = "floof"
}
