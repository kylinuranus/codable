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
        
        print("1111")
        print("3333")
        
        
        
//        let json = #"""
//             {
//                 "boolean": true,
//                 "integer": 1,
//                 "double": -3.14159265358979323846,
//                 "string": "",
//                 "array": ["1","2","3"],
//                 "dict":{}
//             }
//        """#.data(using: .utf8)!
//
//        do {
//            let p:PStruct = try JSONDecoder().decode(PStruct.self, from: json)
//
//            print("*****\(p)")
//        } catch {
//            // 异常处理
//            print("-----\(error)")
//        }
        


    }
//"key":"value","key1":"value1","key2":"value2"
}
//
//struct PStruct:Decodable {
//
//    var boolean:JSONValue
//    var integer:JSONValue
//    var double:JSONValue
//    var string:JSONValue
//    var array:[JSONValue]
//    var dict:QStruct
//
//}
//
//struct QStruct:Decodable {
//    var key:JSONValue
//    var key1:JSONValue
//    var key2:JSONValue
//}
//
////extension QStruct: JSONEmptyRepresentable {
////    typealias CodingKeyType = QStruct.CodingKeys
////}
//
//public enum JSONValue: Decodable {
//    case string(String)
//    case int(Int)
//    case double(Double)
//    case bool(Bool)
//    case object([String: JSONValue])
//    case array([JSONValue])
//
//    public init(from decoder: Decoder) throws {
//        let container = try decoder.singleValueContainer()
//        if let value = try? container.decode(String.self) {
//            self = .string(value)
//        } else if let value = try? container.decode(Int.self) {
//            self = .int(value)
//        } else if let value = try? container.decode(Double.self) {
//            self = .double(value)
//        } else if let value = try? container.decode(Bool.self) {
//            self = .bool(value)
//        } else if let value = try? container.decode([String: JSONValue].self) {
//            self = .object(value)
//        } else if let value = try? container.decode([JSONValue].self) {
//            self = .array(value)
//        } else {
//            throw DecodingError.typeMismatch(JSONValue.self, DecodingError.Context(codingPath: container.codingPath, debugDescription: "Not a JSON"))
//        }
//    }
//
////    public func decodeIfPresent<T>(_ type: T.Type, forKey key: K) throws -> T? where T : Decodable & JSONEmptyRepresentable {
////        // 先檢查有沒有我們要找的 frontCover key
////        if contains(key) {
////            // 有的話建立出 nested container
////            // nested container 會根據我們要建立的 type 之中的 coding key type 產生
////            let container = try nestedContainer(keyedBy: type.CodingKeyType.self,
////                                                forKey: key)
////            if container.allKeys.isEmpty {
////                // 如果 container 中沒有任何 key，表示我們遇到 {}
////                return nil
////            }
////        } else {
////            // 沒有找到我們要的 key
////            return nil
////        }
////
////        return try decode(T.self, forKey: key)
////    }
//
//
//}
//
//public protocol JSONEmptyRepresentable {
//    // 如果建立物件時會遇到 空 json {}，則需要提供自身的 coding keys
//    associatedtype CodingKeyType: CodingKey
//}
//
//extension KeyedDecodingContainer {
//    public func decodeIfPresent<T>(_ type: T.Type, forKey key: K) throws -> T? where T : Decodable & JSONEmptyRepresentable {
//        // 先檢查有沒有我們要找的 frontCover key
//        if contains(key) {
//            // 有的話建立出 nested container
//            // nested container 會根據我們要建立的 type 之中的 coding key type 產生
//            let container = try nestedContainer(keyedBy: type.CodingKeyType.self,
//                                                forKey: key)
//            if container.allKeys.isEmpty {
//                // 如果 container 中沒有任何 key，表示我們遇到 {}
//                return nil
//            }
//        } else {
//            // 沒有找到我們要的 key
//            return nil
//        }
//
//        return try decode(T.self, forKey: key)
//    }
//}
//
