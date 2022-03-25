//
//  UserNameDetail.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 25.03.2022.
//

import SwiftUI

struct UserViewDetail: View {
    let user: NavigationUserModel
    var body: some View {
        Text(user.name).font(.largeTitle)
    }
}

struct UserNameDetail_Previews: PreviewProvider {
    static var previews: some View {
        UserViewDetail(user: NavigationUserModel.samples.first!)
    }
}
