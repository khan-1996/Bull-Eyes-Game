//
//  Game.swift
//  Bulleyes
//
//  Created by Khan on 02.08.23.
//

import Foundation

struct Game{
    var target=Int.random(in: 1...100)
    var score=0
    var round=1
    
    func points(sliderValue:Int) ->Int{
        let difference: Int=abs(target-sliderValue)
    
        let awardedPoints: Int=100-difference
    return awardedPoints
    }
   
}
