//
//  PropertyWrapperView.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 30.06.2022.
//

import SwiftUI

struct PropertyWrapperView: View {
   @State var userWrapperModel : UserWrapperModel = UserWrapperModel(name: "Floki", lastName: "the coolest cat", age: "20")
    var body: some View {
        VStack{
            Text(userWrapperModel.fullName)
            TextField("insert text", text: $userWrapperModel.lastName)
            TextField("instert number", text: $userWrapperModel.age)
        }
    }
}

struct PropertyWrapperView_Previews: PreviewProvider {
    static var previews: some View {
        PropertyWrapperView()
    }
}
