//
//  ViewController.swift
//  Shakeable
//
//  Created by KaiChieh on 22/03/2018.
//  Copyright © 2018 KaiChieh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var btn: UIButton!

    @IBAction func btnClick(_ sender: UIButton) {
        btn.shake()
//        self.view.shake()
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
extension UIView {
    func shake() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = [self.center.x - 20.0, self.center.y]
//        animation.fromValue = NSValue(CGPoint: CGPointMake(self.center.x - 4.0, self.center.y))
//        animation.toValue = NSValue(CGPoint: CGPointMake(self.center.x + 4.0, self.center.y))
        animation.toValue = [self.center.x + 20.0, self.center.y]
        layer.add(animation, forKey: "position")
    }
}

