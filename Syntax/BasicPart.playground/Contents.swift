//: Playground - noun: a place where people can play

import UIKit
var str = "Hello, playground"

//Baisc Simple Syntax Part One

//高阶数据类型 Tuple?
//可选类型(Optional)?



//1.常量和变量

let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

//同时声明多个变量和常量
var x = 0,y = 10,z=12
let firstclass = "template",secondclass = "author"
print(firstclass)

//类型标注格式:变量名 + : + 空格 + 类型名称
let username: String = "chenkai"

//命名:任何字符
let 陈凯 = "BMW摩托车"
print(陈凯)

let customer_define = "sd"
//let 2s = ""//不能以数字开头
//不能包含数学符号，箭头，保留的（非法的）Unicode 码位，连线与制表符

print("this is my first swift console:\(username)")





//2.注释

/*这是一个多行注释
  Console函数不错的写入.
 */

/*这是第一个多行注释的开头
 /*这是第二个被嵌套的多行注释*/
 这是第一个多行注释的结尾*/





//3.分号(分号可加可不见)

let customername: String = "Bell";
var defineGroup: Double = 45.78;

let cat = "FrankCat House";print(cat)
//唯一例外，在一行写多条独立语句时,必须加分号.




//4.整数
let intMaxValue = Int.max
let intMinValue = Int.min

//Double 至少15位精度数字
//Float 至少6位精度数字

//5.类型转换
//一般情况下都是使用int类型，只有处理明确长度的数据或者为了优化性能、内存占用等，使用显式指定长度的类型可以及时发现值衣橱.
//int8 存储数据范围: -129 - 127
//uint8存储数据范围: 0 - 255
//如果超出范围则会报错.

//let numbers:Int8 = -2000
//let toobig:UInt8 = UInt8.max + 1






