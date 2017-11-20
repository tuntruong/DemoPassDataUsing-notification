//
//  ViewController.swift
//  DemoPassDataOtherWay
//
//  Created by Cuong15tr on 11/14/17.
//  Copyright © 2017 Cuong15tr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var number : Int?
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,selector: #selector(showData(notification:)),name: NSNotification.Name(rawValue: myNotifiKey),object: nil)
    }
    
    @objc func showData(notification: Notification) {
        if let message = notification.userInfo {
            if let msg = message ["message"] as? Int{
                label.text = "\(msg)"
            }
        }
    }
        
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



