//
//  Shell.swift
//  Sortings
//
//  Created by Deszip on 21/02/16.
//  Copyright © 2016 Home. All rights reserved.
//

import Foundation

class Shell: Sort
{
    static func sort<T : Comparable>(var array: Array<T>) -> Array<T> {
        let length = array.count

        // Get step size
        var h = getStep(0)
        
        // Start decreasing step
        while (h >= 1)
        {
            // Sort chunks
            for i in h...length - 1
            {
                for (var j = i; j >= h && (array[j] < array[j-h]); j -= h)
                {
                    let tmp = array[j]
                    array[j] = array[j - h]
                    array[j - h] = tmp
                }
            }
            
            // Get next step
            h = getStep(h)
        }
        
        return array
    }
    
    /**
     Calculates step size for a given sequence length.
     Uses `3x + 1` formula for step increment calculation which leads to O(N^3/2) compares in worst case.
     
     - parameter currentStep: Int pass 0 to get starting step for sequence
     - parameter length:      Int sequence length
     
     - returns: Int step size
     */
    private static func getStep(currentStep: Int, length: Int = 0) -> Int {
        if currentStep == 0 {
            var step: Int = 1
            while (step < (length / 3)) {
                step = 3 * step + 1
            }
            
            return step
        }
        
        return currentStep / 3
    }
}