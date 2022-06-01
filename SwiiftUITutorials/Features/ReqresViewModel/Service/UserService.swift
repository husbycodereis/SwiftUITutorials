//
//  UserService.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 1.06.2022.
//

import Foundation
import Alamofire

protocol IUserService {
    func fetchUser() async -> User?
}

struct UserService: IUserService {

    //https://reqres.in/api/users?page=2

    func fetchUser() async -> User? {
        let request = AF.request(ServicePath.users.toService()).serializingDecodable(User.self)
        let response = await request.response
        response.error?.showError()
        return response.value
    }
}

private enum ServicePath: String {
    case users = "users"

    func toService() -> String {
        return "https://reqres.in/api/\(rawValue)"
    }
}
