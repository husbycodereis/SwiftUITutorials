//
//  NavigationUsers.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 25.03.2022.
//

import SwiftUI

struct NavigationUsers: View {
    
    @State private var isBottomSheetPresent:Bool = false
    var body: some View {
        //This view gives makes the views navigatable
        NavigationView {
            List(NavigationUserModel.samples, id: \.id){
                //navigationlink is used to navigate to another page. it takes data and label
                data in NavigationLink{
                    UserViewDetail(user: data)
                    
                } label:{
                    Text(data.name)
                }
                
            }
            .listStyle(GroupedListStyle())
            .navigationTitle(Text("Users"))
            .toolbar{
                ToolbarItem{
                    Button("Open Sheet", action: {
                        isBottomSheetPresent.toggle()
                    })
                }
            }
            // at the end of the navigation view, by adding 'sheet' a bottomsheet view can be created
        }.sheet(isPresented: $isBottomSheetPresent, onDismiss: {
            print("is dismissed")
        }, content: {
            Button("Close Sheet", action: {
                isBottomSheetPresent.toggle()
            })
        })
    }
}

struct NavigationUsers_Previews: PreviewProvider {
    static var previews: some View {
        NavigationUsers()
    }
}
