//
//  annualQuestion.swift
//  questionApp
//
//  Created by Scholar on 7/29/24.
//

import SwiftUI

struct annualQuestion: View {
    @State private var result = ""
    var body: some View {
        NavigationStack{
            VStack(spacing: 30){
                Text("Which plant is an annual in NYC?")
                    .font(.title2)
                Text("Hint: Annual plants are plants that grow for only one year.")
                    .font(.footnote)
                
                
                Button("Phlox") {
                    result = "Hmm. Try again. Phlox lives for longer than a year."
                }
                .buttonStyle(.borderedProminent)
                .tint(.blue)
                .fontWeight(.bold)
                
                Button("Violet") {
                    result = "Not quite. Violets return years after they are grown."
                }
                .buttonStyle(.borderedProminent)
                .tint(.purple)
                .fontWeight(.bold)
                
                Button("Cosmo") {
                    result = "Correct! Cosmos complete their growing cycle in one year."
                }
                .buttonStyle(.borderedProminent)
                .tint(.pink)
                .fontWeight(.bold)
                
                Text(result)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                
                
                NavigationLink(destination: weedQuestion()) {
                    Text("Next Gardening Trivia!")
                }
            }
        }

    }
}

#Preview {
    annualQuestion()
}
