//
//  ContentView.swift
//  DiceAppSUI
//
//  Created by Тимур on 19.09.2023.
//

import SwiftUI

struct ContentView: View {
    @State var leftDice = 1
    @State var rightDice = 2
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDice)
                    DiceView(n: rightDice)
                }
                .padding(.horizontal)
                Spacer()
                
                Button(action: {
                    self.leftDice = Int.random(in: 0...6)
                    self.rightDice = Int.random(in: 0...6)

                }) {
                    Text("ROLL")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                }
                .background(Color.red)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
