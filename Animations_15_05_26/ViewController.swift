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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         let image: UIImage = UIImage(named: "stick1.png")!
        imageView = UIImageView(image: image)
        view.addSubview(imageView)
        imageView.layer.position = CGPointMake(20, 100)
        
        let image2: UIImage = UIImage(named: "stick1.png")!
        imageView2 = UIImageView(image: image2)
        view.addSubview(imageView2)
        imageView2.layer.position = CGPointMake(20, 160)
    }
    
    @IBAction func button1(sender: AnyObject) {
        
        var animation: CABasicAnimation = CABasicAnimation()
        animation.keyPath = "position.x"
        animation.fromValue = 20 // required
        animation.byValue = 280
        animation.toValue = nil//200
        animation.duration = 2.5
        animation.fillMode = kCAFillModeBackwards // required
        
        imageView.layer.addAnimation(animation, forKey: "basic")
        imageView.layer.position = CGPointMake(300, 100)
        
        animation.beginTime = CACurrentMediaTime() + 0.5
        animation.duration = 1.9
        
        imageView2.layer.addAnimation(animation, forKey: "basic2")
        imageView2.layer.position = CGPointMake(300, 160)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

