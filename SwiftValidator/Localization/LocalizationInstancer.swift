//
//  LocalizationInstancer.swift
//  SwiftValidator
//
//  Created by Zeke on 21-06-18.
//  Copyright © 2018 jpotts18. All rights reserved.
//

import Foundation

class LocalizationInstancer
{
   
    static func instance(localizationName : String) -> Localization
    {
        let className = localizationName.uppercased().replacingOccurrences(of: "-", with: "_")
        
        let classInst = NSClassFromString(className) as! NSObject.Type
        return classInst.init() as! Localization
    }
    static func instance() -> Localization
    {
        return instance(localizationName: "en-us");
    }
}
