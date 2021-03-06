//
//  ContentView.swift
//  Tracker
//
//  Created by Professor Foster on 5/5/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var expenses = Expenses()
    @ObservedObject var orders = Orders()
    
    let quotes = [
        "Why don't you make like a tree, and get outta here.",
        "An Apple a day keeps the doctor away",
        "Be Kind, Rewind"
    ]
    
    let authors = [
        "Biff Tanner",
        "Doctors, probably",
        "Your VCR"
    ]
    
    let userCalendar = Calendar.current
    var now: Date {
        let temp = Date()
        
        return temp
    }
    let formatter = DateFormatter()
//    formatter.dateStyle = .medium
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Today is \(now)")
                Spacer()
                
                Text("'\(quotes[0])' \n -  \(authors[0])")
                    .italic()
                    .padding(40)
                
                Spacer()
                
                VStack {
                    Text("How do you feel today?")
                        .padding(1)
                    HStack {
                        Button(action: {}){
                            Text("🥳 ")
                                .font(.largeTitle)
                        }
                        Button(action: {}){
                            Text("🙂 ")
                                .font(.largeTitle)
                        }
                        Button(action: {}){
                            Text("😞 ")
                                .font(.largeTitle)
                        }
                        Button(action: {}){
                            Text("😡")
                                .font(.largeTitle)
                        }
                    }
                }
                .padding()
                
                HStack {
                    
                    NavigationLink(destination: OrdersView()) {
                        Text("Orders")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .padding(10)
                    .background(Color.green)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                    
                    
                    Spacer()
                    NavigationLink(destination: ExpensesView(expenses: self.expenses)) {
                        Text("Expenses")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .padding(10)
                    .background(Color.red)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    
                }
                .padding()
            }
            .navigationBarTitle("Tracker")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
