//
//  ViewController.swift
//  web-requests
//
//  Created by Bartosz Odrzywołek on 10/05/16.
//  Copyright © 2016 Bartosz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "http://swapi.co/api/people/3"
        let session = NSURLSession.sharedSession()
        let url = NSURL(string: urlString)!
        
        session.dataTaskWithURL(url) { (data: NSData?, response: NSURLResponse?, error: NSError?) -> Void in
            
            if let responseData = data {
                
                do {
                    let json = try NSJSONSerialization.JSONObjectWithData(responseData, options: NSJSONReadingOptions.AllowFragments)
                    
                    if let dict = json as? Dictionary<String, AnyObject> {
                        
                        if let name = dict["name"] as? String, let height = dict["height"] as? String, let birthYear = dict["birth_year"] as? String, let hairColor = dict["hair_color"] as? String, let films = dict["films"] as? [String] {
                            
                            let person = SWPerson(name: name, height: height, birthYear: birthYear, hairColor: hairColor)
                            
                            print(person.name)
                            print(person.height)
                            print(person.birthYear)
                            print(person.hairColor)
                            print(films)
                        
                        }
                        
                    }
                    
                    print(json)
                } catch {
                    print("Could not serialize")
                }
            }
        } .resume()
            
    }
        
}

