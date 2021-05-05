//
//  ContentView.swift
//  Tracker
//
//  Created by Professor Foster on 5/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            Text("Mood")
                .font(.title)
                .fontWeight(.bold)
            Button(action: {
                
            }){
                Text("😀")
                    .font(.largeTitle)
            }
            Button(action: {
                
            }){
                Text("😐")
                    .font(.largeTitle)
            }
            Button(action: {
                
            }){
                Text("☹️")
                    .font(.largeTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
