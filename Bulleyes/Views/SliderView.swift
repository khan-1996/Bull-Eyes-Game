//
//  SliderView.swift
//  Bulleyes
//
//  Created by Khan on 03.08.23.
//

import SwiftUI

struct sliderStartNumber: View {
    var sliderStartNumber:String
    var body: some View {
        Text(sliderStartNumber).bold().font(.system(size: 20.0))
    }
}

struct sliderEndNunber:View{
    var sliderEndNumber:String
    var body: some View{
        Text(sliderEndNumber).bold().font(.system(size: 20.0))
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            sliderStartNumber(sliderStartNumber: "0")
            sliderEndNunber(sliderEndNumber: "100")
        }
        
    }
}
