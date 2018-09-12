//
//  AppRequest.swift
//  APP
//
//  Created by funny on 2018/9/8.
//  Copyright © 2018年 Funny. All rights reserved.
//

import Moya

enum AppRequest {
    // 请求天气
    case weather(phone: String, code: String)
}

extension AppRequest : TargetType {

    var baseURL: URL {
        return URL.init(string: "http://39.107.124.192:8080")!
    }

    var path: String {
        switch self {
        case .weather:
            return "/dubbo-customer-app/api/login"
        }
    }

    var method: Moya.Method {
        switch self {
        case .weather:
            return .post
        }
    }

    var sampleData: Data {
        switch self {
        case .weather:
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
