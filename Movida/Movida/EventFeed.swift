//
//  EventFeed.swift
//  Movida
//
//  Created by Ian Knott on 2/1/20.
//  Copyright © 2020 Ian Knott. All rights reserved.
//

import Foundation
import UIKit
import FaveButton
import Firebase

class EventFeed: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var eventTable: UITableView!
    
    let timeOfEventArray = [ "6:15 pm", "11:00 am", "7:00 pm", "11:30 am"]
    
    let dateOfEventArray = [ "Tuesday", "Sunday","Friday", "Sunday"]
    
    let eventNameArray = ["Woodland Toastmasters", "Santa Barbara Dance Tribe", "Ecstatic Dance", "Beach Yoga"]
    
    let descriptionTextArray = ["Learn to improve your public speaking by listening to others' speeches or presenting your own in this positive, supportive environment. This happens every week, the age group is mixed, all great people!", "Santa Barbara Dance Tribe invites you to celebrate life through movement. We gather every Sunday as a community for an ecstatic dance that welcomes authentic expression, freedom of movement, and embodied connection.",  "A barefoot, substance-free, live DJ get-down dance party.  Contact Improv Warm-Up from 7-7:30pm, ecstatic dance 7:30 -9:30pm.  The music for the ecstatic dance will loosely follow an ecstatic dance “wave” with slow and mellow music building to chaotic intensity and then returning to stillness at the end.", "The best way to start your Sunday is to join FREE Yoga on the Leadbetter Beach. Just show up! First come first serve. Invite your friends too! The yoga teacher is funny and entertaining. If you don't have your Yoga mat, one will be provided!"]
    
    let locationTextArray = ["The Balboa Building","Gail Towbes Center for Dance", "Yoga Soup", "Leadbetter Beach"]
    
    let eventImageArray : [UIImage] = [UIImage(named: "Woodland Toastmasters.png")!, UIImage(named: "Dance Tribe.jpg")!,UIImage(named: "celebration-colorful-colourful-1684187.jpg")!,UIImage(named: "IMG_6171.JPG")! ]
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return eventNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventFeedCell", for: indexPath) as! eventFeedTableCell
              //sets each eventFeedTable cells text labels to the specified thing inside the array.
               cell.dateOfEventFeedLabel.text = dateOfEventArray[indexPath.row]
               
               cell.descriptionTextFieldFeed.text = descriptionTextArray[indexPath.row]
              
               cell.eventNameFeedLabel.text = eventNameArray[indexPath.row]
              
               cell.timeOfEventFeedLabel.text = timeOfEventArray[indexPath.row]
                    cell.locationTextLabel.text = locationTextArray[indexPath.row]
               cell.eventFeedImage.image = eventImageArray[indexPath.row]
         
               
               return cell
    }
    
    
    var userID : String = ""
    
    
   
    
    
}
