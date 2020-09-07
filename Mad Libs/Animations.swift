//
//  Animations.swift
//  Mad Libs
//
//  Created by Kamsi Oramasionwu on 2/13/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation
import UIKit

extension UIView { //extensions add new functionality to a type
    func fadeIn() { // a function that changes the alpha value of an object to 1 over 1 second in a way that makes it look like it is fading in
        UIView.animate(withDuration: 1.0, animations: {self.alpha = 1.0}, completion: {
            (finished: Bool) -> Void in})
    }
    
    func fadeOut() { // a function that changes the alpha value of an object to 0 over 1.5 seconds in a way that makes it look like it is fading out
        UIView.animate(withDuration: 1.5, animations: {self.alpha = 0.0}, completion: {
            (finished: Bool) -> Void in})
    }

}
