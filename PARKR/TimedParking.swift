//
//  TimeParking.swift
//  PARKR
//
//  Created by Tassos Lambrou on 11/28/16.
//  Copyright © 2016 SsosSoft. All rights reserved.
//

import Foundation

import SwiftyJSON

class TimedParking {
  let days: String
  let hoursBegin: Int
  let hoursEnd: Int
  let hours: Int
  var geom: [Coordinates]
  
  init(json: JSON) {
      self.days = json["days"].stringValue
      self.hoursBegin = Int(json["hours_begin"].stringValue) ?? 0
    self.hoursEnd = Int(json["hours_end"].stringValue) ?? 0
      self.hours = Int(json["hour_limit"].stringValue) ?? 0
    self.geom = json["geom"]["coordinates"].arrayValue.map { json in
      let coord = Coordinates(json: json)
      return coord
    }
    print("COORDS")
    for i in self.geom {
      print(i.latitude)
      print(i.longitude)
      print("\n\n")
    }
    
//    self.name = json["im:name"]["label"].stringValue
//    self.rightsOwner = json["rights"]["label"].stringValue
//    self.price = Double(json["im:price"]["attributes"]["amount"].stringValue) ?? 0
//    self.link = json["link"][0]["attributes"]["href"].stringValue
//    self.image = json["im:image"][2]["label"].stringValue
//    self.releaseDate = json["im:releaseDate"]["attributes"]["label"].stringValue
  }
}
