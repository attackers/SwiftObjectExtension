//
//  StringExtension.swift
//  SwiftObjectExtension
//
//  Created by ZZCM on 2019/5/20.
//  Copyright © 2019 ZZCM. All rights reserved.
//

import UIKit
import Foundation

extension String{
    static func today() -> String {
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd"
        let dayS = format.string(from: Date())
        return dayS
    }
    
    func toDate() -> Date {
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd HH:mm:ss 'GMT'"
        let timeZone = TimeZone(identifier: "GMT")
        format.timeZone = timeZone
        let d = format.date(from: self)
        return d ?? Date()
    }
}
