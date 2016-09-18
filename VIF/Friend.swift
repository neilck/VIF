//
//  Friend.swift
//  VIF
//
//  Created by Neil Chong-Kit on 2016-07-02.
//  Copyright © 2016 Chong-Kit. All rights reserved.
//

import UIKit

struct Friend {
    var name: String?
    var status: String?
    var rank: Int
    var notificationCount: Int
    var photo: UIImage?
    var messages: [Message] = []
    
    init(name: String?, status: String?, rank: Int, notificationCount: Int, imageName: String) {
        self.name = name
        self.status = status
        self.rank = rank
        self.notificationCount = notificationCount
        self.photo = UIImage(named: imageName)
    }
    
    mutating func addMessage(message: Message)
    {
        messages.append(message)
    }
}
