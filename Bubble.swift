//
//  Bubble.swift
//  Sortings
//
//  Created by Sergii Kryvoblotskyi on 1/17/16.
//  Copyright © 2016 Home. All rights reserved.
//

import Foundation

//Bubble sort, sometimes referred to as sinking sort, is a simple sorting algorithm that repeatedly steps through the list to be sorted, 
//compares each pair of adjacent items and swaps them if they are in the wrong order. 
//The pass through the list is repeated until no swaps are needed, which indicates that the list is sorted. 
//The algorithm, which is a comparison sort, is named for the way smaller elements "bubble" to the top of the list.
//https://en.wikipedia.org/wiki/Bubble_sort

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
