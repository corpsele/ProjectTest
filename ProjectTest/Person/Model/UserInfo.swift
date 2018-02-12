//
//  UserInfo.swift
//  ProjectTest
//
//  Created by ucf on 2018/2/11.
//  Copyright © 2018年 ucf. All rights reserved.
//

import UIKit

import ObjectMapper

class UserInfo: BaseModel {
    public var accesstoken: String?
    public var birth: String?
    public var birthday: String?
    public var corpid: String?
    
    required init?(map: Map) {
        super.init(map: map)
    }
    
    override func mapping(map: Map) {
        super.mapping(map: map)
        let ddd = self.rspData!["userInfo"] as! Dictionary<String, Any>
        accesstoken = ddd["accesstoken"] as? String
        birth = ddd["birth"] as? String
        birthday = ddd["birthday"] as? String
        corpid = ddd["corpid"] as? String 
    }
}
