//
//  ColorAtributeTransformer.swift
//  BowTiesCoreDataP2
//
//  Created by Mac on 14.06.2021.
//

import UIKit

class ColorAtributeTransformer: NSSecureUnarchiveFromDataTransformer {

    override static var allowedTopLevelClasses: [AnyClass] {
        [UIColor.self]
    }
    
    static func register() {
        let className = String(describing: ColorAtributeTransformer.self)
        let name = NSValueTransformerName(className)
        
        let transformer = ColorAtributeTransformer()
        ValueTransformer.setValueTransformer(transformer, forName: name)
    }
}
