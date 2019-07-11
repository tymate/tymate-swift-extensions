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

    func isUrl() -> Bool {
        let detector = try! NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue)
        if let match = detector.firstMatch(in: self, options: [], range: NSRange(location: 0, length: self.utf16.count)) {
            // it is a link, if the match covers the whole string
            return match.range.length == self.utf16.count
        } else {
            return false
        }
    }

    func cleanUrl() -> String {
        let withoutHttps = self.replacingOccurrences(of: "https://", with: "").replacingOccurrences(of: "http://", with: "")
        return "https://" + withoutHttps
    }

    func phoneCall() {
        if let url = URL(string: "tel://\(self)"), UIApplication.shared.canOpenURL(url) {
            if #available(iOS 10, *) {
                UIApplication.shared.open(url)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }

    func mailTo() {
        if let email = self.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let url = URL(string: "mailto:\(email)"), UIApplication.shared.canOpenURL(url) {
            if #available(iOS 10, *) {
                UIApplication.shared.open(url)
            } else {
                UIApplication.shared.openURL(url)
            }
        }
    }

    func capitalizeFirstLetter() -> String {
        let first = String(self.prefix(1)).capitalized
        let other = String(self.dropFirst())
        return first + other
    }

    func toNumber() -> NSNumber? {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = NumberFormatter.Style.decimal
        let number = numberFormatter.number(from: self)
        return number
    }

    func toFloat() -> Float {
        let number = self.toNumber()

        return number?.floatValue ?? 0
    }

    func toDouble() -> Double {
        let number = self.toNumber()

        return number?.doubleValue ?? 0
    }

    func isEqualToZero() -> Bool {
        return self.toFloat() == 0
    }
}
