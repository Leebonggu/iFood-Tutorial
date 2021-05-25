//
//  help.swift
//  iFood
//
//  Created by Bonggu Lee on 2021/05/25.
//

import UIKit

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to do it")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("failed")
        }
        return loaded
    }
}
