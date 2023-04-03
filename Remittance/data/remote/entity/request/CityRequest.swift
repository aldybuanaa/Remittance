//
//  CityRequest.swift
//  CobaLogin
//
//  Created by developer on 21/03/23.
//

import Foundation

struct CityRequest{
    let countryCode : String
    var dictionary : [String: Any] {
        return ["mcountry_code": countryCode]
    }
}
