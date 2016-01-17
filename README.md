# SwiftySortings
Sorting algorithms written in Swift. 

1. [Insertion Sort](###Insertion Sort)
2. [Selection Sort](###Selection Sort)
3. [Bubble Sort](###Bubble Sort)
4. More to come...

###Insertion Sort
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

