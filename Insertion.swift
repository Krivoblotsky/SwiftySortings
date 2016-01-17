//
//  Insertion.swift
//  Sortings
//
//  Created by Sergii Kryvoblotskyi on 1/17/16.
//  Copyright © 2016 Home. All rights reserved.
//

import Foundation

//Insertion sort iterates, consuming one input element each repetition, and growing a sorted output list. 
//Each iteration, insertion sort removes one element from the input data, 
//finds the location it belongs within the sorted list, and inserts it there. It repeats until no input elements remain.
//https://en.wikipedia.org/wiki/Insertion_sort

class Insertion: Sort
{
    static func sort<T : Comparable>(var array: Array<T>) -> Array<T>
    {
        //Loop throug elemts
        for i in 1...array.count - 1
        {
            //Get the element
            let element = array[i]
            
            //Move to the left
            for var j = i; j > -1 ;j--
            {
                //Get the
                let pair = array[j]
                
                //Exchange elements with good order
                if element < pair
                {
                    array.removeAtIndex(j + 1)
                    array.insert(element, atIndex: j)
                }
            }
        }
        return array
    }
}