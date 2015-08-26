//
//  ViewController.swift
//  HolaNotifications
//
//  Created by Mica Huynh on 26/08/2015.
//  Copyright © 2015 Mica Huynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)

        UIApplication.sharedApplication().applicationIconBadgeNumber = 4;
        let notificationsRegisterer = NotificationsRegisterer()
        let registered = notificationsRegisterer.isRegisteredForAnyNotifications()
        if (registered)
        {
            view.backgroundColor =  UIColor.greenColor()
        }
        else
        {
            view.backgroundColor = UIColor.redColor()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

