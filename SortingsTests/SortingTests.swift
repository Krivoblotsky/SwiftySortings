//
//  SortingTests.swift
//  Sortings
//
//  Created by Deszip on 21/02/16.
//  Copyright © 2016 Home. All rights reserved.
//

import XCTest

class SortingTests: XCTestCase {

    private let sequenceLength = 100
    private let performanceTestSequenceLength = 1000
    
    var sorting: Sort?
    
    func testRandomSort() {
        
        guard let sorting = sorting else { return }
        
        let array = getRandomSequence(sequenceLength)
        XCTAssertTrue(isSorted(sorting.dynamicType.sort(array)))
    }
    
    func testWorstCaseSort() {
        
        guard let sorting = sorting else { return }
        
        let array = getRandomSequence(sequenceLength)
        XCTAssertTrue(isSorted(sorting.dynamicType.sort(array.sort().reverse())))
    }
    
    func testBestCaseSort() {
        
        guard let sorting = sorting else { return }
        
        let array = getRandomSequence(sequenceLength)
        XCTAssertTrue(isSorted(sorting.dynamicType.sort(array.sort())))
    }
    
    func testRandomPerformance() {
        
        guard let sorting = sorting else { return }
        
        let array = getRandomSequence(performanceTestSequenceLength)
        self.measureBlock {
            XCTAssertTrue(self.isSorted(sorting.dynamicType.sort(array)))
        }
    }
    
    func testWorstCasePerformance() {
        
        guard let sorting = sorting else { return }
        
        let array = getRandomSequence(performanceTestSequenceLength)
        self.measureBlock {
            XCTAssertTrue(self.isSorted(sorting.dynamicType.sort(array.sort().reverse())))
        }
    }
    
    func testBestCasePerformance() {
        
        guard let sorting = sorting else { return }
        
        let array = getRandomSequence(performanceTestSequenceLength)
        self.measureBlock {
            XCTAssertTrue(self.isSorted(sorting.dynamicType.sort(array.sort())))
        }
    }
    
    // MARK: - Generators
    
    func getRandomSequence(length: Int) -> [UInt32] {
        var sequence = [UInt32]()
        
        for _ in 0...length {
            sequence.append(arc4random_uniform(100))
        }
        
        return sequence
    }
    
    // MARK: - Validators
    
    func isSorted(sequence: [UInt32]) -> Bool {
        for i in 1...sequence.count - 1 {
            if (sequence[i] < sequence[i - 1]) {
                return false
            }
        }
        
        return true
    }

}
