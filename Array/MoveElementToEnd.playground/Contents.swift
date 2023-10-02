import UIKit


var array = [2,1,2,2,2,3,4,2]
var toMove = 2

func moveElementToEnd(_ array: inout [Int], toMove: Int) -> [Int] {
    var i = 0
    var j = array.count - 1
    while i<j {
        while i<j, array[j] == toMove {
            j -= 1
        }
        if array[i] == toMove {
            (array[i], array[j]) = (array[j], array[i])
            
        }
        i+=1
    }
    return array
}

//print(moveElementToEnd(&array, toMove: toMove))

func moveElementToEnd(_ array: inout [Int], _ toMove: Int) -> [Int] {
    // Write your code here.
    var i = 0
    var j = array.count - 1
    while i<j {
      while i < j, array[j] == toMove {
         j-=1
    }
     if array[i] == toMove {
       (array[i], array[j]) = (array[j], array[i])
     }
    i+=1
    }
    return array
  }

print(moveElementToEnd(&array, toMove))
