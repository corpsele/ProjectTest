//
//  HotelVC.swift
//  ProjectTest
//
//  Created by ucf on 2018/2/8.
//  Copyright © 2018年 ucf. All rights reserved.
//

import UIKit

class HotelVC: UIViewController {
    var hotelVM: HotelVM = HotelVM()
    var personVM: PersonVM = PersonVM()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        hotelVM.hotelVC = self
        
        personVM.hotelVC = self
        
        var dic = ["account":"9609224", "authenticator":"6C0CE7BDED55063D9BC471EEEC4457C0", "channelcode":"APP", "currenttime":"2018-02-09 14:05:18", "machinecode":"9b3fc9eb1060e851", "machinetype":"Simulator x64", "password":"KtQWiPB1TlhVyekbP3y2S9UlkwY2hIjBNDoaoQOEFBgEQveZsol7Tpsx%2FGDFvUxZLRGQ079o5cr7RgFoiKx5XSgqkJw3yiD2uPYP7jImhAFgu9j0YREEGjlRHFauiZGWY297O968k3QN2Z1wQIBUcHlVjibrVLqrYSNx99gSjyw%3D", "platform":"CEMAPPUCFTEST", "pwdflag":"1", "sign":"Em%2BU5pKVPVPRoMMTugaGjWTVjEkJxS67WLfn81xvomVWe4PYcsJ%2F4ij%2BUsTwhunf%2FKXkT7QVa8Ue1ZiiKml53MadZuJi7ZUEomDB2uU%2Bj%2FIBw0BcUVPjQ01kkxIq6ZxKdiUp4bLDPZbsdXC%2BHKoMXk45ows4KznpgGrQrc5mazs%3D", "version":"1.0.13"]
        
        personVM.requestPersonAPI(dic: dic, modelBlock: { (result) in
            print(result)
        })
        
//        dic = ["accesstoken":"36877E48B828B7E67031D60C5239FF4B", "account":"9609224", "authenticator":"134E7B98F2CCE034EFC9549C7302E5C3", "businesslatitude":"37.791484", "businesslongitude":"-122.400010", "channelcode":"APP", "checkInDate":"2018-02-08", "cityCode":"0101", "corpid":"SY2016080200000670", "currenttime":"2018-02-08 15:10:26", "depatementId":"230054624289095680", "employeeId":"1000000006000063", "loginname":"9609224", "machinecode":"9b3fc9eb1060e851", "machinetype":"Simulator x64", "order":"0", "pageNo":"1", "pageSize":"15", "payment":"PAYMENT_ADVANCED", "platform":"CEMAPPUCFTEST", "price":"ST", "rankid":"190095428677533696", "sign":"eikbxyGSnjcI%2BIvwSr%2B4h3gYZFGirjbRk4HHz0%2ByvMSkPo4fYhlOoeEfnb5CnkMSoZfNUtuXt3iwnCAmFYqiliQCbt19610712r3gV5Ax2m6PFREysdfzZfPdFv9PabtGCc9Vtg7qaMGFlaKo5u7uj1XHDp9sDGDgqlndhsrvK8%3D", "version":"1.0.13"]
//
//        hotelVM.requestHotelAPI(dic: dic)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
