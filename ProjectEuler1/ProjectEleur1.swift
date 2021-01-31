//
//  ProjectEleur1.swift
//  ProjectEuler1
//
//  Created by Alexander Sobolev on 27.01.2021.
//

import Foundation



    

//  1. Если выписать все натуральные числа меньше 10, кратные 3 или 5, то получим 3, 5, 6 и 9. Сумма этих чисел равна 23. Найдите сумму всех чисел меньше 1000, кратных 3 или 5.
let array = Array(1..<1000)
var sum = 0
for number in array {
    if number % 3 == 0 || number % 5 == 0 {
        sum += number
    }
}
print(sum)

func sumFinder (until n : Int) -> Int {
return (0...n).lazy.filter{ $0.isMultiple(of: 3) || $0.isMultiple(of: 5) }.reduce(0, +)
}

sumFinder(until: 999)

