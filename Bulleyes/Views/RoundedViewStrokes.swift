//
//  RoundedViewStrokes.swift
//  Bulleyes
//
//  Created by Khan on 04.08.23.
//

import SwiftUI

struct RoundedViewStrokes: View {
    var imageName:String
    var body: some View {
        Image(systemName:imageName)
            .font(.title)
            .frame(width: 56, height: 56).overlay(
                Circle().strokeBorder(Color("StrokeBorder"), lineWidth:2)
            )
                    
            
    }
}

struct RoundedViewFilled: View {
    var imageName:String
    var body: some View {
        Image(systemName:imageName)
            .font(.title)
            .frame(width: 56, height: 56).overlay(
                Circle().strokeBorder(Color("StrokeBorder"), lineWidth: 2)
            )
    }
}

struct RoundRextTextView: View {
    var text:String
    var body: some View {
        
        Text(text.lowercased())
            .kerning(-0.2)
            .font(.title3)
            .frame(width: 56, height: 56)
            .foregroundColor(Color("textViewColor"))
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 2)
                    .foregroundColor(Color.blue)
            )
        
       
    }
}

struct previewView: View{
    var body: some View{
        VStack{
            RoundedViewStrokes(imageName: "list.dash")
            RoundedViewFilled(imageName: "arrow.counterclockwise")
            RoundRextTextView(text: "100")
            
        }
    }
}

struct RoundedViewStrokes_Previews: PreviewProvider {
    static var previews: some View {
      previewView()
        previewView().preferredColorScheme(.dark)
    }
}
