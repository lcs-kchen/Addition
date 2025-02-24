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
                Button {
                    viewModel.saveResult()
                    // DEBUG: Show how many items are in the resultHistory array
                    print("There are \(viewModel.resultHistory.count) elements in the resultHistory array.")
                } label: {
                    Text("Save")
                }
                .buttonStyle(.borderedProminent)
                .padding(.bottom)
                
                
                
                
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
            
            
            HStack {
                Text("History")
                    .bold()
                Spacer()
            }
            .padding(.vertical)
             
            
            HStack {
                Text("History")
                    .bold()
                Spacer()
            }
            .padding(.vertical)
            // Iterate over the history of results
            List(viewModel.resultHistory) { priorResult in
                ItemView(addition: priorResult)
            }
            .listStyle(.plain)
        }
        }
    }
    

#Preview {
    ContentView()
}
