//
//  ContentView.swift
//  Dicee-swiftUI
//
//  Created by Darsh viroja  on 18/09/24.
//

import SwiftUI

struct ContentView: View {
    
   @State var leftDiceNumber = 1
   @State var rightDiceNumber = 1
    
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack() {
                Image("diceeLogo")
                
                Spacer()
                HStack {
                    ImageView(n: leftDiceNumber)
                        .padding(.horizontal)
                    ImageView(n: rightDiceNumber)
                    
                }
                .padding(.horizontal)
                Spacer()
                Button("Roll")
                {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }
                .font(.system(size: 50))
                .foregroundColor(.white)
                .padding(.horizontal)
                .background(Color.red)
                .padding(.vertical)
                
            }
        }
    }
}

#Preview {
    ContentView()
}


