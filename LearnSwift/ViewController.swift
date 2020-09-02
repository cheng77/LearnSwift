//
//  ViewController.swift
//  LearnSwift
//
//  Created by Nitch Zheng on 2020/9/2.
//  Copyright © 2020 xiaohuanhuan. All rights reserved.
//


import UIKit
enum DiyCellType {
    case DiyCellTypeDefault
    case DiyCellTypeOne
    case DiyCellTypeTwo
}

enum Password {
    case number(Int,Int,Int)
    case gesture(String)
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        __initType(diyCellType:.DiyCellTypeOne)
        
        var pwd = Password.number(1, 2, 3)
        print(Mems.memStr(ofVal: &pwd))
        print(Mems.memStr(ofRef: pwd))
        
        print(MemoryLayout<Password>.size)
        print(MemoryLayout<Password>.stride)
        print(MemoryLayout<Password>.alignment)
        __initPassword(passwordType:pwd)
    }

    func __initType(diyCellType:DiyCellType) -> Void {
        switch diyCellType {
        case .DiyCellTypeDefault:
            print("默认类型")
        case .DiyCellTypeOne:
            print("一个类型")
        default:
            print("2个图片")
        }
    }
    
    func __initPassword(passwordType:Password) -> Void {
        switch passwordType {
        case .number(let a, let b, _):
            print("密码是字符串",a,b)
        case .gesture(let string):
            print("密码是字符串",string)
        }
    }
    
    
}

