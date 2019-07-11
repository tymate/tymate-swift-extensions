//
//  StringExtensions.swift
//  TymateSwiftExtensions
//
//  Created by Simon on 11/07/2019.
//  Copyright © 2019 Tymate. All rights reserved.
//

import Foundation

public extension String {
    func isValidEmail() -> Bool {
        // print("validate calendar: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"

        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
}
