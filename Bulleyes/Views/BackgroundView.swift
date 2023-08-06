//
//  BackgroundView.swift
//  Bulleyes
//
//  Created by Khan on 04.08.23.
//

import SwiftUI

struct BackgroundView: View {
    @Binding var game:Game
    var body: some View {
        VStack{
            TopView(game: $game)
            Spacer()
            BottomView(game: $game)
        }.padding()
        .background(
        RingsView())
    }
}

struct TopView: View {
    @Binding var game:Game
    var body: some View {
        HStack{
            Button {
                game.restart()
            } label: {
                RoundedViewFilled(imageName: "arrow.counterclockwise")
            }
            Spacer()
            RoundedViewStrokes(imageName: "list.dash")
       
       
        }
    }
}

struct NumberView:View{
    var title:String
    var text:String
    var body: some View
    {
        VStack(spacing:5){
            labelText(text: title)
            RoundRextTextView(text: text)
        }
    }
}

struct BottomView:View{
    @Binding var game:Game
    
    var body: some View{
        
        HStack{
            
            NumberView(title: "Score", text: String(game.score))
            Spacer()
            NumberView(title: "Score", text: String(game.score))
        }
        }
    }

struct RingsView:View{
    @Environment(\.colorScheme) var colorScheme
    var body: some View{
        ZStack{
            Color("BackgroundColor").ignoresSafeArea()
            
            ForEach(1..<6){
                ring in
                let size=CGFloat(100*ring)
                let opacity = colorScheme == .dark ? 0.1 : 0.3
                Circle().stroke(lineWidth: 20).fill(
                    RadialGradient(gradient: Gradient(colors: [Color("RingsColor").opacity(opacity), Color("RingsColor").opacity(0.3*0.8)]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 100, endRadius: 300)
                )
                    .frame(width: size, height: size)
            }
            
           
        }
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
      
    }
}
