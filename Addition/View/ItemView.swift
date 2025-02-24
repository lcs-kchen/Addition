//
//  ItemView.swift
//  Addition
//
//  Created by Haowen Chen on 2025-02-23.
//

import SwiftUI
 
struct ItemView: View {
    
    // MARK: Stored properties
    let addition: Addition
    
    // MARK: Computed properties
    var body: some View {
        
        HStack {
            // Show the provided base, exponent, and result
            // in an arrangement that looks the same as how
            // we write a power on paper in math class
            HStack(alignment: .center) {
                HStack(alignment: .top) {
                    
                    Text("\(addition.Augend.formatted())")
                        .font(.largeTitle)
                    
                    Text("+")
                    
                    Text("\(addition.Addend.exponent)")
                        .font(.largeTitle)
                }
                HStack {
 
                    Text("=")
                        .font(.largeTitle)
 
                    Text("\(addition.Sum.formatted())")
                        .font(.largeTitle)
                }
            }
            .lineLimit(1)
            .minimumScaleFactor(0.5)
            
            Spacer()
        }
        
    }
}
 

