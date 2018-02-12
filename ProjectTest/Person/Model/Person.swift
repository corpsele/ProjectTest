//
//  Person.swift
//  ProjectTest
//
//  Created by ucf on 2018/2/9.
//  Copyright © 2018年 ucf. All rights reserved.
//

import UIKit

import ObjectMapper

import Moya

class Person: BaseModel {
//    public var userInfo: UserInfo?


    required init?(map: Map) {
       super .init(map: map)
    }
    
    override func mapping(map: Map) {
      super.mapping(map: map)
        
//        userInfo = (self.rspData!["userInfo"] as! UserInfo)
    }
    
}
