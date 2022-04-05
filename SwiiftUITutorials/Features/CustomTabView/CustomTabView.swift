//
//  CustomTabView.swift
//  SwiiftUITutorials
//
//  Created by Ali Riza Reisoglu on 4.04.2022.
//

import SwiftUI

struct CustomTabView: View {
    
    @State var selectedIndex = CustomTabs.home
    
    var body: some View {
        VStack {
            Button("Reset Index"){
                selectedIndex = CustomTabs.home
            }
            // Tab view icerisine state objesi olan index atandi. dolar $ isareti ile bu obje tabview'e baglandi
            TabView(selection: $selectedIndex) {
                
                HomeView().tabItem {
                    Image(systemName: "heart")
                    Text(selectedIndex == CustomTabs.home ? "Tab Label 1" : "") }.tag(CustomTabs.home)
                
                FavoritesView().tabItem {
                    Image(systemName: "star")
                    Text(selectedIndex == CustomTabs.favorites ?  "Tab Label 2" : "") }.tag(CustomTabs.favorites)
            }.accentColor(.purple)
        }
    }
}

struct FavoritesView: View {
    var body: some View {
        Text("Tab Content 2")
    }
}

struct HomeView: View {
    @State private var fruits = [
        "Apple",
        "Banana",
        "Papaya",
        "Mango"
    ]
    var body: some View {
        NavigationView{
            VStack {
                NavigationLink(destination: Text("Sample Detail")) {
                    Label("sample'a git", systemImage: "bolt.fill")
                }
                List {
                    ForEach(
                        fruits,
                        id: \.self
                    ) { fruit in
                        Text(fruit)
                    }
                }
                .navigationTitle("Fruits")
                .toolbar { EditButton() }
            }
        }
    }
}

struct CustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CustomTabView()
        }
    }
}
