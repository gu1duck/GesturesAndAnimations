//
//  AnimationViewController.swift
//  Gestures
//
//  Created by Jeremy Petter on 2016-06-21.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import UIKit

class AnimationViewController: UIViewController {

    @IBOutlet weak var box: UIView!
    @IBOutlet weak var textField: UITextField!

    @IBAction func animate(sender: UIButton) {

//        UIView.animateWithDuration(1.0) { 
//            let destinationRect = CGRect(x: 100, y: 100, width: 100, height: 100)
//            self.box.frame = destinationRect
//            self.box.backgroundColor = .greenColor()
//            self.box.transform = CGAffineTransformMakeRotation(CGFloat(M_PI / 4))
//            self.box.alpha = 0.3
//        }

        UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, options: [], animations: {
            let destinationRect = CGRect(x: 100, y: 100, width: 300, height: 300)
            self.box.frame = destinationRect
            self.box.backgroundColor = .blueColor()
            self.box.transform = CGAffineTransformMakeRotation(CGFloat(M_PI / 4))
            }, completion: nil)
    }

    @IBAction func submit(sender: UIButton) {

        let duration = 0.5
        let numberOfKeyframes = 5.0

        let keyframeDuration = duration / numberOfKeyframes
        let percentKeyframeDuration = 1.0 / numberOfKeyframes

        let textFieldCenter = textField.center
        let defaultTransform = textField.transform

        UIView.animateKeyframesWithDuration(duration, delay: 0.0, options: [], animations: { 

            UIView.addKeyframeWithRelativeStartTime(0.0, relativeDuration: percentKeyframeDuration, animations: {

                let point = CGPoint(x: textFieldCenter.x + 10, y: textFieldCenter.y)
                self.textField.center = point
                self.textField.transform = CGAffineTransformMakeRotation(CGFloat(M_PI / 16.0))
            })

            UIView.addKeyframeWithRelativeStartTime(keyframeDuration, relativeDuration: percentKeyframeDuration, animations: {

                let point = CGPoint(x: textFieldCenter.x - 10, y: textFieldCenter.y)
                self.textField.center = point
                self.textField.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI / 16.0))
            })

            UIView.addKeyframeWithRelativeStartTime(keyframeDuration * 2, relativeDuration: percentKeyframeDuration, animations: {

                let point = CGPoint(x: textFieldCenter.x + 10, y: textFieldCenter.y)
                self.textField.center = point
                self.textField.transform = CGAffineTransformMakeRotation(CGFloat(M_PI / 16.0))
            })

            UIView.addKeyframeWithRelativeStartTime(keyframeDuration * 3, relativeDuration: percentKeyframeDuration, animations: {

                let point = CGPoint(x: textFieldCenter.x - 10, y: textFieldCenter.y)
                self.textField.center = point
                self.textField.transform = CGAffineTransformMakeRotation(CGFloat(-M_PI / 16.0))
            })

            UIView.addKeyframeWithRelativeStartTime(keyframeDuration * 4, relativeDuration: percentKeyframeDuration, animations: {

                let point = textFieldCenter
                self.textField.center = point
                self.textField.transform = defaultTransform

            })

            }, completion: nil)
    }
}
