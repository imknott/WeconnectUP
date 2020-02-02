//
//  eventFeedTableCell.swift
//  Movida
//
//  Created by Ian Knott on 10/22/19.
//  Copyright © 2019 Ian Knott. All rights reserved.
//

import UIKit
import FaveButton
import Firebase


class eventFeedTableCell: UITableViewCell, FaveButtonDelegate {
   
    
    
    @IBOutlet weak var joinButton: UIButton!
    @IBOutlet weak var heartButton: FaveButton!
    //the checkmark to be hidden upon load until user has clicked the join button.
    @IBOutlet weak var joinedButtonResult: UIButton!
      let db = Firestore.firestore()
    @IBAction func joinEventPressed(_ sender: AnyObject) {
        joinButton.isHidden = true
        joinedButtonResult.isHidden = false
        
        
    }
    func faveButton(_ faveButton: FaveButton, didSelected selected: Bool) {
        
        

    }
    
    
    
    @IBOutlet weak var eventNameFeedLabel: UILabel!
    
    @IBOutlet weak var locationTextLabel: UILabel!
    @IBOutlet weak var descriptionTextFieldFeed: UITextView!
    
    @IBOutlet weak var timeOfEventFeedLabel: UILabel!
    @IBOutlet weak var dateOfEventFeedLabel: UILabel!
    
    @IBOutlet weak var eventFeedImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        joinedButtonResult.isHidden = true
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
