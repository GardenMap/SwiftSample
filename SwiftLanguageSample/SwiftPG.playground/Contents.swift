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


//函数
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

//参数个数可变
func sumof (numbers:Int...) ->Int{
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}
sumof(numbers: 42,132,12)

func agvof (numbers:Int...) ->Int{
    var count = 0
    var sum = 0
    for number in numbers {
        count += 1
        sum += number
    }
    return sum/count
}
agvof(numbers: 12,56,32,45)

//函数嵌套
func returnFifteen () -> Int{
    var y = 20
    func add() {
        y += 5
    }
    add()
    return y
}
returnFifteen()
//函数可以嵌套,被嵌套的函数可以访问外侧函数的变量，重构一个太长或者太复杂的函数.
//可以在行数中进行重构整理一款地理的业务流程.




//函数作为返回值
func createreport () -> ((Int) -> Int){
    func addone (number:Int) -> Int{
        return 1 + number
    }
    return addone
}
var definevalue = createreport()
definevalue(12)
//cratereport函数返回值为，一个参数为Int 返回值为Int 类型的函数.

func getusertype (type:String) -> ((String) -> String){
    var rangearg = 0.1
    if type.isEmpty {
        rangearg = 0.5
    }else if type == "highlevel"{
        rangearg = 0.8
    }
    
    func spiltgroup (groupname:String) -> String{
        return "spilt out \(groupname) kit \(rangearg)"
    }
    return spiltgroup
}

var changevalue = getusertype(type: "highlevel")
changevalue("kai'document")



//函数作为参数值
func hasAnyMatch (list:[Int],condition:(Int) -> Bool) -> Bool{
    for item in list{
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen (number: Int) -> Bool{
    return number < 10;
}

var numbers = [10,15,8,18]
hasAnyMatch(list: numbers, condition: lessThanTen)

//闭包尚未查看.

//对象和类

class customerRecord {
    var customername = "green lin"
    func combineAddress(customername:String) -> String {
        return "customer name \(customername) is combine operatore is done"
    }
}

var firstcustomer = customerRecord()
firstcustomer.customername = "chenkai" //有没有私有变量一说？
firstcustomer.combineAddress(customername: "deyu")

class collectionRecord{
    var clientversion = "1.0"
    init(clientversion:String) {//构造函数
        self.clientversion = clientversion
    }
    
    deinit {//析构函数
        
    }
    
    func uploaddata() -> String {
        return "device client version \(clientversion)"
    }
}

var collectiondef = collectionRecord.init(clientversion: "2.36")
var colvalue = collectiondef.uploaddata()

//子类(继承)

class childdefine : collectionRecord{
    var sideLength:Double
    init(sideLength:Double,version:String) {
        self.sideLength = sideLength
        super.init(clientversion:version )
        clientversion = "V5.2"
    }
    
    func area() -> String {
        return "device is aleady fresh \(clientversion)"
    }
    
    override func uploaddata() -> String {
        return "child class override method"
    }
}

//练习子类

class NamedShape {
    var numberOfSides:Int = 0
    var name:String
    
    init(name:String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "a shape with \(numberOfSides) sides."
    }
}

class Circle:NamedShape {
    var circle:Double
    init(circleWidth:Double,name:String) {
        self.circle = circleWidth
        super.init(name: name)
    }
    
    func area() -> Double {
        return self.circle * 2
    }
    
    override func simpleDescription() -> String {
        return "Circle Simple Description Document"
    }
}

var singleCircle = Circle.init(circleWidth: 20.5, name: "Circle Shape")
singleCircle .area()

//问题类中属性是否有私有private 或者公开public区别

class EquilateraTriangle : NamedShape{
    var sideLength:Double = 0.0
    init(sideLength:Double,name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter:Double {
        get{
            return 3.0 * sideLength
        }
        set{
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "an simple document has been descri"
    }
}

var target = EquilateraTriangle.init(sideLength: 3.1, name: "ample")
var single = EquilateraTriangle(sideLength: 34,name: "d")
print(target.perimeter)
target.perimeter = 10
print(target.perimeter)

//newValue 类似关键字 代表新值

//WillSet 和 DidSet
//在Swift 3.0 貌似这个属性没有了
class TriangleAndSquare {
//    var triangle:EquilateraTriangle {
//      willSet{
    
//       }
//    }
}

//方法和函数的参数别名用法
class counter {
    var count:Int = 0
    func incrementBy(amount:Int,numberOfTimes times:Int)  {
        count += amount * times
    }
}

var counterSingle = counter()
counterSingle.incrementBy(amount: 3, numberOfTimes: 8)


//变量可选值 Swift 3.0 中不可用了吗？
//let sideLength = counterSingle?.count


//枚举和结构体

enum Rank:Int{
    case Ace = 1 //Int类型 字符串或者浮点数
    case Two,Three,Four,Five,Six,Seven,Eight,Nine,Ten
    case Jack,Queen,King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .King:
            return "king"
        case .Queen:
            return "queen"
        default:
            return String(self .rawValue)
        }
    }
}

let ace = Rank.Ace
let aceRawValue = ace.rawValue

//Rawvalue 在原始值和枚举值之间切换
if let convertedRank = Rank(rawValue:3){
    let threeDesc = convertedRank.simpleDescription()
}

//枚举和结构体还需要在看

//协议和扩展

protocol ExampleProtocol {
    var simpleDescription: String {get}
    mutating func adjust()//Mutating 关键字做什么用的？
}

class SimpleClass:ExampleProtocol {
    var simpleDescription: String = "a very simple class"
    var anotherProperty:Int = 6915
    func adjust() {
         simpleDescription += "now 100% adjusted"
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure : ExampleProtocol {
    var simpleDescription: String = "a simple Structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()

//enum RankType:ExampleProtocol {
//    var simpleDescription: String = " a simple enum type"
//    mutating func adjust() {
//        simpleDescription += " (enum type)"
//    }
//}

//mutating关键字是用来标记一个会修改结构体的方法 
//SimpleClass 不需要标记任何方法因为类中的方法经常会修改类

extension Int:ExampleProtocol {
    var simpleDescription:String{
        return "The Number \( self )"
    }
    mutating func adjust() {
        self += 42
    }
}

7.simpleDescription
//7.adjust() //为什么不能调用adjust方法？ 因为7是一个常量
//编译错误：cannot use mutating member on immutable value: literals are not mutable
7.simpleDescription


//采用Var 调用adjust方法成功
var protocolValue : ExampleProtocol = 12
protocolValue.simpleDescription
protocolValue.adjust()
protocolValue.simpleDescription

//不可抗拒的外力导致这块没看清楚 稍后在看.

//泛型
//var ItemType = "done"
//func repeat<ItemType> (item:ItemType,times:Int) -> [ItemType]{
//    var result = [ ItemType ]()
//    for i in  0 ..<times {
//        result.append(item)
//    }
//    return result
//}



















































