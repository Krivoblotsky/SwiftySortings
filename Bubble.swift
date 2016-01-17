//
//  Bubble.swift
//  Sortings
//
//  Created by Sergii Kryvoblotskyi on 1/17/16.
//  Copyright © 2016 Home. All rights reserved.
//

import Foundation

class Bubble: Sort
{
    static func sort<T : Comparable>(var array: Array<T>) -> Array<T>
    {
        //Swapped flag. No swap means array is in order
        var swapped:Bool = false

        //Loop through pairs
        for i in 0...array.count - 2
        {
            //Get pair
            let (element, pair) = (array[i], array[i+1])
            
            //Check pair order
            if element > pair
            {
                //Save swapped status
                swapped = true
                
                //Exchange the pair order
                (array[i], array[i+1]) = (pair, element)
            }
        }
        
        //Do it once again if swap occured
        if swapped
        {
            return sort(array)
        }
        
        return array
    }
}
