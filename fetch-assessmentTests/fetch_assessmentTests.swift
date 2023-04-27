//
//  fetch_assessmentTests.swift
//  fetch-assessmentTests
//
//  Created by Musub Omair on 4/24/23.
//

import XCTest
import Alamofire
@testable import fetch_assessment

final class fetch_assessmentTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    // testing if a Dessert object can be initialized from the struct
    func testDessertObjectCreation() {
        let dessert = Desserts(strMeal: "Apam balik", strMealThumb: "https://www.themealdb.com/images/media/meals/adxcbq1619787919.jpg", idMeal: "53049")
        XCTAssertNotNil(dessert) // test fails if Dessert object fails to instantiate
    }
    
    // testing if both Desserts and DessertDetail models are properly being mapped by locally stored JSON files
    func checkModelMapping(jsonFileName: String, modelName: String) {
        let expectation = XCTestExpectation(description: "Mapping Models")
        let bundle = Bundle(for: type(of: self))
        
        guard let url = bundle.url(forResource: jsonFileName, withExtension: "json") else {
            XCTFail("Missing JSON file")
            return
        }
        
        let decoder = JSONDecoder()
        
        if let data = try? Data(contentsOf: url) {
            if modelName == "Desserts" {
                if let dessert = try? decoder.decode(DessertsRoot.self, from: data) {
                    XCTAssertNotNil(dessert)
                    expectation.fulfill()
                } else {
                    XCTFail("JSON could not be mapped to Desserts")
                }
            } else {
                if let dessertDetail = try? decoder.decode(DessertDetailRoot.self, from: data) {
                    XCTAssertNotNil(dessertDetail)
                    expectation.fulfill()
                } else {
                    XCTFail("JSON could not be mapped to DessertDetail")
                }
            }
        }
        wait(for: [expectation], timeout: 3.0)
    }
    
    func testLocalJSON() {
        checkModelMapping(jsonFileName: "dessert", modelName: "Desserts")
        checkModelMapping(jsonFileName: "dessert-detail", modelName: "DessertDetail")
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
