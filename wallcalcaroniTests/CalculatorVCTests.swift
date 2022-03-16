//
//  CalculatorVCTests.swift
//  wallcalcaroniTests
//
//  Created by Homayun on 12/9/1400 AP.
//  Copyright © 1400 AP Caleb Stultz. All rights reserved.
//

import XCTest
@testable import Calculator

class CalculatorVCTests: XCTestCase {
    
    var sut: CalculatorViewController!
    
    override func setUp()  {
        super.setUp()
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyBoard.instantiateViewController(withIdentifier: "CalculatorViewController") as? CalculatorViewController
        sut.loadViewIfNeeded()
        
    }
    
    override func tearDown()  {
        sut = nil
        super.tearDown()
        
    }
    func testAddingValues_TOButtons(){
        sut.twoBtn.sendActions(for: .touchUpInside)
        sut.fourBtn.sendActions(for: .touchUpInside)
        XCTAssertEqual(sut.valueLabel.text, "24")
        
    }
    func testEqualButtons_ShouldPerformLabelUpdates(){
        sut.sixBtn.sendActions(for: .touchUpInside)
        sut.zeroBtn.sendActions(for: .touchUpInside)
        sut.multiplyBtn.sendActions(for: .touchUpInside)
        sut.fiveBtn.sendActions(for: .touchUpInside)
        sut.equalsBtn.sendActions(for: .touchUpInside)
        XCTAssertEqual(sut.valueLabel.text, "12")

    }
    func testValues_ToBeCleared(){
        sut.eightBtn.sendActions(for: .touchUpInside)
        sut.addBtn.sendActions(for: .touchUpInside)
        sut.fiveBtn.sendActions(for: .touchUpInside)
        sut.equalsBtn.sendActions(for: .touchUpInside)
        XCTAssertEqual(sut.valueLabel.text, "13")
        sut.acBtn.sendActions(for: .touchUpInside)
        XCTAssertEqual(sut.valueLabel.text, "0")
    }
}
