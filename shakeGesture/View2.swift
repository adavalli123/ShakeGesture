//
//  View2.swift
//  shakeGesture
//
//  Created by Srikanth Adavalli on 3/25/17.
//  Copyright © 2017 Srikanth Adavalli. All rights reserved.
//

import UIKit

class View2: UIView {

    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
//        Button1.addTarget(self, action: #selector(View2.button1Tapped), for: UIControlEvents.touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    @IBAction func buttonTapped1(_ sender: Any) {
        let controller = ViewController2(nibName: "ViewController2", bundle: nil) as ViewController2
        var topVC = UIApplication.shared.keyWindow?.rootViewController
        while((topVC!.presentedViewController) != nil) {
            topVC = topVC!.presentedViewController
        }
        window?.viewWithTag(50)?.removeFromSuperview()
        topVC?.present(controller, animated: true, completion: nil)
    }
    
//    func button1Tapped() {
//       let controller = ViewController2(nibName: "ViewController2", bundle: nil) as ViewController2
//        var topVC = UIApplication.shared.keyWindow?.rootViewController
//        while((topVC!.presentedViewController) != nil) {
//            topVC = topVC!.presentedViewController
//        }
//        topVC?.present(controller, animated: true, completion: nil)
//    }

}
