//
//  Museum.swift
//  Museum+
//
//  Created by Johnny on 9/11/2021.
//

import Foundation
import SwiftUI

struct Museum: Hashable, Identifiable, Codable {
    var id:Int
    var name:String
    
    var img_small:String
    var img_hori:String
}
struct MuseumExhibition: Hashable, Identifiable, Codable {
    var id: Int
    var exhibitionName: String
    var crowdLevel:String
    var distance:String
    var img:String
}
struct MuseumEvent: Hashable, Identifiable, Codable{
    var id: Int
    var eventName:String
    var scheduleAndSlot:[[String]]
    var price:String
    var img:String
}
struct MuseumActivity: Hashable, Identifiable, Codable{
    var id: Int
    var activityName:String
    var waitingTime:Int
    var img:String
}


class Museums :ObservableObject, Identifiable{
    @Published var museums:[Museum] = [
        Museum(id: 1, name: "Hong Kong Science Museum", img_small: "1",img_hori: "1_hor"),
        Museum(id: 2, name: "Hong Kong Space Museum", img_small: "2",img_hori: "2_hor"),
        Museum(id: 3, name: "Hong Kong Museum of Art", img_small: "3",img_hori: "3_hor"),
        Museum(id: 4, name: "Hong Kong Museum of History", img_small: "4",img_hori: "4_hor"),
        Museum(id: 5, name: "Hong Kong Heritage Museum", img_small: "5",img_hori: "5_hor"),
        Museum(id: 6, name: "Flagstaff House Museum of Tea Ware", img_small: "6",img_hori: "6_hor"),
        Museum(id: 7, name: "Hong Kong Film Archive", img_small: "7",img_hori: "7_hor"),
        Museum(id: 8, name: "Hong Kong Railway Museum", img_small: "8",img_hori: "8_hor"),
        Museum(id: 9, name: "Hong Kong Museum of Coastal Defence", img_small: "9",img_hori: "9_hor"),
        Museum(id: 10, name: "Dr Sun Yat-sen Museum", img_small: "10",img_hori: "10_hor")
    ]
    
    @Published var exhibitions:[MuseumExhibition] = [
        MuseumExhibition(id: 1, exhibitionName: "1.Light", crowdLevel:"Medium",distance: "30m", img: "exhibition_1"),
        MuseumExhibition(id: 2, exhibitionName: "2.Motion", crowdLevel:"Low",distance: "100m", img: "exhibition_2"),
        MuseumExhibition(id: 3, exhibitionName: "3.World of Mirrors", crowdLevel:"High",distance: "100m", img: "exhibition_3"),
        MuseumExhibition(id: 4, exhibitionName: "4.Sound", crowdLevel:"Very High",distance: "30m", img: "exhibition_4"),
    ]
    
    @Published var events:[MuseumEvent] = [
        MuseumEvent(id: 1, eventName: "Robot Cubes Workshop", scheduleAndSlot: [["10:30","10/100","English"],["12:30","10/100","Chinese"],["14:30","10/100","English"],["14:30","10/100","Chinese"]],price: "$100", img: "event_1"),
        MuseumEvent(id: 2, eventName: "Digital Sculpting Workshop for Beginners", scheduleAndSlot: [["10:00","20/50","Chinese"],["12:00","20/50","English"],["14:00","20/50","Chinese"],["16:00","20/50","Chinese"]],price: "$50", img: "event_2"),
        MuseumEvent(id: 3, eventName: "Flipbook Machine", scheduleAndSlot: [["12:00","2/50","Chinese"],["14:00","2/50","English"],["16:00","2/50","Chinese"],["17:00","2/50","Chinese"]],price: "$200", img: "event_3")
    ]
    
    @Published var activities:[MuseumActivity] = [
        MuseumActivity(id: 1, activityName: "The Fun of Static Electricity", waitingTime: 10, img: "activities_1"),
        MuseumActivity(id: 2, activityName: "Liquid Nitrogen", waitingTime: 20, img: "activities_2"),
        MuseumActivity(id: 3, activityName: "Laboratory in Chaos", waitingTime: 5, img: "activities_3"),
    ]

    
}
