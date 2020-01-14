//
//  ContentView.swift
//  Dicee-IOS13-Swift UI
//
//  Created by cate on 11/1/19.
//  Copyright © 2019 cate. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("GreenBackground")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
            
                Button(action: {
                self.leftDiceNumber = Int.Random(1...6)
                self.rightDiceNumber = Int.Random(1...6)
            })
            {
                .foregroundColor(.white)
                .backgroundColor(.orange)
                .frame(width: 80.0, height: 50.0)
                    .overlay(Text: "Roll")
                        }
                     Spacer()
                        }
                    }
                }
            }
        


    struct DiceView: View {
        var n: Int
        var body: some View{
            Image("dice\(n)")
            .resizable()
            .aspectRatio( 1, contentMode: .fit)
            .padding()
        }
    }
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

