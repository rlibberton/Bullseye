//
//  Game.swift
//  Bullseye
//
//  Created by Racheal Libberton on 3/4/22.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        //var = variable; let = constant
        //good rule of thumb is to prefer let over var
        100 - abs(target - sliderValue)
    }
}
