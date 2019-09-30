//
//  ViewController.swift
//  imageTimer
//
//  Created by 長坂豪士 on 2019/09/30.
//  Copyright © 2019 Tsuyoshi Nagasaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet var startButton: UIButton!
    
    @IBOutlet var stopButton: UIButton!
    
    var timer = Timer()
    
    var count = Int()
    
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        count = 0
        
        stopButton.isEnabled = true
        
        for i in 0..<5 {
            let image = UIImage(named: "\(i)")
            imageArray.append(image!)
            
        }
        imageView.image = UIImage(named: "0")
    }
    
    func startTimer() {
        // タイマーを回す。0.2秒ごとに関数を走らせる
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
    }
    
    @objc func timerUpdate() {
        count += 1
        if count > 4 {
            count = 0
        }
        imageView.image = imageArray[count]
        
    }
    
    
    @IBAction func start(_ sender: Any) {
        
        // imageViewのimageに画像を反映していく
        
        // startボタンを押せなくする
        startButton.isEnabled = false
        stopButton.isEnabled = true
        startTimer()
    }
    
    @IBAction func stop(_ sender: Any) {
        // startボタンを押せるようにする
        startButton.isEnabled = true
        stopButton.isEnabled = false
        
        timer.invalidate()
    }
    
}

