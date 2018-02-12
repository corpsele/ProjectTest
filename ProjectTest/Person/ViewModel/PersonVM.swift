//
//  PersonVM.swift
//  ProjectTest
//
//  Created by ucf on 2018/2/9.
//  Copyright © 2018年 ucf. All rights reserved.
//

import UIKit

import RxSwift
import Moya
import Alamofire
import ObjectMapper
import RxCocoa

class PersonVM: NSObject {
    public var _hotelVC: HotelVC? = nil
    public var hotel: Hotel? = nil
    
    public var hotelVC: HotelVC{
        get {
            return _hotelVC!
        }
        set {
            _hotelVC = newValue
        }
    }
    
    public func requestPersonAPI(dic: Dictionary<String, Any>, modelBlock: @escaping (Dictionary<String, Any>) -> Void)
    {
        //        let data = RequestAPI.queryHotelList(dic: dic)
        //        print("data = \(data)")
        
        let rxProvider = MoyaProvider<RequestPersonAPI>()
        rxProvider.request(.queryPerson(dic: dic)) { result in
            switch result {
            case let .success(moyaResponse):
                let data = moyaResponse.data
                
                let statusCode = moyaResponse.statusCode
                let dd = try! moyaResponse.mapJSON() as! Dictionary<String, Any>
                print("data = \(dd)  \n  statusCode = \(statusCode) dd = \(String(describing: dd))")
                let mm = Mapper<UserInfo>().map(JSON: dd)
                modelBlock(dd)
                break
            // do something with the response data or statusCode
            case let .failure(error):
                // this means there was a network failure - either the request
                // wasn't sent (connectivity), or no response was received (server
                // timed out).  If the server responds with a 4xx or 5xx error, that
                // will be sent as a ".success"-ful response.
                break
            }
        }
        
        
    }

}
