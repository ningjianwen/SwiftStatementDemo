//
//  Student.swift
//  SwiftStatementDemo
//
//  Created by jianwen ning on 26/05/2019.
//  Copyright © 2019 jianwen ning. All rights reserved.
//

import Foundation

struct Student {
    var name: String
    var age: Int
    
    func introduce(){
        print("我叫：\(name),今年\(age)岁")
    }
}

enum Orientation: Int{
    case East
    case South
    case West
    case North
        
        /**
         或者
         enum Orientation:Int{
         case East,South,West,North
         }
         */
}
