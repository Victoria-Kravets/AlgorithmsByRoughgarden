//
//  QuickSortAlgorithm.swift
//  Algorithms
//
//  Created by CallStar on 01.09.2020.
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
     
     //4/10
     //5/10
}
