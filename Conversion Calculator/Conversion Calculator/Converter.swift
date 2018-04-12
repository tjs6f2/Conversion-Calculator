//
//  Converter.swift
//  Conversion Calculator
//
//  Created by Thomas Schultz on 4/12/18.
//  Copyright © 2018 array. All rights reserved.
//

import Foundation


struct Converter {
    let label: String
    let inputUnit: String
    let outputUnit: String
    
    init(label: String, inputUnit: String, outputUnit: String) {
        self.label = label
        self.inputUnit = inputUnit
        self.outputUnit = outputUnit
    }
}
