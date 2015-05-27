//
//  ViewController.swift
//  Animations_15_05_26
//
//  Created by Chris Wardman on 26/05/2015.
//  Copyright (c) 2015 Chris Wardman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var testView: UIView!
    var testView2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testView = UIView(frame: CGRectMake(20, 100, 20, 20))
        testView2 = UIView(frame: CGRectMake(20, 140, 20, 20))
        
        view.addSubview(testView)
        view.addSubview(testView2)
        
        let image: UIImage = UIImage(named: "stick1.png")!
        let imageView: UIImageView = UIImageView(image: image)
        
        let image2: UIImage = UIImage(named: "stick1.png")!
        let imageView2: UIImageView = UIImageView(image: image2)
        
        testView.addSubview(imageView)
        testView.layer.position = CGPointMake(20, 100)
        
        testView2.addSubview(imageView2)
        testView2.layer.position = CGPointMake(20, 140)


    }
    
    @IBAction func button1(sender: AnyObject) {
        
        var animation: CABasicAnimation = CABasicAnimation()
        animation.keyPath = "position.x"
        animation.fromValue = 20
        animation.byValue = 180
        animation.duration = 3
        
        testView.layer.addAnimation(animation, forKey: "basic")
        testView.layer.position = CGPointMake(200, 100)
        
        animation.beginTime = CACurrentMediaTime() + 0.5
        
        testView2.layer.addAnimation(animation, forKey: "basic")
        testView2.layer.position = CGPointMake(20, 140)
        testView2.layer.position = CGPointMake(200, 140)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

