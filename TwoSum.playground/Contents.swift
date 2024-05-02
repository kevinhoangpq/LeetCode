// Leetcode challenge:
// https://leetcode.com/problems/two-sum/description/

import Foundation

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var dict: [Int: [Int]] = [:]
    
    for (index, number) in nums.enumerated() {
        dict[number, default: []].append(index)
    }
    
    for (index, number) in nums.enumerated() {
        if let completionIndexes = dict[target - number],
           let complementIndex = completionIndexes.first(where: { $0 != index }) {
            return [index, complementIndex]
        }
    }
    
    return []
    }
}
