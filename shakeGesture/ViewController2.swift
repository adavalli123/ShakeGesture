//
//  ViewController2.swift
//  shakeGesture
//
//  Created by Srikanth Adavalli on 3/25/17.
//  Copyright © 2017 Srikanth Adavalli. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if self.presentingViewController != nil {
//            s
//        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        let window = UIApplication.shared.keyWindow
        window?.viewWithTag(50)?.isHidden = false
    }

    @IBAction func buttonTapped(_ sender: Any) {
        let window = UIApplication.shared.keyWindow
        window?.viewWithTag(50)?.removeFromSuperview()
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
