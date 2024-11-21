//
//  NotificationController.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-21.
//

import Foundation
import UserNotifications
import UIKit

class NotificationController {
    static let shared = NotificationController()
    
    public init() {}

    func scheduleNotification(title: String, body: String, timeInterval: TimeInterval, iconName: String?) {
        // Request permission if not already granted
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            if granted {
                self.createNotification(title: title, body: body, timeInterval: timeInterval, iconName: iconName)
            } else if let error = error {
                print("Notification permission error: \(error.localizedDescription)")
            }
        }
    }

    func createNotification(title: String, body: String, timeInterval: TimeInterval, iconName: String?) {
        let content = UNMutableNotificationContent()
        content.title = title
        content.body = body
        content.sound = .default
        
        // Add a badge (optional)
        content.badge = NSNumber(value: 1)

        // Add custom attachment for the icon
        if let iconName = iconName, let iconURL = Bundle.main.url(forResource: iconName, withExtension: "png") {
            do {
                let attachment = try UNNotificationAttachment(identifier: "icon", url: iconURL, options: nil)
                content.attachments = [attachment]
            } catch {
                print("Failed to attach icon: \(error.localizedDescription)")
            }
        }

        // Trigger after a delay
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: timeInterval, repeats: false)
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)

        // Schedule the notification
        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("Failed to schedule notification: \(error.localizedDescription)")
            }
        }
    }
}
