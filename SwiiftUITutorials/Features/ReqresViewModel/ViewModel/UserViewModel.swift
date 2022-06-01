//
//  UserViewModel.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 1.06.2022.
//

import Foundation

class UserViewModel: ObservableObject {

    init(userService: IUserService) {
        self.userService = userService
        //Task.detached is used in method like init to call async functions in sync methods
        Task.detached {
            await self.fetchAllItems()
        }
    }

    let userService: IUserService
    @Published var user: User?

    func fetchAllItems() async {
        user = await userService.fetchUser()
    }

}
