//
//  ModelView.swift
//  Addition
//
//  Created by Haowen Chen on 2025-02-22.
//

import Foundation
@Observable

class AdditionViewModel {
    //Mark: Stored Properties
    var providedAugend: String
    var providedAddend: String
    var recoverySuggestion: String
    
    //Mark: Computed Properites
    var addition: Addition? {
        guard let augend = Double(providedAugend) else {
            recoverySuggestion = "Please enter an integer for the augend."
            
            return nil
        }
        
        guard let addend = Double(providedAddend) else {
            recoverySuggestion = "Please enter an integer for the addend."
            return nil }
        
        recoverySuggestion = ""
        return Addition(Augend: augend, Addend: addend)
        
    }
    
    
    //Mark: Initializer
    init(
        providedAugend: String = "",
        providedAddend: String = "",
        recoverySuggestion: String = ""
    ) {
        self.providedAugend = providedAugend
        self.providedAddend = providedAddend
        self.recoverySuggestion = recoverySuggestion
    }
}

