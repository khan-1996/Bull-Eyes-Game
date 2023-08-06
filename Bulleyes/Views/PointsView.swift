//
//  PointsView.swift
//  Bulleyes
//
//  Created by Khan on 06.08.23.
//

import SwiftUI

struct PointsView: View {
    var body: some View {
        
       
        VStack(spacing:10)
        {
            InstructionView(text: "The Slider Value is ")
            BigNumberText(bigText: "10")
            bodyText(text: "Your Scored 200 Points\n 😍😍😍")
            Button {
                // start new Round
            } label: {
                ButtonText(text: "Start New Round")
            }

        }
        .padding()
            .frame(maxWidth:300)
            .background(Color("BackgroundColor"))
            .cornerRadius(20)
            .shadow(radius: 10,x:5, y:5)
    }
    
}

struct PointsView_Previews: PreviewProvider {
    static var previews: some View {
        PointsView()
        PointsView().preferredColorScheme(.dark)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
