//
//  ParentClass.swift
//  SwiftStatementDemo
//
//  Created by jianwen ning on 26/05/2019.
//  Copyright © 2019 jianwen ning. All rights reserved.
//

import UIKit

/// 默认是internal的访问权限，在模块内部可以访问
class ParentClass: NSObject {
    
    ///这个方法在如何地方可以被`override`
    func speak(){
        print("这是一个说话属性，子类可以进行复写")
    }
    
    /// 这个方法是秘密，只有父类拥有，子类不可修改
    private func secret(){
        print("这是一个秘密，只有我自己知道")
    }
    
    /// 这是本类的秘密，出了该类就看不到了
    fileprivate func localSecret(){
        print("这是本类的秘密，出了该类就看不到了")
    }
}

class FirstSon: ParentClass {
    
    /// 长子说话
    override func speak() {
        print("我是长子")
    }
//长子也不能修改老爸的秘密
//    override func secret(){
//
//    }
    
    override func localSecret() {
        print("儿子把家里的秘密说出去了")
    }
}
