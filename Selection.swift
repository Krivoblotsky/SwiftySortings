//
//  Selection.swift
//  Sortings
//
//  Created by Sergii Kryvoblotskyi on 1/18/16.
//  Copyright © 2016 Home. All rights reserved.
//

import Foundation

//The algorithm divides the input list into two parts: the sublist of items already sorted, which is built up from left to right at the front (left) of the list, and the sublist of items remaining to be sorted that occupy the rest of the list. 
//Initially, the sorted sublist is empty and the unsorted sublist is the entire input list. 
//The algorithm proceeds by finding the smallest (or largest, depending on sorting order) element in the unsorted sublist, exchanging (swapping) it with the leftmost unsorted element (putting it in sorted order), and moving the sublist boundaries one element to the right.
//https://en.wikipedia.org/wiki/Selection_sort

class Selection:Sort
{
    static func sort<T : Comparable>(var array: Array<T>) -> Array<T>
    {
        //Loop through elements
        for i in 0...array.count - 1
        {
            //Get min element and its index
            var (minElement, index) = (array[i], i)
            for j in i...array.count - 1
            {
                let element = array[j]
                if element < minElement
                {
                    minElement = element
                    index = j
                }
            }
            
            //Move min element to the left position
            array.removeAtIndex(index)
            array.insert(minElement, atIndex: i)
        }
        return array;
    }
}