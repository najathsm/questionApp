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
            VStack(spacing: 30){
                Text("Which plant is considered a weed?")
                
                
                Button("Mint") {
                    result = "Yes! Most garderners prefer to grow mint in pots to stop the weed-like tendency it has to spread. "
                }
                .fontWeight(.bold)
                .buttonStyle(.borderedProminent)
                .tint(.green)
                
                Button("Marigold") {
                    result = "Not quite. Marigold tend to stay to itself in a bunch. Not very weed-like."
                }
                .buttonStyle(.borderedProminent)
                .tint(.orange)
                .fontWeight(.bold)
                
                Button("Coneflower") {
                    result = "Hmm. Try again. Coneflowers are actually native to Eastern North American. Not usually considered a weed."
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
