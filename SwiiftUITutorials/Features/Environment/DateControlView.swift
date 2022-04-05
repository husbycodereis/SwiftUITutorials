//
//  DateControlView.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 5.04.2022.
//

import SwiftUI

struct DateControlView: View {
    @EnvironmentObject var userController: UserController
    var body: some View {

        VStack {
            Text(userController.currentDate.description)
            Button("Date Reset") {
                userController.currentDate = Date.now
            }
        }
     
    }
}

struct DateControlView_Previews: PreviewProvider {
    static var previews: some View {
        DateControlView().environmentObject(UserController())
    }
}
