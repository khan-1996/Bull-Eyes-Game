//
//  ContentView.swift
//  Bulleyes
//
//  Created by Khan on 01.08.23.
//

import SwiftUI

struct ContentView: View {
    @State  var isAlertVisisble=false
    // binding
    @State  var sliderValue=50.0
    @State  var game=Game()
  
    var body: some View {
       
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            VStack {
                instructionView(game: $game)
                sliderView(sliderValue: $sliderValue)
                hitMeButton(isAlertVisisble: $isAlertVisisble, sliderValue: $sliderValue, game: $game)
             
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
}

    struct sliderView:View{
        @Binding var sliderValue:Double
        var body: some View{
            
            HStack{
                SliderLableText(text: "1")
                
                Slider(value: $sliderValue, in:1.0...100.0)
                
                SliderLableText(text: "100")
                
            }.padding()
        }
    }
    
struct hitMeButton:View{
    @Binding  var isAlertVisisble:Bool
    // binding
    @Binding  var sliderValue:Double
    @Binding  var game: Game
    
    var body: some View{
        
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

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
            ContentView()
                .previewDevice("iPhone 14 Pro Max")
                .preferredColorScheme(.dark)
        }
    }

