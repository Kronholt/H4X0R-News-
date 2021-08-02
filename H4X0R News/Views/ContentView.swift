//
//  ContentView.swift
//  H4X0R News
//
//  Created by Kegan Ronholt on 8/2/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView(){
            List(networkManager.posts) { post in
                NavigationLink(
                    destination: DetailView(url: post.url)){
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                    
                    
                }
            }
            .navigationBarTitle("H4XOR News")
            
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
