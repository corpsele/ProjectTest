//
//  RequestAPI.swift
//  ProjectTest
//
//  Created by ucf on 2018/2/8.
//  Copyright © 2018年 ucf. All rights reserved.
//

import UIKit

import Moya


enum RequestAPI {
    case queryHotelList(dic: Dictionary<String, Any>)
}

//http://10.18.13.163:8090/krmobile/queryHotelList.app
extension RequestAPI: TargetType {
    var headers: [String : String]? {
        return ["Content-type": "application/json"]
    }
    
    public var task: Task {
        switch self {
        case let .queryHotelList(dic):
           return .requestParameters(parameters: dic, encoding: URLEncoding.queryString)
        }
        
    }
    var parameterEncoding: ParameterEncoding { return URLEncoding.default }
    public var baseURL: URL { return URL(string:  "http://10.18.13.163:8090/krmobile")! }
    
    public var path: String {
        switch self {
        case .queryHotelList:
            return "/queryHotelList.app"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .queryHotelList:
            return .post
        }
    }
    var parameters: [String: Any]? {
        switch self {
        case .queryHotelList(let dic):
            return dic
            
        }
        
    }
    
    public var validate: Bool {
        return true
    }
    public var sampleData: Data {
        return "[{\"name\": \"Repo Name\"}]".data(using: String.Encoding.utf8)!
    }
}
