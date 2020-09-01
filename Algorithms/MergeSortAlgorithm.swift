//
//  MergeSortAlgorithm.swift
//  Algorithms
//
//  Created by Victoria Kravets on 17.08.2020.
//  Copyright © 2020 Victoria Kravets. All rights reserved.
//

import Foundation

class MergeSortAlgorithm {                      //O(6N * (lgN + 1)) = O(6N*lgN + 6N) = O(n lgN)
    func mergeSort(to array: [Int]) -> [Int] { // O(n*log(n)) = 12 n * (2*log(n) + 1) = 12n*log(n) + 12n
        if array.count < 2 { // O(1)
            return array
        }
        let leftSplit: ArraySlice<Int> = array[0 ..< array.count / 2]
        let sortedLeftHalfArray = mergeSort(to: Array(leftSplit)) // (log(n))
        
        let rightSplit: ArraySlice<Int> = array[array.count / 2 ..< array.count]
        let sortedRightHalfArray = mergeSort(to: Array(rightSplit))  // (log(n))
        
        var fullSortedArray = [Int]()
        var i = 0, j = 0
        
        while fullSortedArray.count < array.count { // O(n)
             if j >= sortedRightHalfArray.count {
                fullSortedArray.append(sortedLeftHalfArray[i])
                i += 1
                continue
                
            } else if i >= sortedLeftHalfArray.count {
                fullSortedArray.append(sortedRightHalfArray[j])
                j += 1
                continue
            }
            
            if sortedLeftHalfArray[i] < sortedRightHalfArray[j]   {
                fullSortedArray.append(sortedLeftHalfArray[i])
                i += 1
            } else  {
                fullSortedArray.append(sortedRightHalfArray[j])
                j += 1
            }
        }
        
        return fullSortedArray
    }
    
    func getInversionsCount(from array: [Int]) -> (Int, [Int]) {
        if array.count < 2 { return (0, array) }

        let leftSplit: ArraySlice<Int> = array[0 ..< array.count / 2]
        let sortedLeftHalfArray = getInversionsCount(from: Array(leftSplit))
        
        let rightSplit: ArraySlice<Int> = array[array.count / 2 ..< array.count]
        let sortedRightHalfArray = getInversionsCount(from: Array(rightSplit))
        
        var fullSortedArray = [Int]()
        var inversionCount = sortedLeftHalfArray.0 + sortedRightHalfArray.0
        
        var i = 0, j = 0
        
        while fullSortedArray.count < array.count {
            
            if j >= sortedRightHalfArray.1.count {
                fullSortedArray.append(sortedLeftHalfArray.1[i])
                i += 1
                continue
                
            } else if i >= sortedLeftHalfArray.1.count {
                fullSortedArray.append(sortedRightHalfArray.1[j])
                j += 1               
                continue
            }
            
            if sortedLeftHalfArray.1[i] < sortedRightHalfArray.1[j]   {
                fullSortedArray.append(sortedLeftHalfArray.1[i])
                i += 1
                
            } else  {
                fullSortedArray.append(sortedRightHalfArray.1[j])
                inversionCount += sortedLeftHalfArray.1.count - i
                j += 1
            }
        }
        
        return (inversionCount, fullSortedArray)
    }
}
