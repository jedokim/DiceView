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
              Button("Remove Dice") {
                  withAnimation{
                      numberOfDice -= 1
                  }
                
              }
              .disabled(numberOfDice <= 1)

              Button("Add Dice") {
                  withAnimation {
                      numberOfDice += 1
                  }
              }
              .disabled(numberOfDice >= 3)
          }
          .padding()
    }
}

#Preview {
    ContentView()
}
