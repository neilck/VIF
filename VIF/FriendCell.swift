//
//  FriendCell.swift
//  VIF
//
//  Created by Neil Chong-Kit on 2016-07-03.
//  Copyright © 2016 Chong-Kit. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var notificationCountLabel: UILabel!
    
    var rank: Int = 0
    
    var friend: Friend! {
        didSet{
            nameLabel.text = friend.name
            statusLabel.text = friend.status
            notificationCountLabel.text = String(friend.notificationCount)
            rank = friend.rank
            photoImageView.image = friend.photo
        }
    }
}
