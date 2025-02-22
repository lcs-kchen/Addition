//
//  ContentView.swift
//  Addition
//
//  Created by Haowen Chen on 2025-02-22.
//

import SwiftUI

struct ContentView: View {
    
    @State var viewModel = AdditionViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            if let addition = viewModel.addition {
                
                // Show the provided base, exponent, and result
                // in an arrangement that looks the same as how
                // we write a power on paper in math class
                
             
                
                HStack{
                    Text("\(addition.Augend.formatted())")
                        .font(.system(size: 40))
                    Text("+")
                        .font(.system(size: 20))
                    Text("\(addition.Addend.formatted())")
                        .font(.system(size: 40))
                    Text("=")
                    Text("\(addition.Sum.formatted())")
                        .font(.system(size: 40))
                }
                
                
                
                
            } else {
                
                // Show a message indicating that we are
                // awaiting reasonable input
                ContentUnavailableView(
                    "Unable to evaluate the result",
                    systemImage: "gear.badge.questionmark",
                    description: Text(viewModel.recoverySuggestion)
                )
                .frame(height: 300)
            }
            
            // INPUT
            TextField("Augend", text: $viewModel.providedAugend)
                .textFieldStyle(.roundedBorder)
            
            TextField("Addend", text: $viewModel.providedAddend)
                .textFieldStyle(.roundedBorder)
            
            // Extra space at bottom
            Spacer()
        }
    }
    
}

#Preview {
    ContentView()
}
