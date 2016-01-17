# SwiftySortings
Sorting algorithms written in Swift. 

1. [Insertion Sort](###Insertion)
2. Selection Sort
3. Bubble Sort

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


