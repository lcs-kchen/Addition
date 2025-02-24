//
//  ModelView.swift
//  Addition
//
//  Created by Haowen Chen on 2025-02-22.
//

import Foundation
@Observable

class AdditionViewModel {
    
    var resultHistory: [Addition] = []
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
    // MARK: Function(s)
    func saveResult() {
        
        // When there is a valid power based on user input...
        if let addition = self.addition {
            
            // ... save that evaluated power at the top of the history of
            // results
            //
            // NOTE: By inserting the newly evaluated power at the top of
            //       the array, we ensure the user sees
            //       the most recent result first.
            self.resultHistory.insert(addition, at: 0)
        }
        
    }
}

