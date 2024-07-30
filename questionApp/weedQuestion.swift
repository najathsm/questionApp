//
//  weedQuestion.swift
//  questionApp
//
//  Created by Scholar on 7/29/24.
//

import SwiftUI

struct weedQuestion: View {
    @State private var result = ""
    var body: some View {
        NavigationStack{
            VStack{
                Text("Which plant is considered a weed?")
                
                
                Button("Mint") {
                    result = "Yes! Most garderners prefer to grow mint in pots to stop the spread. "
                }
                .fontWeight(.bold)
                .buttonStyle(.borderedProminent)
                .tint(.green)
                
                Button("Marigold") {
                    result = "Not quite."
                }
                .buttonStyle(.borderedProminent)
                .tint(.orange)
                .fontWeight(.bold)
                
                Button("Petunias") {
                    result = "Hmm. Try again."
                }
                .buttonStyle(.borderedProminent)
                .tint(.purple)
                .fontWeight(.bold)
                
                
                Text(result)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                
                }
            
            }
        }
}

#Preview {
    weedQuestion()
}
