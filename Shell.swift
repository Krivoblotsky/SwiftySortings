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

        var h = getStep(0)
        
        while (h >= 1)
        {
            for i in h...length - 1
            {
                for (var j = i; j >= h && (array[j] < array[j-h]); j -= h)
                {
                    let tmp = array[j]
                    array[j] = array[j - h]
                    array[j - h] = tmp
                }
            }
            
            h = getStep(h)
        }
        
        return array
    }
    
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