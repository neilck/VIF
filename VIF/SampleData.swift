//
//  SampleData.swift
//  VIF
//
//  Created by Neil Chong-Kit on 2016-07-02.
//  Copyright © 2016 Chong-Kit. All rights reserved.
//

import UIKit

var friendsData = getFriendData()

func getFriendData() -> [Friend]
{
    var friend1 = Friend(name: "Neil Chong-Kit", status: "At the library...", rank: 1, notificationCount: 3, imageName: "Neil")
    let friend2 = Friend(name: "Elliot Chong-Kit", status: "Playing games", rank: 2, notificationCount: 1, imageName: "Elliot")
    let friend3 = Friend(name: "Rosie Foo2", status: "Studying", rank: 3, notificationCount: 0, imageName: "Rosie")
    
    let currentDate = NSDate()

    var calculatedDate = NSCalendar.currentCalendar().dateByAddingUnit(NSCalendarUnit.Day, value: -1, toDate: currentDate, options: NSCalendarOptions.init(rawValue: 0))
    
    friend1.addMessage(Message(subject: "Lunch?", body: "Let's go have some lunch. I'm like so hungry man", sent: calculatedDate))
    
     calculatedDate = NSCalendar.currentCalendar().dateByAddingUnit(NSCalendarUnit.Day, value: -1, toDate: currentDate, options: NSCalendarOptions.init(rawValue: 0))
    
    friend1.addMessage(Message(subject: "This is a test.", body: "This is my test message", sent: calculatedDate))
    
      calculatedDate = NSCalendar.currentCalendar().dateByAddingUnit(NSCalendarUnit.Day, value: -1, toDate: currentDate, options: NSCalendarOptions.init(rawValue: 0))
    
    friend1.addMessage(Message(subject: "Follow-Up", body: "This is is a much longer message which is a better presentation of how long an email really is. Ipsum Lorem and all that kind of stuff used to fill space would be ideal here.", sent: calculatedDate))
    
    return [friend1, friend2, friend3]
}




