//
//  BaseRequest.swift
//  APP
//
//  Created by funny on 2018/7/9.
//  Copyright © 2018年 Funny. All rights reserved.
//

import Foundation
import Moya

enum BaseService {
    case login(phone: String ,code: String)
}

extension BaseService : TargetType {

    var baseURL: URL {
        return URL.init(string: "http://39.107.124.192:8080")!
    }

    var path: String {
        switch self {
        case .login:
            return "/dubbo-customer-app/api/login"
        }
    }

    var method: Moya.Method {
        switch self {
        case .login:
            return .post
        }
    }

    var sampleData: Data {
        switch self {
        case .login:
            return "just for test".data(using: String.Encoding.utf8)!
        }
    }

    var task: Task {
        return .requestPlain
    }

    var headers: [String : String]? {
        return ["Content-Type" : "application/json;charset=utf-8;text/html"]
    }

    
}
