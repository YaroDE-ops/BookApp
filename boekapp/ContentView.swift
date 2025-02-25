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
                Image(systemName:"house.fill")
                Text("home")
                
            }
            library().tabItem{
                Image(systemName:"books.vertical")
                Text("library")
            }
            bookstore().tabItem{
                Image(systemName:"bag.fill")
                Text("bookstore")
            }
            audiobooks().tabItem{
                Image(systemName:"headphones")
                Text("audiobooks")
            }
            search().tabItem{
                Image(systemName:"magnifyingglass")
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
    
    var body: some View {
        NavigationStack{
            HStack{
                TextField("books & audiobooks", text: $searchText)
                    .padding(10)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                Button(action: {
                    print("Microphone tapped")
                }) {
                    Image(systemName: "mic.fill")
                        .foregroundColor(.gray)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
