//
//  HeroStats.swift
//  APIDemo
//
//  Created by student on 11/18/21.
//

import Foundation

struct HeroStats : Codable{
    var localized_name : String
    var primary_attr : String
    var attack_type : String
    var legs : Int
}
