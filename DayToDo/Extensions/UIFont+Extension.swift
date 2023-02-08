//
//  UIFont+Extension.swift
//  DayToDo
//
//  Created by jin on 2/8/23.
//

import UIKit

extension UIFont {

    static func localizedFont(size: CGFloat) -> UIFont {
        guard let code = NSLocale.autoupdatingCurrent.languageCode else {
            return UIFont.systemFont(ofSize: size, weight: .bold)
        }
        switch(code) {
        case "ko":
            return UIFont.systemFont(ofSize: size, weight: .bold)
        default:
            return UIFont(name: "Montserrat-Bold", size: size) ?? UIFont.systemFont(ofSize: size)
        }
    }
}
