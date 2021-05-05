//
//  ExpensesView.swift
//  Tracker
//
//  Created by Professor Foster on 5/5/21.
//

import SwiftUI

struct ExpensesView: View {
    @ObservedObject var expenses: Expenses
    
    var body: some View {
        NavigationView {
            List {
                ForEach(expenses.items) { item in
                    Text(item.name)
                }
            }
        }
        .navigationBarTitle("Expenses")
    }
}

struct ExpensesView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesView(expenses: Expenses())
    }
}
