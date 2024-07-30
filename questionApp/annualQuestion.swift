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
            VStack{
                Text("Which plant is an annual in NYC?")
                
                
                Button("Phlox") {
                    result = "Correct!"
                }
                .buttonStyle(.borderedProminent)
                .tint(.blue)
                .fontWeight(.bold)
                
                Button("Violet") {
                    result = "Not quite."
                }
                .buttonStyle(.borderedProminent)
                .tint(.purple)
                .fontWeight(.bold)
                
                Button("Cosmos") {
                    result = "Correct!"
                }
                .buttonStyle(.borderedProminent)
                .tint(.pink)
                .fontWeight(.bold)
                
                Text(result)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                
                Spacer()
                      .frame(height: 100)
                
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
