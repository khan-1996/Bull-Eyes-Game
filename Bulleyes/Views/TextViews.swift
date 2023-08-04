//
//  TextViews.swift
//  Bulleyes
//
//  Created by Khan on 03.08.23.
//

import SwiftUI

struct InstructionView: View {
    var text:String
    var body: some View {
        Text(text.uppercased())
            .bold().multilineTextAlignment(.center)
            .font(.body)
            .lineSpacing(10.0)
            .kerning(2.0)
           
            .foregroundColor(Color("textViewColor"))
    }
}

struct BigNumberText:View{
    var bigText:String
    var body: some View{
        
        Text(bigText)
            .bold()
            .font(.system(size: 36.0))
            .kerning(-1)
            .foregroundColor(Color("textViewColor"))
    }
}

struct SliderLableText:View{
    var text:String
    var body: some View {
        Text(text).bold().font(.system(size: 20.0))
    }
}

struct labelText:View{
    var text:String
    var body: some View{
        
        Text(text.uppercased())
            .bold()
            .font(.caption)
            .kerning(-1)
            .foregroundColor(Color("textViewColor"))
    }
}


struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InstructionView(text: "instruction")
            BigNumberText(bigText: "999")
            SliderLableText(text: "1")
            labelText(text: "Score")
        }
      
    }
}
