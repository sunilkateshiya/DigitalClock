//
//  ViewController.swift
//  DigitalClock
//
//  Created by iFlame on 5/15/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var Label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    Timer.scheduledTimer(timeInterval: 0.1, target: self, selector:#selector(ViewController.updateTime), userInfo: nil, repeats: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateTime(){
        Label.text = DateFormatter.localizedString(from: Date(), dateStyle: DateFormatter.Style.none, timeStyle: DateFormatter.Style.full)
    }
    
    
       
 }

