import Cocoa
import Darwin

var squere: (Int) -> Int = {
    num in
    return num*num
}

var numbers = [9,3,5,4,8,2,7]

let sortedNums = numbers.sorted(by: {x,y in x < y})

for i in sortedNums{
    print(i)
}

let squareNums = numbers.map {
    (num: Int) -> String in
    "\(num * num)"
}

print(squareNums)

let nums = numbers.filter {
    (num: Int) -> Bool in
    return num % 2 == 0
}

print("\(nums)")
