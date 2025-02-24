//
//  Addition.swift
//  Addition
//
//  Created by Haowen Chen on 2025-02-22.
//

import Foundation

struct Addition: Identifiable {
    //Mark: Stored Properties
    let id = UUID()
    var Augend: Double
    var Addend: Double
    
    
    
    var Sum: Double {
        var solution = 1.0
        solution = Augend + Addend
        return solution
    }
}
