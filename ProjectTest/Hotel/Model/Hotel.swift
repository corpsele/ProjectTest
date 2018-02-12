//
//  Hotel.swift
//  ProjectTest
//
//  Created by ucf on 2018/2/8.
//  Copyright © 2018年 ucf. All rights reserved.
//

import UIKit

import ObjectMapper

import Moya

class Hotel: Mappable {
    public var msgType: String?
    public var rspCode: String?
    public var rspData: String?
    public var rspMsg: String?
    public var rspTime: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        
    }
    
}

