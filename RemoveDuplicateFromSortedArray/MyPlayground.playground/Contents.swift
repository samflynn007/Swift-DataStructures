import UIKit
//Input: nums = [1,1,2]
//Output: 2, nums = [1,2,_]

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var left = 0
    for right in 1..<nums.count{
        if nums[right] != nums[right-1]{
            left+=1
            nums[left] = nums[right]
            
        }
        
    }
    return left+1
}



var nums = [1,1,2]
print(removeDuplicates(&nums))
