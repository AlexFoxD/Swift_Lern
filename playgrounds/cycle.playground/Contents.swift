import Cocoa

var arr = [9,1,8,2,7,3,6,4,5]

//print(arr.capacity)
//print(arr.count)
print(arr)

//for i in 1...Int(pow(Double(arr.count),2)) {
for i in 1...arr.count * arr.count {
    let index = i % arr.count
    if index + 1 != arr.count, arr[index] > arr[index + 1]{
        let tmp = arr[index]
        arr[index] = arr[index + 1]
        arr[index + 1] = tmp
    }
}

print(arr)
