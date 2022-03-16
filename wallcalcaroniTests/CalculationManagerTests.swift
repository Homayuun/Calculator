//
//  CalculationManagerTests.swift
//  wallcalcaroniTests
//
//  Created by Homayun on 12/8/1400 AP.
//  Copyright © 1400 AP Caleb Stultz. All rights reserved.
//

import XCTest
@testable import Calculator

class CalculationManagerTests: XCTestCase {
    
    //system under test
    
    var sut: CalculationManager!

    override func setUp()  {
        super.setUp()
        sut = CalculationManager()
    }

    override func tearDown()  {
        sut = nil
        super.tearDown()
    }
    
    func testInit_WhenGivenValues_TakesValues(){
        let calcManager1 = CalculationManager(valueA: 10, valueB: 20, currentOperand: .multiply, valueEntryArray: [])
        let calcManager2 = CalculationManager(valueA: 10, valueB: 20, currentOperand: .multiply, valueEntryArray: [])

        XCTAssertEqual(calcManager1, calcManager2)
    }
    func testValues_InsertValue_ForValueA(){
        sut.insert(value: 10)
        XCTAssertEqual(sut.valueA, 10)
    }
    func testCalculation_ForValues(){
        sut.insert(value: 10)
        sut.insert(value: 20)
        sut.set(operand: .multiply)
        XCTAssertEqual(sut.calculate(), 200)
    }
    func testClear_WhenAC(){
        sut.insert(value: 10)
        sut.insert(value: 30)
        _ = sut.clearValues()
        XCTAssertEqual(sut.valueB, 0)
        XCTAssertEqual(sut.valueA, 0)
        XCTAssertEqual(sut.valueEntryArray, [])
    }


}
