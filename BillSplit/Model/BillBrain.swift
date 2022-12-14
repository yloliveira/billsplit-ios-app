//
//  BillBrain.swift
//  BillSplit
//
//  Created by Yan Oliveira on 07/09/22.
//

struct BillBrain {
    var total: Float?
    var description: String?
    
    mutating func calculate(value: Float, tip: Float, quantity: Float) {
        let totalWithTip = value + (value * (tip / 100))
        
        total = totalWithTip / quantity
        description = "Dividido entre \(String(format: "%.0f", quantity)) pessoas, com \(String(format: "%.0f", tip))% de acréscimo."
    }
    
    func getTotal() -> Float {
        return total ?? 0.0
    }
    
    func getDescription() -> String {
        return description ?? ""
    }
}
