//
//  File.swift
//  
//
//  Created by Jérôme Blondon on 09/03/2022.
//

import Foundation

class TestHelpers {
    func loadData(_ name: String) -> Data? {
        let url = Bundle.module.url(forResource: name, withExtension: "json")
        return try! Data(contentsOf: url!)
    }
}
