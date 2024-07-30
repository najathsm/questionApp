//
//  ContentView.swift
//  questionApp
//
//  Created by Scholar on 7/29/24.
//

import SwiftUI

struct ContentView: View {
    @State private var result = ""
    
    var body: some View {
        
            NavigationStack{
                VStack(spacing: 30){
                    Text("Which plant is a perennial in NYC?")
                        .font(.title2)
                    Text("Hint: Perennial plants are plants that live for 3 years or longer.")
                        .font(.footnote)
                    
                    
                    Button("Zinnia") {
                        result = "Hmm. Try again. Zinnias only live for a year."
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.pink)
                    .fontWeight(.bold)
                    
                    Button("Nasurtium") {
                        result = "Not quite. Nasurtiums don't return the next year after they were planted."
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.orange)
                    .fontWeight(.bold)
                    
                    
                    Button("Black-eyed Susan") {
                        result = "Correct! Black-eyed Susans' growing cycles are 3 years or longer."
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.yellow)
                    .fontWeight(.bold)
                    
                    Text(result)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                    
                    
                    NavigationLink(destination: annualQuestion()) {
                        Text("Next Gardening Trivia!")
                    }
                }
                
            }
    }
}

#Preview {
    ContentView()
}
