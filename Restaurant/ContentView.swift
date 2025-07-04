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
            VStack(spacing: 40) {
                Image("tasteOfThai")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 200)
                Text("Hello, Weeraphot!")
                    .font(.title)
                Image(systemName: "heart.circle.fill")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                NavigationLink(destination: AboutView()) {
                    Text("Go to About Page")
                        .underline()
                }
            }
            .foregroundColor(.black)
            .navigationTitle("Home")
        }
    }
}
#Preview {
    ContentView()
}
