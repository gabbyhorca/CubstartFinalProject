//
//  NotificationHandler.swift
//  DartApp
//
//  Created by Jason Mooney on 5/1/23.
//

import Foundation
import UserNotifications

class NotificationHandler{
    func askPermission() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.badge,.sound]) { success, error in
            if success {
                print("Access Granted")
            } else if let error = error{
                print(error.localizedDescription)
            }
        }
    }
    
    func sendNotification(date: Date, type: String, timeInterval: Double = 10, title: String, body: String) {
        var trigger: UNNotificationTrigger?
        
        if type == "date" {
            let dateComponents = Calendar.current.dateComponents([.month, .year, .day, .hour, .minute], from: date)
            print(date.description)
            trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: false)
        } else if type == "time"{
            trigger = UNTimeIntervalNotificationTrigger(timeInterval:timeInterval, repeats: false)
        }
            
        let content = UNMutableNotificationContent()
        content.title = title
        content.body = body
        content.sound = UNNotificationSound.default
            
        let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
            
        UNUserNotificationCenter.current().add(request)
        print("Notification scheduled")
        }
}
