//
//  ViewController.swift
//  VoiceRecorder
//
//  Created by race on 15/12/20.
//  Copyright © 2015年 race. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var animatorView: UIView!
    @IBOutlet weak var imageViewBgLevel0: UIView!
    @IBOutlet weak var imageViewBgLevel1: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.fromValue = 0.88
        pulse.toValue = 1.12
        pulse.timingFunction = CAMediaTimingFunction(controlPoints: 0.42, 0.0, 0.58, 1.0)
        pulse.duration = 0.3
//        pulse.beginTime = CACurrentMediaTime() + 0.15
        pulse.autoreverses = true
        pulse.repeatCount = Float.infinity
        animatorView.layer.addAnimation(pulse, forKey: nil)
    }

    override func viewWillAppear(animated: Bool) {
        animatorView.layer.cornerRadius = animatorView.frame.width/2
        imageViewBgLevel0.layer.cornerRadius = imageViewBgLevel0.frame.width/2
        imageViewBgLevel1.layer.cornerRadius = imageViewBgLevel1.frame.width/2
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}

