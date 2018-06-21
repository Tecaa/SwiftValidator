//
//  Validation.swift
//
//  Created by Jeff Potter on 11/11/14.
//  Copyright (c) 2015 jpotts18. All rights reserved.
//

import Foundation

/**
 The `Rule` protocol declares the required methods for all objects that subscribe to it.
 */
open class Rule {
    let localization : Localization = LocalizationInstancer.instance();
    /**
     Validates text of a field.
     
     - parameter value: String of text to be validated.
     - returns: Boolean value. True if validation is successful; False if validation fails.
     */
    func validate(_ value: String) -> Bool
    { return true }
    /**
     Displays error message of a field that has failed validation.
     
     - returns: String of error message.
     */
    func errorMessage() -> String
    { return "" }
    
    init() {}
}
