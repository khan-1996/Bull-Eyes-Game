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
        .background(Color("BackgroundColor")).ignoresSafeArea()
    }
}

struct TopView: View {
    @Binding var game:Game
    var body: some View {
        HStack{
            RoundedViewStrokes(imageName: "list.dash")
            Spacer()
            RoundedViewFilled(imageName: "arrow.counterclockwise")
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


struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(game: .constant(Game()))
      
    }
}
