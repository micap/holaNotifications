//
//  NotificationsRegisterer.swift
//  HolaNotifications
//
//  Created by Mica Huynh on 26/08/2015.
//  Copyright © 2015 Mica Huynh. All rights reserved.
//

import Foundation
import UIKit

class NotificationsRegisterer
{
    func registerForAllNotificationTypes()
    {
        registerNotificationsForTypes([.Badge, .Alert, .Sound])
    }

    func registerNotificationsForTypes(types:UIUserNotificationType)
    {
        let settings = UIUserNotificationSettings.init(forTypes:types, categories: nil)
        UIApplication.sharedApplication().registerUserNotificationSettings(settings)
    }

    func isRegisteredForAnyNotifications() -> Bool
    {
        let currentSettings = UIApplication.sharedApplication().currentUserNotificationSettings()
        return (currentSettings?.types != UIUserNotificationType.None)
    }
}