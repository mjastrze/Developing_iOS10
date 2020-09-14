//
//  DemoURL.swift
//  Cassini
//
//  Created by Maciej Jastrzębski on 9/14/20.
//  Copyright © 2020 SKY.NET. All rights reserved.
//

import Foundation
struct DemoURL
{
    static let lodz = URL(string: "http://api.culture.pl/sites/default/files/styles/1920_auto/public/images/imported/architektura/linkbajty/lodzkie_budynki_Strzeminskiego/MIASTA/lodz_en_.jpg")
    
    static var NASA: Dictionary<String,URL> = {
         let NASAURLStrings = [
            "Cassini" : "http://www.jpl.nasa.gov/images/cassini/20090202/pia03883-full.jpg",
            "Earth" : "http://www.nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
            "Saturn" : "http://www.nasa.gov/sites/default/files/saturn_collage.jpg"
        ]
        var urls = Dictionary<String,URL>()
        for (key, value) in NASAURLStrings {
            urls[key] = URL(string: value)
        }
        return urls
    }()
}
