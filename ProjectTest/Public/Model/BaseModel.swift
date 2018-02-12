//
//  BaseModel.swift
//  ProjectTest
//
//  Created by ucf on 2018/2/11.
//  Copyright © 2018年 ucf. All rights reserved.
//

import UIKit

import ObjectMapper

class BaseModel: Mappable {
    public var msgType: String?
    public var rspCode: String?
    public var rspData: Dictionary<String, Any>?
    public var rspMsg: String?
    public var rspTime: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        msgType <- map["msgType"]
        rspCode <- map["rspCode"]
        rspData <- map["rspData"]
        rspMsg <- map["rspMsg"]
        rspTime <- map["rspTime"]
    }
}
