import Cocoa
import Darwin

func say(str: String, str2: String) {
    print ("\(str + " " + str2)")
}

func summ(num1: Int, num2: Int = 1) -> Int {
    return num1 + num2
}

func multiply (nums : Int...) -> Int{
    var mult = 1
    for num in nums{
        mult *= num
    }
    return mult
}


say(str: "hello", str2: "world")
print("\(summ(num1: 10, num2: 20) )")
print ("Mult: \(multiply(nums: 30, 20, 5, 9))")
