//
//  ViewController.swift
//  SwiftStatementDemo
//
//  Created by jianwen ning on 26/05/2019.
//  Copyright © 2019 jianwen ning. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var titleLabel: UILabel = {
       var lab = UILabel()
       lab.frame = CGRect(x: 50, y: 100, width: 200, height: 20)
       lab.textAlignment = .center
       lab.font = UIFont.systemFont(ofSize: 18)
       lab.textColor = UIColor.blue
       return lab
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        iOSerClassFunction()
//        AppleTest()
//          matrixTest()
        self.view.addSubview(self.titleLabel)
        self.titleLabel.text = "SwiftStatementDemo"
//        extensionTest()
        parentClassTest()
    }

    func iOSerClassFunction(){
        let ITWork: iOSer = iOSer()
        ITWork.age = 25
        print("老子希望永远\(ITWork.age)岁")
        
        let iOS1 = ITWork
        iOS1.age = 18
        print("iOS1 age =\(iOS1.age)")
        print("ITWork age = \(ITWork.age)")
    }
    
    func AppleTest(){
        
        let apple: Apple = Apple()
        apple.name = "blue apple"
        apple.info()
    }
    
    func matrixTest(){
        var matrix = Matrix(rows: 2, columns: 2)
        matrix[0, 1] = 1.5
        matrix[1, 0] = 3.2
        print("matrix == \(matrix)")
        /**
         打印结果：
         matrix == Matrix(rows: 2, columns: 2, grid: [0.0, 1.5, 3.2, 0.0])
         */
    }
    
    func extensionTest(){
        
        let oneInch = 25.4.km
        print("One inch is\(oneInch) meter")
        
        let njw = Person()
        njw.run()
    }
    
    func parentClassTest(){
        
        let parent: ParentClass = ParentClass()
        parent.speak()
//        parent.secret() //老爸的秘密不能对外
//        parent.localSecret() //家里的秘密也不能对外
        let oldSon: FirstSon = FirstSon()
        oldSon.speak()
//        oldSon.secret() //儿子不能说老爸的秘密
        oldSon.localSecret() //儿子把家里的秘密说出去了
        /** 打印结果
         
         这是一个说话属性，子类可以进行复写
         我是长子
         儿子把家里的秘密说出去了
         */
    }
}

