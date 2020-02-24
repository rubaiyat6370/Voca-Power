//
//  AppConstants.swift
//  VocaPower
//
//  Created by Rubaiyat Jahan Mumu on 2020-02-18.
//  Copyright © 2020 Rubaiyat Jahan Mumu. All rights reserved.
//

import Foundation

import UIKit

class AppConstants {

    static let themeColor: UIColor = UIColor(red: 88.0/255.0, green: 86.0/255.0, blue: 214.0/255.0, alpha: 1)

    static let idealHeightIphone: CGFloat = 667.0
    static let idealWidthIphone: CGFloat = 375.0
    static let idealHeightIpad: CGFloat = 1194.0
    static let idealWidthIpad: CGFloat = 834.0

    static let heightConstant: CGFloat = {
        if AppUtils.deviceType == "iPhone" {
            return AppUtils.deviceHeight / AppConstants.idealHeightIphone
        } else {
            return AppUtils.deviceHeight / AppConstants.idealHeightIpad
        }
    }()

    static let widthConstant: CGFloat = {
        if AppUtils.deviceType == "iPhone" {
            return AppUtils.deviceWidth / AppConstants.idealWidthIphone
        } else {
            return AppUtils.deviceWidth / AppConstants.idealWidthIpad
        }
    }()
}

class HeightConstraint: NSLayoutConstraint {
    override var constant: CGFloat {
        set {
            super.constant = newValue
        }
        get {
            return super.constant * AppConstants.heightConstant
        }
    }
}

class WidthConstraint: NSLayoutConstraint {
    override var constant: CGFloat {
        set {
            super.constant = newValue
        }
        get {
            return super.constant * AppConstants.widthConstant
        }
    }
}
