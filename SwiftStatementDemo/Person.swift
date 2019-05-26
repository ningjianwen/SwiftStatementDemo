//
//  Person.swift
//  SwiftStatementDemo
//
//  Created by jianwen ning on 26/05/2019.
//  Copyright © 2019 jianwen ning. All rights reserved.
//

import UIKit

class Person: NSObject {
    /// add `class` key word before function, this function become a class function
    class func work(){
        print("everyone need work!")
    }
}

class iOSer: Person{
    let name: String = "ningjianwen"
    var age: Int = 30
    var height: Float = 170
}

class Fruit : NSObject {
    
    var sellPrice: Double = 0.0
    var name: String = "fruit"
    func info(){
        print("this fruit name is fruit")
    }
    
    //修饰词 final 表示 不可重写 可以将类或者类中的部分实现保护起来,从而避免子类破坏
    final func price(){
        //something price code here
        //...
    }
}

class Apple: Fruit {
    func eat(){
        print("eat fruit")
    }
    //重写info方法
    override func info() {
        print("this fruit name is \(super.name)")
    }
    //重写name属性
    override var name: String{
        set{
            super.name = newValue
        }
        get{
           return super.name
        }
    }
}

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}

class Father: NSObject {
    var name: String?
    required init(name: String) {
        self.name = name
    }
}

class Son: Father {
    required init(name: String) {
        super.init(name: name)
        self.name = name
    }
}


// MARK: - 添加计算属性
extension Double{
    var km: Double { return self * 1_000.0}
    var m: Double { return self}
    var cm: Double { return self / 100.0}
}


// MARK: - 为person 添加方法
extension Person{
    
    func run(){
        print("人有行走的属性")
    }
}


