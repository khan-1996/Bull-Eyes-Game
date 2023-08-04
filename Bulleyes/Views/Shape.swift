//
//  Shape.swift
//  Bulleyes
//
//  Created by Khan on 04.08.23.
//

import SwiftUI

struct Shape: View {
    var body: some View {
       
        HStack{
            Circle()
                .strokeBorder(Color.gray, lineWidth: 20)
                .frame(width: 100,height: 100)
                
            Rectangle()
                .strokeBorder(Color.red, lineWidth: 20)
                .frame(width: 100, height: 100)
            
            Ellipse()

        }

        
    }
}

struct Shape_Previews: PreviewProvider {
    static var previews: some View {
        Shape()
    }
}
