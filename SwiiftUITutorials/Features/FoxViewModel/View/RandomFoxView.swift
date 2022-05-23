//
//  RandomFoxView.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 23.05.2022.
//

import SwiftUI


struct RandomFoxView: View {
    private let title = "Random Foxes"
    //@StateObject annotation provides usage ObservableObject in the View
    @StateObject private var foxViewModel: FoxViewModel = FoxViewModel(service: FoxService())
    var body: some View {
        VStack {
            RefreshButtonRow(
                title: title,
                onPressed: {
                foxViewModel.refreshView()
            })

            if foxViewModel.isCompleted ?? false{
                GeometryView(imageUrl: foxViewModel.fox?.image)
              
            } else {
               LoadingView()
            }
        }
    }
}

struct RandomFoxView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RandomFoxView()
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}


