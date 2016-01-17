# SwiftySortings
Sort algorithms written in Swift

1. [Insertion](###Insertion)
2. Selection
3. Bubble

###Insertion

(https://en.wikipedia.org/wiki/Insertion_sort)

![Insertion](https://upload.wikimedia.org/wikipedia/commons/0/0f/Insertion-sort-example-300px.gif)
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


