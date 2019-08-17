//
//  SupportTeamsSignup1VC.swift
//  AllegiancePractise
//
//  Created by John Pitts on 8/16/19.
//  Copyright © 2019 johnpitts. All rights reserved.
//

import UIKit

class SupportTeamsSignup1VC: UIViewController {
    
    @IBOutlet var swipeRecognizer: UISwipeGestureRecognizer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipedTheView(_:)))
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipedTheView(_:)))
        
        leftSwipe.direction = .left
        rightSwipe.direction = .right
        
        view.addGestureRecognizer(leftSwipe)
        view.addGestureRecognizer(rightSwipe)
    }
    
    @IBAction func swipedTheView(_ sender: UISwipeGestureRecognizer) {
        
        if (sender.direction == .left) {
            // Goto "findFansVC" storyboardID viewController
            performSegue(withIdentifier: "SwipeLeft1", sender: nil)
        }
        if (sender.direction == .right) {
            // goto "logoVC" storyboardID viewController
            performSegue(withIdentifier: "SwipeRight1", sender: nil)
        }
    }
    
    
    
    
    @objc func handleSwipes(_ sender:UISwipeGestureRecognizer)
    {
        
        print("called the wrong function!")
    }
    

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}