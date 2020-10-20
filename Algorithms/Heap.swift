//
//  Heap.swift
//  Algorithms
//
//  Created by Victoria Kravets on 16.10.2020.
//  Copyright © 2020 Victoria Kravets. All rights reserved.
//

import Foundation

class Heap {
    private var array: [Int]
    
    init () {
        self.array = []
    }
    
    init (array: [Int]) {
        self.array = array
    }
    
    func getHeap() -> [Int] {
        return self.array
    }
                        
    func insert(element: Int) { // O(log(n))
        var toIndex = array.count
        array.append(element)
        
        var parent = (array.count - 1) / 2
        while element < array[parent] {
            
            array[toIndex] = array[parent]
            array[parent] = element

            toIndex = parent
            parent = (parent - 1) / 2
        }
    }
    
    func findMinimum() -> Int? { // O(1)
        return self.array.first
    }
    
    func selectMinimum() -> Int? { // O(log(n))
        let minimum = array.first // TODO: write
        if !array.isEmpty {
            array[0] = array.removeLast()
        }
        
        var parentIndex = 1
        let parent = array[0]

        while parentIndex * 2 <= array.count {
            if (array[(parentIndex * 2) - 1] < array[parentIndex - 1]) || (array[(parentIndex * 2)] < array[parentIndex - 1]) {
                if parentIndex * 2 == array.count {
                    array[parentIndex - 1] = array[(parentIndex * 2 - 1)]
                    array[(parentIndex * 2 - 1)] = parent
                    break
                    
                } else if array[(parentIndex * 2 - 1)] < array[(parentIndex * 2)] {
                    array[parentIndex - 1] = array[(parentIndex * 2 - 1)]
                    array[(parentIndex * 2 - 1)] = parent
                    
                    parentIndex = parentIndex * 2

                } else  {
                    array[parentIndex - 1] = array[(parentIndex * 2)]
                    array[(parentIndex * 2)] = parent
                    
                    parentIndex = parentIndex * 2 + 1
                }
            }
        }
        return minimum
    }
    
    func removeElement() {  // Должен быть O(log(n))
        
    }
}

