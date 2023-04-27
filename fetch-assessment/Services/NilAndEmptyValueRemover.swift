//
//  NilAndEmptyValueRemover.swift
//  fetch-assessment
//
//  Created by Musub Omair on 4/26/23.
//

import Foundation

class NilAndEmptyValueRemover {
    
    static let sharedInstance = NilAndEmptyValueRemover()
    
    func removeValues(dessertDetail: DessertDetail) -> String {
        var ingredientsString = ""
        if dessertDetail.strIngredient1 != nil && dessertDetail.strIngredient1 != "" && dessertDetail.strMeasure1 != nil && dessertDetail.strMeasure1 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient1!) (\(dessertDetail.strMeasure1!)) "
        }
        
        if dessertDetail.strIngredient2 != nil && dessertDetail.strIngredient2 != "" && dessertDetail.strMeasure2 != nil && dessertDetail.strMeasure2 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient2!) (\(dessertDetail.strMeasure2!)) "
        }
        
        if dessertDetail.strIngredient3 != nil && dessertDetail.strIngredient3 != "" && dessertDetail.strMeasure3 != nil && dessertDetail.strMeasure3 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient3!) (\(dessertDetail.strMeasure3!)) "
        }
        
        if dessertDetail.strIngredient4 != nil && dessertDetail.strIngredient4 != "" && dessertDetail.strMeasure4 != nil && dessertDetail.strMeasure4 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient4!) (\(dessertDetail.strMeasure4!)) "
        }
        
        if dessertDetail.strIngredient5 != nil && dessertDetail.strIngredient5 != "" && dessertDetail.strMeasure5 != nil && dessertDetail.strMeasure5 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient5!) (\(dessertDetail.strMeasure5!)) "
        }
        
        if dessertDetail.strIngredient6 != nil && dessertDetail.strIngredient6 != "" && dessertDetail.strMeasure6 != nil && dessertDetail.strMeasure6 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient6!) (\(dessertDetail.strMeasure6!)) "
        }
        
        if dessertDetail.strIngredient7 != nil && dessertDetail.strIngredient7 != "" && dessertDetail.strMeasure7 != nil && dessertDetail.strMeasure7 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient7!) (\(dessertDetail.strMeasure7!)) "
        }
        
        if dessertDetail.strIngredient8 != nil && dessertDetail.strIngredient8 != "" && dessertDetail.strMeasure8 != nil && dessertDetail.strMeasure8 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient8!) (\(dessertDetail.strMeasure8!)) "
        }
        
        if dessertDetail.strIngredient9 != nil && dessertDetail.strIngredient9 != "" && dessertDetail.strMeasure9 != nil && dessertDetail.strMeasure9 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient9!) (\(dessertDetail.strMeasure9!)) "
        }
        
        if dessertDetail.strIngredient10 != nil && dessertDetail.strIngredient10 != "" && dessertDetail.strMeasure10 != nil && dessertDetail.strMeasure10 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient10!) (\(dessertDetail.strMeasure10!)) "
        }
        
        if dessertDetail.strIngredient11 != nil && dessertDetail.strIngredient11 != "" && dessertDetail.strMeasure11 != nil && dessertDetail.strMeasure11 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient11!) (\(dessertDetail.strMeasure11!)) "
        }
        
        if dessertDetail.strIngredient12 != nil && dessertDetail.strIngredient12 != "" && dessertDetail.strMeasure12 != nil && dessertDetail.strMeasure12 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient12!) (\(dessertDetail.strMeasure12!)) "
        }
        
        if dessertDetail.strIngredient13 != nil && dessertDetail.strIngredient13 != "" && dessertDetail.strMeasure13 != nil && dessertDetail.strMeasure13 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient13!) (\(dessertDetail.strMeasure13!)) "
        }
        
        if dessertDetail.strIngredient14 != nil && dessertDetail.strIngredient14 != "" && dessertDetail.strMeasure14 != nil && dessertDetail.strMeasure14 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient14!) (\(dessertDetail.strMeasure14!)) "
        }
        
        if dessertDetail.strIngredient15 != nil && dessertDetail.strIngredient15 != "" && dessertDetail.strMeasure15 != nil && dessertDetail.strMeasure15 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient15!) (\(dessertDetail.strMeasure15!)) "
        }
        
        if dessertDetail.strIngredient16 != nil && dessertDetail.strIngredient16 != "" && dessertDetail.strMeasure16 != nil && dessertDetail.strMeasure16 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient16!) (\(dessertDetail.strMeasure16!)) "
        }
        
        if dessertDetail.strIngredient17 != nil && dessertDetail.strIngredient17 != "" && dessertDetail.strMeasure17 != nil && dessertDetail.strMeasure17 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient17!) (\(dessertDetail.strMeasure17!)) "
        }
        
        if dessertDetail.strIngredient18 != nil && dessertDetail.strIngredient18 != "" && dessertDetail.strMeasure18 != nil && dessertDetail.strMeasure18 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient18!) (\(dessertDetail.strMeasure18!)) "
        }
        
        if dessertDetail.strIngredient19 != nil && dessertDetail.strIngredient19 != "" && dessertDetail.strMeasure19 != nil && dessertDetail.strMeasure19 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient19!) (\(dessertDetail.strMeasure19!)) "
        }
        
        if dessertDetail.strIngredient20 != nil && dessertDetail.strIngredient20 != "" && dessertDetail.strMeasure20 != nil && dessertDetail.strMeasure20 != "" {
            ingredientsString += "• \(dessertDetail.strIngredient20!) (\(dessertDetail.strMeasure20!))"
        }
        
        return ingredientsString
    }
}
