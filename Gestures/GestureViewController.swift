//
//  RotateViewController.swift
//  Gestures
//
//  Created by Jeremy Petter on 2016-06-21.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import UIKit

class GestureViewController: UIViewController {

    @IBOutlet weak var redBox: UIView!
    @IBOutlet weak var purpleBox: UIView!
    @IBOutlet weak var greenBox: UIView!

    @IBAction func tappedRedBox(sender: UITapGestureRecognizer) {
        print("tapped the red box")
    }

    @IBAction func pinchedPurpleBox(sender: UIPinchGestureRecognizer) {
        purpleBox.transform = CGAffineTransformMakeScale(sender.scale, sender.scale)
    }
    @IBAction func rotatedGreenBox(sender: UIRotationGestureRecognizer) {
        greenBox.transform = CGAffineTransformMakeRotation(sender.rotation)
    }
    @IBAction func swipeDetected(sender: UISwipeGestureRecognizer) {
        print("swiped up!")
    }
}
