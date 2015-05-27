//
//  ViewController.swift
//  Animations_15_05_26
//
//  Created by Chris Wardman on 26/05/2015.
//  Copyright (c) 2015 Chris Wardman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageView: UIImageView!
    var imageView2: UIImageView!
    var isFirstRun: Bool = true
    var isFirstRun2: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         let image: UIImage = UIImage(named: "stick1.png")!
        imageView = UIImageView(image: image)
        
        let image2: UIImage = UIImage(named: "stick1.png")!
        imageView2 = UIImageView(image: image2)

        view.addSubview(imageView)
        imageView.layer.position = CGPointMake(20, 100)
        
        view.addSubview(imageView2)
        imageView2.layer.position = CGPointMake(20, 160)
    }
    
    @IBAction func button1(sender: AnyObject) {
        
        var animation: CABasicAnimation = CABasicAnimation()
        animation.keyPath = "position.x"
        animation.fromValue = 20
        animation.byValue = nil//180
        animation.toValue = 200
        animation.duration = 2

        imageView.layer.addAnimation(animation, forKey: "basic")
        

        imageView.layer.position = CGPointMake(200, 100)
        
//        if imageView.layer.position == CGPointMake(200, 100) && isFirstRun {
//            println("me")
//        }

    
        animation.beginTime = CACurrentMediaTime() + 0.5
        
        if imageView2.layer.position == CGPointMake(200, 160) {
            println("here")
        }
        
        imageView2.layer.addAnimation(animation, forKey: "basic")
        
        if imageView2.layer.position == CGPointMake(200, 160) {
            println("here")
        }
        
        imageView2.layer.position = CGPointMake(200, 160)
        
        if imageView2.layer.position == CGPointMake(200, 160) && isFirstRun2 {
            println("here")
            isFirstRun = false
            imageView2.layer.position = CGPointMake(20, 160)
        }
        
        if animation.timeOffset == 0 {
            println("dd")
        }
        
    
    }
    
    
    @IBAction func button02(sender: AnyObject) {
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

