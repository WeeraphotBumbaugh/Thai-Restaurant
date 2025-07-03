//
//  ContentView.swift
//  Restaurant
//
//  Created by Weeraphot Bumbaugh on 7/2/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Image("littleLemonLogo")
                Image(systemName: "heart.circle.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, Weeraphot!")
                    .font(.title)
                    .foregroundColor(.blue)
                NavigationLink(destination:
                    AboutView()) {
                    Text("Go to About Page")
                }
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}
#Preview {
    ContentView()
}
