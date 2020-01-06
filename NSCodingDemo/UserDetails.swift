//
//  UserDetails.swift
//  NSCodingDemo
//
//  Created by ksolves on 06/01/20.
//  Copyright © 2020 ksolves. All rights reserved.
//

import UIKit

class userdetails: NSObject, NSCoding {
    
    init(name: String, dob: String, city: String, country: String, image: UIImage?, userName: String, password: String) {
        self.name = name
        self.dob = dob
        self.city = city
        self.country = country
        self.image = image
        self.userName = userName
        self.password = password
    }
    
    var name: String
    var dob: String
    var city: String
    var country: String
    var image: UIImage?
    var userName: String
    var password: String
    
    // MARK: NSCoding methods
    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: "name")
        coder.encode(dob, forKey: "dob")
        coder.encode(city, forKey: "city")
        coder.encode(country, forKey: "country")
        coder.encode(image, forKey: "image")
        coder.encode(userName, forKey: "username")
        coder.encode(password, forKey: "password")
       }
       
    required init?(coder: NSCoder) {
        name = coder.decodeObject(forKey: "name") as! String
        dob = coder.decodeObject(forKey: "dob") as! String
        city = coder.decodeObject(forKey: "city") as! String
        country = coder.decodeObject(forKey: "country") as! String
        image = coder.decodeObject(forKey: "image") as? UIImage
        userName = coder.decodeObject(forKey: "username") as! String
        password = coder.decodeObject(forKey: "password") as! String
        //self.init(name: name, dob: dob, city: city, country: country, image: image, userName: userName, password: password)
       }
       
}
