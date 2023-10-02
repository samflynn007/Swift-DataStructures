import UIKit

//Input: nums = [3,2,2,3], val = 3
//Output: 2, nums = [2,2,_,_]

func removeElement(_ arr: inout [Int], val: Int) -> Int {
    var left = 0
    for i in 0..<arr.count {
        if arr[i] != val {
            arr[left] = arr[i]
            left += 1
        }
    }
    return left
}

var nums = [3,2,2,3]
var val = 3
print(removeElement(&nums, val: val))
