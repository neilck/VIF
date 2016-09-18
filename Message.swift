//
//  Message.swift
//  VIF
//
//  Created by Neil Chong-Kit on 2016-07-04.
//  Copyright © 2016 Chong-Kit. All rights reserved.
//

import UIKit

struct Message {
    var subject: String?
    var body: String?
    var sent: NSDate?
    
    init(subject: String?, body: String?, sent: NSDate?) {
        self.subject = subject
        self.body = body
        self.sent = sent
    }
    
}
