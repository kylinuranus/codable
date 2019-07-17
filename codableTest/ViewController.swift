//
//  ViewController.swift
//  codableTest
//
//  Created by 赵申侃 on 2019/7/16.
//  Copyright © 2019 赵申侃. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let json = #"""
             {
                 "boolean": true,
                 "integer": 1,
                 "double": -3.14159265358979323846,
                 "string": "string",
                 "array": ["1","2","3"]
             }
        """#.data(using: .utf8)!
        
        let p:PStruct = try! JSONDecoder().decode(PStruct.self, from: json)
        
        
        print(p)

    }

}

struct PStruct:Decodable {
    
    var boolean:Bool
    var integer:Int
    var double:Double
    var string:String
    var array:[String]
    
    
}

