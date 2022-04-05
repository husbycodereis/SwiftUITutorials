//
//  EnvironmentView.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 5.04.2022.
//

import SwiftUI

struct EnvironmentView: View {
    //@Environment annotation'i bizim uygulamanin genelinde kullandigimiz / tema / size / colorscheme gibi ozelliklere erismemizi saglar
    @Environment(\.verticalSizeClass) var verticalSize
    
    //Observable objeler View Icerisinde StateObject variabllarina esitlenere kullanilirlar
    @StateObject var userController = UserController()

    var body: some View {
        NavigationView {
            
            VStack {
                //Environment object has to be passed to the view like below
                NavigationLink(destination: DateControlView().environmentObject(UserController())) {
                    Label("date controllera git", systemImage: "bolt.fill")
                }
                Text(userController.currentDate.description)
                HStack {
                    verticalSize == .regular ? Spacer.minVerticalHigh : Spacer.minVertical
                    DatePicker(selection: $userController.currentDate, label: { Text("Some Date") })
                    verticalSize == .regular ? Spacer.minVerticalHigh : Spacer.minVertical
                }
            }
        }
        
    }
}

//State degisikligine ugrayacak classlara type olarak ObservableObject verilmektedir
class UserController: ObservableObject {
    //degisiklik olacak propertye published annotationi verilir
    @Published var currentDate: Date = Date()
}

struct EnvironmentView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentView()
    }
}
