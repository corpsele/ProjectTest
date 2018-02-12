//
//  HotelVM.swift
//  ProjectTest
//
//  Created by ucf on 2018/2/8.
//  Copyright © 2018年 ucf. All rights reserved.
//

import UIKit

import RxSwift
import Moya
import Alamofire
import ObjectMapper
import RxCocoa

class HotelVM: NSObject {
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

    public func requestHotelAPI(dic: Dictionary<String, Any>)
    {
//        let data = RequestAPI.queryHotelList(dic: dic)
//        print("data = \(data)")
        
        let rxProvider = MoyaProvider<RequestAPI>()
        rxProvider.request(.queryHotelList(dic: dic)) { result in
            switch result {
            case let .success(moyaResponse):
                let data = moyaResponse.data
                
                let statusCode = moyaResponse.statusCode
                
                print("data = \(try! moyaResponse.mapJSON())  \n  statusCode = \(statusCode)")

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
    
    func mapUser() {
        //解析成User对象

//        rxProvider.request(.login(username: "username", password: "password"))
//            .mapResponseToObject(type: User.self)
//            .subscribe(onNext: { user in
//                debugPrint(user)
//            })
//            .addDisposableTo(disposeBag)
//
//        //解析成User对象数组
//        rxProvider.request(.login(username: "username", password: "password"))
//            .mapResponseToObjectArray(type: User.self)
//            .subscribe(onNext: { users in
//                debugPrint(users)
//            })
//            .addDisposableTo(disposeBag)
        
        
    }

}
