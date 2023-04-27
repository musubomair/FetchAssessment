//
//  APIHandler.swift
//  fetch-assessment
//
//  Created by Musub Omair on 4/24/23.
//

import Foundation
import Alamofire

class APIHandler {
    static let sharedInstance = APIHandler()
    var dessertList = [Desserts]()
    var dessertDetailList = [DessertDetail]()
    
    // function to fetch all desserts and append them to dessertList
    // fetched data to be used in the tableview cell on the home screen
    func getDesserts(completion: @escaping ([Desserts]) -> Void) {
        AF.request(dessertAPI, method: .get).responseDecodable(of: DessertsRoot.self) { response in
            switch response.result {
            case .success (let data):
                self.dessertList.append(contentsOf: data.meals)
                completion(self.dessertList)
                
            case .failure(let error):
                print(error)
            }
        }
    }
    
    // function to fetch the details of a dessert by passing its ID
    // details to be shown on the dessert detail screen after user taps on one of the dessert cells
    func getDessertDetail(dessertID: String, completion: @escaping ([DessertDetail]) -> Void) {
        self.dessertDetailList.removeAll() // clearing dessertDetailList before calling API
        AF.request("\(dessertDetailAPI)\(dessertID)", method: .get).responseDecodable(of: DessertDetailRoot.self) { response in
            switch response.result {
            case .success (let data):
                self.dessertDetailList.append(contentsOf: data.meals)
                completion(self.dessertDetailList)
                
            case .failure(let error):
                print(error)
            }
        }
    }
}
