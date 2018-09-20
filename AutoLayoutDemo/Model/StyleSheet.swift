//
//  StyleSheet.swift
//  AutoLayoutDemo
//
//  Created by Liguo Jiao on 20/09/18.
//  Copyright © 2018 Liguo Jiao. All rights reserved.
//

import Foundation
import KeepLayout

let defaultPadding: KeepValue = KeepValue(value: 8, priority: KeepPriorityRequired)
// Required is 50 (quite low)
let doublePadding: KeepValue = KeepValue(value: 16, priority: KeepPriorityRequired)
let triplePadding: KeepValue = KeepValue(value: 24, priority: KeepPriorityRequired)
let zeroPadding: KeepValue = KeepValue(value: 0, priority: KeepPriorityRequired)

let defaultNavBarHeight = KeepValue(value: 44, priority: KeepPriorityRequired)

class Style: NSObject {
    static public func customPadding(value: Int) -> KeepValue { return KeepValue(value: CGFloat(value), priority: KeepPriorityRequired)}
}

extension Int {
    var keepValue: KeepValue {
        get {
            return KeepValue(value: CGFloat(self), priority: KeepPriorityRequired)
        }
    }
}
extension CGFloat {
    var keepValue: KeepValue {
        get {
            return KeepValue(value: self, priority: KeepPriorityRequired)
        }
    }
}

extension UIView {
    func applyGradient(colours: [UIColor]) -> Void {
        self.applyGradient(colours: colours, locations: nil)
    }

    func applyGradient(colours: [UIColor], locations: [NSNumber]?) -> Void {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colours.map { $0.cgColor }
        gradient.locations = locations
        self.layer.insertSublayer(gradient, at: 0)
    }
}
