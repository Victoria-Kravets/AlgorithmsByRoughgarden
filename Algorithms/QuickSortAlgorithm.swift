//
//  QuickSortAlgorithm.swift
//  Algorithms
//
//  Created by Victoria Kravets on 01.09.2020.
//  Copyright © 2020 Victoria Kravets. All rights reserved.
//

import Foundation

class QuickSortAlgorithm {
    var k = 0
     // [3,2,8,5,1,4,7,6]
     func quickSort(array: inout [Int], l: Int, r: Int) {

         if l >= r { return }
         let p = Int.random(in: l...r)
         
        // print("Рандомный опроный элемент: ", p , "l = \(l), r = \(r)")
         (array[p], array[l]) = (array[l], array[p])
         
         let j = partition(array: &array, l: l, r: r)
         
         
         quickSort(array: &array, l: l, r: j - 1)
         quickSort(array: &array, l: j + 1, r: r)
    
     }
     
     func partition(array: inout [Int], l: Int, r: Int) -> Int {
         let p = array[l]
         var i = l + 1
         for j in l + 1 ... r {
             if array[j] < p {
                 (array[j], array[i]) = (array[i], array[j])
                 i += 1
             }
         }
         (array[l], array[i - 1]) = (array[i - 1], array[l])
         k += 1
         print("K: ", k)
         return i - 1
     }
      
     // [3,2,8,5,1,4,7,6]  выбираем опрорный например 3
     // [3,2,8,5,1,4,7,6]  ставим его на нулевую позицию
     
     // обрабатываем в partition //сравниваем какждый элемент масива с опорным и если опроный больше то меням местами встресающийся элемент(j) с i
     // [3,2,8,5,1,4,7,6], i=i+1=2 - ничего не меняем (тк i=1 и j=1), но увеличиваем i тк 2 < 3
     // [3,2,8,5,1,4,7,6], i=2 - ничего не меняем так как 5 > 3
     // [3,2,1,5,8,4,7,6], i=i+1=3 - меняем 1 и 8(тк i=2) местами так как 1 < 3
     // [3,2,1,5,8,4,7,6], i=3 - ничего не меняем так как 4 > 3
     // [3,2,1,5,8,4,7,6], i=3 - ничего не меняем так как 7 > 3
     // [3,2,1,5,8,4,7,6], i=3 - ничего не меняем так как 6 > 3
     
     // [1,2,3,5,8,4,7,6] после того как прошлись по всем элементам меняем нулевой элемент массива с i - 1
     // функция partition возвращает i - 1
     
     //рекурсивно проделываем это с правой и левой частью
     
    //[4,17,1,13,3,18,6,15,2,5,7,8,11,9,20,10,12,14,16,19]
    func rSelect(array: inout [Int], l: Int, r: Int, i: Int) -> Int {
        if l == r { return array[l]}
        
        let p = Int.random(in: l...r)
        
        (array[p], array[l]) = (array[l], array[p])
        
        let j = partition(array: &array, l: l, r: r)
        
        if j == i {
            return array[i]
        } else if j > i {
            return rSelect(array: &array, l: l, r: j - 1, i: i)
        } else {
            return rSelect(array: &array, l: j + 1, r: r, i: i)
        }
    }
    // [3,2,8,9,5,1,10,4,7,6] // 5 & 6
    func dSelect(array: inout [Int], l: Int, r: Int, i: Int) -> Int {
        if l == r { return array[l]}

        let p = findMiddle(arr: array)
        
        (array[p], array[l]) = (array[l], array[p])
        
        let j = partition(array: &array, l: l, r: r)
        if j == i {
            return array[i]
        } else if j > i {
            return rSelect(array: &array, l: l, r: j - 1, i: i)
        } else {
            return rSelect(array: &array, l: j + 1, r: r, i: i)
        }
    }
    
    func findMiddle(arr: [Int]) -> Int {
        var minVal = arr[0]
        var maxVal = arr[0]
        for j in 1 ..< arr.count  {
           let currEl = arr[j]
           if (currEl > maxVal) {
             maxVal = arr[j]
           }
           if (currEl < minVal) {
             minVal = arr[j]
           }
         }
         let average = (maxVal + minVal) / 2

         print("min: \(minVal), max: \(maxVal), average: \(average)")

         var averageEl = arr[0]
         var average_diff = maxVal - minVal

        for j in 1 ..< arr.count {
           let currEl = arr[j]
           let temp_average_diff = abs(currEl - average)
           print("currEl: \(currEl), average_diff: \(average_diff), temp_average_diff: \(temp_average_diff)")
           if (temp_average_diff < average_diff) {
             average_diff = temp_average_diff
             averageEl = currEl
           }
         }
         return averageEl
    }
    
}
