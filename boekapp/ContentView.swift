//
//  ContentView.swift
//  boekapp
//
//  Created by yaro demeulenaere on 25/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            home().tabItem{
                Text("home")
            }
            library().tabItem{
                Text("library")
            }
            bookstore().tabItem{
                Text("bookstore")
            }
            audiobooks().tabItem{
                Text("audiobooks")
            }
            search().tabItem{
                Text("search")
            }
        }
    }
}

struct home: View {
    var body: some View {
        Text("lijst")
    }
}
struct library: View {
    var body: some View {
        Text("lijst")
    }
}
struct bookstore: View {
    var body: some View {
        Text("lijst")
    }
}
struct audiobooks: View {
    var body: some View {
        Text("lijst")
    }
}
struct search: View {
    @State private var searchText = ""
        @State private var searchIsActive = false
    var body: some View {
        NavigationStack{
            Text("Searching for \(searchText)")
            Image(systemName: "microphone")
                .navigationTitle("search")
        }
        .searchable(text: $searchText)

        
    }
}

#Preview {
    ContentView()
}
