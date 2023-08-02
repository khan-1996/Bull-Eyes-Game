//
//  ContentView.swift
//  Bulleyes
//
//  Created by Khan on 01.08.23.
//

import SwiftUI

struct ContentView: View {
    @State private var isAlertVisisble=false
    // binding
    @State private var sliderValue=50.0
    @State private var game: Game = Game()
    var body: some View {
       
        VStack {
            Text("🎯🎯🎯\nTHIS IS A FUNNY GAME YOU")
                .bold().multilineTextAlignment(.center)
                .font(.footnote)
                .lineSpacing(10.0)
                .kerning(2.0)
            
            Text(String(game.target)).bold().font(.system(size: 36.0))
                .kerning(-1)
                .foregroundColor(Color.black)
            
            HStack{
                Text("0").bold().font(.system(size: 20.0))
                Slider(value: $sliderValue, in:1.0...100.0)
                Text("100").bold().font(.system(size: 20.0))
            }
            Button("Hit Me") {
                isAlertVisisble=true
            }.alert(
                "Hello, there",
                isPresented: $isAlertVisisble,
                    actions: {
                        Button("Awsome"){
                            
                        }
                    },
                message:{
                    let roundedSlider=Int(sliderValue)
                Text("""
            The Slider Value is  \(roundedSlider).
            Your score is \(game.points(sliderValue: roundedSlider)) points
""")
                }
)
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
