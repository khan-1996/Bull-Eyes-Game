//
//  Game.swift
//  Bulleyes
//
//  Created by Khan on 02.08.23.
//

import Foundation

struct Game{
    var target:Int=Int.random(in: 1...100)
    var score:Int=0
    var round:Int=1
    
    func points(sliderValue:Int) ->Int{
        var difference: Int=abs(target-sliderValue)
    
        var awardedPoints: Int=100-difference
    return awardedPoints
    }
   
}