//: Playground - noun: a place where people can play

import Cocoa
var str = "Hello, playground"

//Swift 初见
//Date：2016年06月20日14:53:54

print("hello world")

//let 声明常量
//var 声明变量

let motocyclecount = 10
print(motocyclecount)
//motocyclecount = 12 再次赋值会报错，let声明常量只能被赋值一次，而被多次使用.
//print(motocyclecount)

var motocyclebarnd = "moto guzz"
print(motocyclebarnd)
motocyclebarnd = "bmw"
print(motocyclebarnd)





//声明类型

var motocycleculture = "england sourth east"
motocycleculture = "change culture area"
//motocycleculture = 10 报错,默认情况下，常量和变量类型声明是可选的，编译器会根据第一次赋值的类型，自动推断

let motowebsitecount:Double = 70.0
var motowebsitearea:String = "beijing china"
let testvalue:Float = 4
//当然也可以声明时显示声明其类型.

//类型转换

let label = "the width is"
let width = 102
let widthLabel = label + String(width)
//let testwrong = label + width 永远不会隐式转换，如果要转换类型，只能显示转换.

let apples = 5
let oranges = 3
let applesummary = "i have \(apples) apples."
let fruitSummary = "i have \(apples + oranges) pieces of fruit."
//值转换成字符串 更简单方式: \(值类型)

let sayhi = "i'm \(28) years old,working at la"



//数组和字典
var shoppinglist = ["catfish","water","tulips","blue car"]
shoppinglist [1] = "bottle of water"

var studutsRank = [
    "mark":"70",
    "jack":"80",
    "tomas":"25"
]
studutsRank["mark"] = "change rank 70 to 65 "
studutsRank["mark"]

//创建空数组和字典
let emptyArray = [String]()
let emptyDictionary = [String:Float]()

//类型不可推断
let emptyArraytd = []
let emptyDictionarytd = [:]





//控制流

var gameScores = [75,10,45]
var teamScore = 0
for score in gameScores{
    if score > 50{
        teamScore += 3
    }else{
        teamScore += 1
    }
}
print(teamScore)


//Switch
let vegetable = "red papper"
switch vegetable {
    case "celery":
        let vegetableComment = "add some reisin"
    case "version":
        let vegetableComment = "add first comment"
    default:
        let vegetableComment = "default value"
}

//运行switch中子句之后，程序会退出switch语句，并不会继续向下运行,所以子句结尾不需要break

//For-in
let interesingNumbers = [
    "prime":[2,3,4,5],
    "fibonacci":[1,1,2,3],
    "square":[1,4,6,16]
]

var largest = 0
var largesttype = "type"
for (type,numbers) in interesingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
            largesttype = type
        }
    }
}
print(largest)
print(largesttype)
//For-in 用来遍历字典，需要两个变量来标示每个键值对.

//While
var n = 2
var times = 0
while n < 100 {
    n = n * 2
    times += 1
}
print(times)
print(n)

//While 重复运行一段代码知道不满足条件为止.
//Swift 2版本 循环条件可以在开头或结尾
//Swift 3版本 循环条件只能在开头

var firstForLoop = 0
for i in 0 ..< 4{
    firstForLoop += i
}
print(firstForLoop)

var secondForLoop = 0
for i in 0 ... 4 {
    secondForLoop += i
}
print(secondForLoop)

//两种不同写法
//..< 可以用标示递增的范围 不包含上界 如果需要包含的话则换成 ...
//底部是传统写法


//函数和闭包

func createhousenumber(name:String,address:String) ->String{
    return "ET450\(name)\(address)20"
}
createhousenumber(name: "chenkai", address: "chaoyangDist")

//多个返回值

func calculateStatistics (scores: [Int]) ->(min:Int,max:Int,sum:Int){
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        }else if score < min{
            min = score
        }
        sum += score
    }
    return(min,max,sum)
}
let result = calculateStatistics(scores: [1,6,4,9,8,22,19])
print("max value is \(result.max)")
print("sum value is \(result.2)")























































