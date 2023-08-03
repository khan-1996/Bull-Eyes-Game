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
       
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack {
                instructionView(game: $game)
                
                HStack{
                    Text("0").bold().font(.system(size: 20.0))
                    Slider(value: $sliderValue, in:1.0...100.0)
                    Text("100").bold().font(.system(size: 20.0))
                }.padding()
                Button("Hit Me".uppercased()) {
                    isAlertVisisble=true
                }.padding(20.0)
                    .background(Color("ButtonColor"))
                .foregroundColor(Color.white)
                .cornerRadius(21.0)
                .bold()
                .font(.title3)
                
    
                
                .alert(
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
    """).foregroundColor(Color("textViewColor"))
                    }
    )
            }
        }
       
    }
}

struct instructionView:View{
    @Binding var game:Game
    var body: some View{
        
        VStack{
            InstructionView(text: "🎯🎯🎯\n THIS IS A FUNNY GAME FOR YOU").padding(.horizontal,30)
            
            BigNumberText(bigText: String(game.target))
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
            ContentView()
                .previewDevice("iPhone 14 Pro Max")
                .preferredColorScheme(.dark)
        }
    }
}
