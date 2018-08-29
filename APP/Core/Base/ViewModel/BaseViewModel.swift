//
//  BaseViewModel.swift
//  APP
//
//  Created by funny on 2018/7/5.
//  Copyright © 2018年 Funny. All rights reserved.
//

import UIKit
import Moya

class BaseViewModel: NSObject {

    func request() -> () {

        let provider = MoyaProvider<BaseService>()
        provider.request(.login(phone: "jiaye", code: "asdf12345")) { result in
            switch result {
            case let .success(response):

                let dict = try?response.mapJSON()
                print(dict)



            case let .failure(error):

                print(error)
            }

        }
    }


}
