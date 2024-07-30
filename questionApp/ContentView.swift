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
                
                
                Button("Zinnias") {
                    result = "Hmm. Try again."
                }
                .buttonStyle(.borderedProminent)
                .tint(.pink)
                .fontWeight(.bold)
                
                Button("Nasurtiums") {
                    result = "Not quite."
                }
                .buttonStyle(.borderedProminent)
                .tint(.orange)
                .fontWeight(.bold)

    
                Button("Black-eyed Susans") {
                    result = "Correct! Black-eyed Susans return every year."
                }
                .buttonStyle(.borderedProminent)
                .tint(.yellow)
                .fontWeight(.bold)
                
                Text(result)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                
                Spacer()
                      .frame(height: 40)
                
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
