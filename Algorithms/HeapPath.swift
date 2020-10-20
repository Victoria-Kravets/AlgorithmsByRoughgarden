//
//  HeapPath.swift
//  Algorithms
//
//  Created by Victoria Kravets on 20.10.2020.
//  Copyright © 2020 Victoria Kravets. All rights reserved.
//

import Foundation

class HeapPath {
    private var array: [Path]
    
    init () {
        self.array = []
    }
    
    init (array: [Path]) {
        self.array = array
    }
    
    func getHeap() -> [Path] {
        return self.array
    }
                        
    func insert(element: Path) { // O(log(n))
        var toIndex = array.count
        array.append(element)
        
        var parent = (array.count - 1) / 2
        while element.pathWeight < array[parent].pathWeight {
            
            array[toIndex] = array[parent]
            array[parent] = element

            toIndex = parent
            parent = (parent - 1) / 2
        }
    }
    
    func findMinimum() -> Path? { // O(1)
        return self.array.first
    }
    
    func selectMinimum() -> Path? { // O(log(n))
        let minimum = array.first
        if array.count == 1 {
            return array.removeLast()
        }
        if !array.isEmpty {
            array[0] = array.removeLast()
        }
        
        var parentIndex = 1
        let parent = array[0]

        while parentIndex * 2 <= array.count {
            if (array[(parentIndex * 2) - 1].pathWeight < array[parentIndex - 1].pathWeight) || (array[(parentIndex * 2)].pathWeight < array[parentIndex - 1].pathWeight) {
                if parentIndex * 2 == array.count {
                    array[parentIndex - 1] = array[(parentIndex * 2 - 1)]
                    array[(parentIndex * 2 - 1)] = parent
                    break
                    
                } else if array[(parentIndex * 2 - 1)].pathWeight < array[(parentIndex * 2)].pathWeight {
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
