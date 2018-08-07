//
//  ViewController.swift
//  BasicSimpleAnimations
//
//  Created by Bhagya on 07/08/18.
//  Copyright © 2018 Bhagya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var animatedView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initalAnimation()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initalAnimation(){
        animatedView.transform = CGAffineTransform.init(scaleX: 0.2, y: 0.2)
       
//        UIView.animate(withDuration: 0.5, animations: {
//            self.animatedView.transform = CGAffineTransform.init(scaleX: 1.5, y: 1.5)
//
//        }) { (iscompleted) in
//            
//            self.animatedView.transform = .identity
//        }
//
        
        UIView.transition(with: animatedView, duration: 1.0, options: UIViewAnimationOptions.transitionCurlUp, animations: {
            self.animatedView.transform = CGAffineTransform.init(scaleX: 1.5, y: 1.5)

        }) { (iscompleted) in
            self.animatedView.transform = .identity
        }
        
    }


}

