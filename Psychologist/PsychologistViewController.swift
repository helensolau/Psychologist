//
//  ViewController.swift
//  Psychologist
//
//  Created by Helen Lau on 7/5/16.
//  Copyright © 2016 Helen Lau. All rights reserved.
//

import UIKit

class PsychologistViewController: UIViewController {
    
    @IBAction func nothing(sender: UIButton) {
        performSegueWithIdentifier("nothing", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destination = segue.destinationViewController as? UIViewController
        if let navCon = destination as? UINavigationController {
            destination = navCon.visibleViewController
        }
        if let hvc = destination as? HapinessViewController {
            if let identifier = segue.identifier {
                switch identifier {
                    case "sad":
                        hvc.happiness = 0
                    case "happy":
                        hvc.happiness = 100
                    case "nothing":
                        hvc.happiness = 25
                    default:
                        hvc.happiness = 50
                }
            }
        }
    }
}

