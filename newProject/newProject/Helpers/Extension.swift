//
//  Extension.swift
//  newProject
//
//  Created by serge on 16/03/2019.
//  Copyright © 2019 serge. All rights reserved.
//

import UIKit

extension NSObject {
    static func className() -> String {
        return String(describing: self)
    }
}
