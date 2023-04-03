//
//  BankRequest.swift
//  CobaLogin
//
//  Created by developer on 21/03/23.
//

import Foundation

struct BankRequest{
    let countryCode : String
    var dictionary : [String: Any] {
        return ["country_code_to": countryCode]
    }
}
