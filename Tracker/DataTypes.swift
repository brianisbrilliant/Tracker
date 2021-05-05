//
//  DataTypes.swift
//  Tracker
//
//  Created by Professor Foster on 5/5/21.
//

import Foundation

struct Expense: Identifiable {
    enum ExpenseCategories {
        // raw values start at 0 and increment by 1
        case travel         // 0
        case food           // 1
        case materials      // 2
        case tools          // 3
    }
    
    let id = UUID()
    let name: String
    let amount: Double
    let category: ExpenseCategories
    
}

class Expenses: ObservableObject {
    // an array of Expense variables
    @Published var items = [Expense]()
}

struct Order: Identifiable {
    let id: Int     // previously named: orderNumber
    let clientName: String
    let clientPhoneNumber: Int
    let descriptionOfWork: String
    let quotedPrice: Double
    let deliverBy: Date
    
    let delivered: Bool
    let invoiceSent: Bool
    let paymentReceived: Bool
}

class Orders: ObservableObject {
    // an array of Order variables.
    @Published var items = [Order]()
}

struct Mood {
    enum resposes {
        case 🥳
        case 🙂
        case 😞
        case 😡
    }
}
