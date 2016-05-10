 //
 //  Person.swift
 //  web-requests
 //
 //  Created by Bartosz Odrzywołek on 10/05/16.
 //  Copyright © 2016 Bartosz. All rights reserved.
 //
 
 import Foundation
 
 class SWPerson {
    
    private var _name: String!
    private var _height: String!
    private var _birthYear: String!
    private var _hairColor: String!
    
    init(name: String, height: String, birthYear: String, hairColor: String) {
        
        _name = name
        _height = height
        _birthYear = birthYear
        _hairColor = hairColor
    }
    
    var name: String {
        return _name
    }
    
    var height: String {
        return _height
    }
    
    var birthYear: String {
        return _birthYear
    }
    
    var hairColor: String {
        return _hairColor
    }
    
    
 }