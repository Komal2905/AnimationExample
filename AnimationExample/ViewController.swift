//
//  ViewController.swift
//  AnimationExample
//
//  Created by Vidya Ramamurthy on 07/01/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func animatedButtonPressed(sender: AnyObject) {
        let size : CGFloat = CGFloat( arc4random_uniform(40))+20
        let yPosition : CGFloat = CGFloat( arc4random_uniform(200))+20

        let ColorSquare = UIView()
        ColorSquare.backgroundColor = UIColor.blueColor()
        
        
        
        
    ColorSquare.layer.cornerRadius = ColorSquare.frame.size.width/2
        
   ColorSquare.frame =  CGRectMake(0, yPosition, size, size)
    ColorSquare.frame =  CGRect(x: 0, y: 120, width: 50, height: 50)
        self.view.addSubview(ColorSquare)
        //let options = UIViewAnimationOptions.Repeat // option for repeat animation
        //let options = UIViewAnimationOptions.Autoreverse | UIViewAnimationOptions.CurveEaseInOut
        // For autoReverse
        //  let options = UIViewAnimationOptions.CurveEaseInOut
        
        UIView.animateWithDuration(1.0, delay: 0.0, options: .CurveLinear, animations: {
            ColorSquare.backgroundColor = UIColor.redColor()
           
            ColorSquare.frame = CGRectMake(320-size, yPosition, size, size)
            },completion: { animationFinished in ColorSquare.removeFromSuperview()})

    }
    
    
    
    @IBOutlet weak var numberOfFishSlider: UISlider!
    @IBAction func fishButtonPressed(sender: AnyObject) {
//        let numofFish = Int(self.numberOfFishSlider.value)
//        for loopNumber in 0...numofFish{
        
            // set up some constants for the animation
            let duration : NSTimeInterval = 5.0
            let delay : NSTimeInterval = 0.0
            let options = UIViewAnimationOptions.CurveLinear
            
            // set up some constants for the fish
            let size : CGFloat = CGFloat( arc4random_uniform(40))+20
            let yPosition : CGFloat = CGFloat( arc4random_uniform(200))+20
            
            // create the fish and add it to the screen
            let fish = UIImageView()
            fish.image = UIImage(named: "images.jpg")
            fish.frame = CGRectMake(0, yPosition, size, size)
            self.view.addSubview(fish)
            
            // define the animation
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                
                // move the fish
                fish.frame = CGRectMake(320-size, yPosition, size, size)
                
                }, completion: { animationFinished in
                    
                    // remove the fish
                    fish.removeFromSuperview()
                    
            })
        
    
    }
    
    
    @IBAction func sharkButtonPressed(sender: AnyObject) {
        
        let duration : NSTimeInterval = 5.0
        let delay : NSTimeInterval = 0.0
        let options = UIViewAnimationOptions.CurveLinear
        
        // set up some constants for the fish
        let size : CGFloat = CGFloat( arc4random_uniform(40))+20
        let yPosition : CGFloat = CGFloat( arc4random_uniform(200))+20
        
        // create the fish and add it to the screen
        let shark = UIImageView()
        shark.image = UIImage(named: "shark.jpg")
        shark.frame = CGRectMake(0, yPosition, size, size)
        
        //shark.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
        self.view.addSubview(shark)
        let Fullrotation = CGFloat(M_PI * 2)
        // define the animation
        UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
            
            // move the fish
            shark.frame = CGRectMake(320-size, yPosition, size, size)
           // shark.transform = CGAffineTransformMakeRotation(Fullrotation)
            }, completion: { animationFinished in
                
                // remove the fish
                shark.removeFromSuperview()
                
        })

        
        
        ///For ROtation
//        
//        UIView.animateWithDuration(1.0, animations: {
//            // animating `transform` allows us to change 2D geometry of the object
//            // like `scale`, `rotation` or `translate`
//            shark.transform = CGAffineTransformMakeRotation(Fullrotation)
//        })
        
    }
    
    
    
    @IBAction func rotateButtonPressed(sender: AnyObject) {
        
        
        let square = UIView()
        square.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
        square.backgroundColor = UIColor.redColor()
        self.view.addSubview(square)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
      self.view.backgroundColor = UIColor(patternImage: UIImage(named: "ocean.jpg")!)
    
    }
    
    

}

