//
//  Window_ShopperTests.swift
//  Window-ShopperTests
//
//  Created by Roderick Karlemstrand on 02/06/2018.
//  Copyright © 2018 Karlemstrand AB. All rights reserved.
//

import XCTest

class Window_ShopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
//    //Error: Use of unresolved identifier 'Wage'. Reason, added test after creating the project and the class does not recognize that target.
//    func testGetHours() {
//        XCTAssert(Wage.)
//    }
    
    // Good functions accept input and return output
    // Bad functions set global variables and rely on other functions to work
    func testGetHours() {
        XCTAssert(Wage.getHours(forWage: 25, andPrice: 100) == 4)
        XCTAssert(Wage.getHours(forWage: 15.50, andPrice: 255.53) == 17) //Round up 16.16 to 17.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
