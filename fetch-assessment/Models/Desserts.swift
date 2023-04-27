//
//  Desserts.swift
//  fetch-assessment
//
//  Created by Musub Omair on 4/24/23.
//

import Foundation

struct DessertsRoot: Codable {
    let meals: [Desserts]
}

struct Desserts: Codable {
    let strMeal: String
    let strMealThumb: String
    let idMeal: String
}


