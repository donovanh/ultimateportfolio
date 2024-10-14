//
//  Award.swift
//  UltimatePortfolio
//
//  Created by Donovan Hutchinson on 14/10/2024.
//

import Foundation

struct Award: Decodable, Identifiable {
    var id: String { name }
    var name: String
    var description: String
    var color: String
    var criterion: String
    var value: Int
    var image: String
    
    static let allAwards = Bundle.main.decode("Awards.json", as: [Award].self)
    static let example = allAwards[0]
    
}
