//
//  ContentView.swift
//  DiceView
//
//  Created by Jeremy Kim on 4/27/25.
//

import SwiftUI

struct ContentView: View {
    @State private var numberOfDice: Int = 1
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
            
                .padding()
        }
        
//        HStack {
//            DiceView()
//            DiceView()
//            DiceView()
//        }
        
        HStack {
            ForEach(1...numberOfDice, id: \.description) { _ in
                DiceView()
            }
        }
        
        HStack {
              Button("Remove Dice", systemImage: "minus.circle.fill") {
                  withAnimation{
                      numberOfDice -= 1
                  }
                
              }
              .disabled(numberOfDice <= 1)

              Button("Add Dice", systemImage: "plus.circle.fill") {
                  withAnimation {
                      numberOfDice += 1
                  }
              }
              .disabled(numberOfDice >= 6)
          }
          .padding()
          .labelStyle(.iconOnly)
          .font(.title)
    }
}

#Preview {
    ContentView()
}
