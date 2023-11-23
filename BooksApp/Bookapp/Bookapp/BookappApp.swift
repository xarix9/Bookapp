//
//  BookappApp.swift
//  Bookapp
//
//  Created by Arianna Spirito on 14/11/23.
//

import SwiftUI

@main
struct booksappApp: App {
    var body: some Scene {
        WindowGroup {
            TabView(){
                ContentView()
                .tabItem {
                    Image(systemName: "book.fill")
                    Text("Reading Now")
                }
                .tag(1)
                Libraryview()
                    .tabItem{
                        Image(systemName: "book.fill")
                        Text("Library")
                    }
                    .tag(2)
                bookstoreview()
                    .tabItem{
                        Image(systemName: "bag.fill")
                        Text("Book Store")
                    }
                .tag(3)
                audiobooksview()
                    .tabItem{
                        Image(systemName: "beats.headphones")
                        Text("Audio Libri")
                    }
                .tag(4)
                searchview()
                    .tabItem{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                    
            }
        
        }
    }
}
