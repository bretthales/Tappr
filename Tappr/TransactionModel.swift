//
//  TransactionModel.swift
//  Tappr
//
//  Created by Brett Hales on 23/2/17.
//  Copyright © 2017 Brett Hales. All rights reserved.
//

import Foundation
import Cocoa


class TransactionModel: model {
    
    var businessName : String
    var receiptNumber : String
    var description : String
    var amount : String
    
    init(businessName: String, receiptNumber: String, description: String, amount: String) {
        self.businessName = businessName
        self.receiptNumber = receiptNumber
        self.description = description
        self.amount = amount
    }
    
    
}
