//
//  Car.swift
//  calcApp
//
//  Created by 長坂豪士 on 2019/09/30.
//  Copyright © 2019 Tsuyoshi Nagasaka. All rights reserved.
//

import Foundation


class Car {
    
    var frontWheel = 0
    var rearWheel = 0
    
    init() {
        frontWheel = 0
        rearWheel = 0
        
    }
    
    func drive() {
        
        print("運転開始！！")
        print("前輪　　\(frontWheel)")
        print("前輪　　\(rearWheel)")
    }
    
    func move(toBack: String) {
        print(toBack)
    }
    
    func plusAndMinus (num1:Int, num2:Int) -> Int {
        return num1 + num2
    }
    
}
