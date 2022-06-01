//
//  UserView.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 1.06.2022.
//

import SwiftUI
import Kingfisher

struct UserView: View {
    @StateObject var userViewmodel = UserViewModel(userService: UserService())

    var body: some View {
        if let user = userViewmodel.user {
            List(user.data ?? []) {
                UserCard(userData: $0)
                    

            }
        } else {
            LoadingView()
        }
    }
}

struct UserCard: View {
    var userData: Datum
    var body: some View {
        HStack{
            KFImage(URL(string: userData.avatar ?? ""))
                .resizable()
                .frame( width: 90, height:100,alignment: .center)
            VStack{
                Text(userData.firstName ?? "first name is empty")
                Divider()
                Text(userData.email ?? "email is empty")
            }
           
        }
    }
}


struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
