//
//  Sort.swift
//  Sortings
//
//  Created by Sergii Kryvoblotskyi on 1/17/16.
//  Copyright © 2016 Home. All rights reserved.
//

import Foundation

protocol Sort
{    
    static func sort<T:Comparable>(var array:Array<T>) -> Array<T>
}