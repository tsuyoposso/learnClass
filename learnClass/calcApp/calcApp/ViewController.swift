//
//  ViewController.swift
//  calcApp
//
//  Created by 長坂豪士 on 2019/09/30.
//  Copyright © 2019 Tsuyoshi Nagasaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Car()クラスを継承したcarModelインスタンスを生成
    var carModel = Car()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        carModel.frontWheel = 10
        carModel.rearWheel = 10
        
        
    }

    
    @IBAction func doAction(_ sender: Any) {
        
        // Carクラスのdrive()メソッドを呼び出し
        carModel.drive()
        carModel.move(toBack: "後ろに行くよ！")
        let total = carModel.plusAndMinus(num1: carModel.frontWheel, num2: carModel.rearWheel)
        print("タイヤの合計数   \(total)")
    }
    
    

}

