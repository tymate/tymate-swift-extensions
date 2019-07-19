//
//  DateExtensions.swift
//  TymateSwiftExtensions
//
//  Created by Simon on 19/07/2019.
//  Copyright © 2019 Tymate. All rights reserved.
//

import Foundation

extension Date {
    func days(between otherDate: Date) -> Int {
        let calendar = Calendar.current

        let startOfSelf = calendar.startOfDay(for: self)
        let startOfOther = calendar.startOfDay(for: otherDate)
        let components = calendar.dateComponents([.day], from: startOfSelf, to: startOfOther)

        return abs(components.day ?? 0)
    }
}

