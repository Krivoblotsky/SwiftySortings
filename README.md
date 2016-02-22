# SwiftySortings
Sorting algorithms written in Swift. 

1. [Insertion Sort](###Insertion Sort)
2. [Selection Sort](###Selection Sort)
3. [Bubble Sort](###Bubble Sort)
4. [Shell Sort](###Shell Sort)
5. More to come...

###Insertion Sort
Insertion sort iterates, consuming one input element each repetition, and growing a sorted output list. Each iteration, insertion sort removes one element from the input data, finds the location it belongs within the sorted list, and inserts it there. It repeats until no input elements remain.

Visualization:

![Insertion](https://upload.wikimedia.org/wikipedia/commons/0/0f/Insertion-sort-example-300px.gif)

Implementation:
```swift
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
```

###Selection Sort
The algorithm divides the input list into two parts: the sublist of items already sorted, which is built up from left to right at the front (left) of the list, and the sublist of items remaining to be sorted that occupy the rest of the list. Initially, the sorted sublist is empty and the unsorted sublist is the entire input list. The algorithm proceeds by finding the smallest (or largest, depending on sorting order) element in the unsorted sublist, exchanging (swapping) it with the leftmost unsorted element (putting it in sorted order), and moving the sublist boundaries one element to the right.

Visualization:

![Selection](https://upload.wikimedia.org/wikipedia/commons/9/94/Selection-Sort-Animation.gif)

Implementation:
```swift
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

```

###Bubble sort
Bubble sort, sometimes referred to as sinking sort, is a simple sorting algorithm that repeatedly steps through the list to be sorted, compares each pair of adjacent items and swaps them if they are in the wrong order. The pass through the list is repeated until no swaps are needed, which indicates that the list is sorted. The algorithm, which is a comparison sort, is named for the way smaller elements "bubble" to the top of the list. Although the algorithm is simple, it is too slow and impractical for most problems even when compared to insertion sort.[1] It can be practical if the input is usually in sort order but may occasionally have some out-of-order elements nearly in position.

Visualization:

![Bubble](https://upload.wikimedia.org/wikipedia/commons/c/c8/Bubble-sort-example-300px.gif)

Implementation:
```swift
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


```

###Shell sort
Shellsort is a generalization of insertion sort that allows the exchange of items that are far apart. The idea is to arrange the list of elements so that, starting anywhere, considering every hth element gives a sorted list. Such a list is said to be h-sorted. Equivalently, it can be thought of as h interleaved lists, each individually sorted. Beginning with large values of h, this rearrangement allows elements to move long distances in the original list, reducing large amounts of disorder quickly, and leaving less work for smaller h-sort steps to do. If the file is then k-sorted for some smaller integer k, then the file remains h-sorted. Following this idea for a decreasing sequence of h values ending in 1 is guaranteed to leave a sorted list in the end.

Visualization:

![Shell](https://upload.wikimedia.org/wikipedia/commons/d/d8/Sorting_shellsort_anim.gif)

Implementation:
```swift
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


```
