//
//  ViewController.swift
//  Animations_15_05_26
//
//  Created by Chris Wardman on 26/05/2015.
//  Copyright (c) 2015 Chris Wardman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let testView: UIView = UIView(frame: CGRectMake(20, 100, 20, 20))
        
        view.addSubview(testView)
        
        let image: UIImage = UIImage(named: "stick1.png")!
        let imageView: UIImageView = UIImageView(image: image)
        
        
        testView.addSubview(imageView)
        
        var animation: CABasicAnimation = CABasicAnimation()
            animation.keyPath = "position.x"
            animation.fromValue = 20
            animation.toValue = 280
            animation.duration = 3
        
        testView.layer.addAnimation(animation, forKey: "basic")
        
        testView.layer.position = CGPointMake(280, 100)
    }
    
    
    @IBOutlet weak var testView: UIView!

}

