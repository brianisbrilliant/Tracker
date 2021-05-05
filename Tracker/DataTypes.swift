//
//  DataTypes.swift
//  Tracker
//
//  Created by Professor Foster on 5/5/21.
//

import Foundation

struct Expense {
    enum ExpenseCategories {
        // raw values start at 0 and increment by 1
        case travel         // 0
        case food           // 1
        case materials      // 2
        case tools          // 3
    }
    
    let name: String
    let amount: Double
    let category: ExpenseCategories
    
}

struct Order {
    let orderNumber: Int
    let clientName: String
    let clientPhoneNumber: Int
    let descriptionOfWork: String
    let quotedPrice: Double
    let deliverBy: Date
    
    let delivered: Bool
    let invoiceSent: Bool
    let paymentReceived: Bool
}

struct Mood {
    enum resposes {
        case 🥳
        case 🙂
        case 😞
        case 😡
    }
}
