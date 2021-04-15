//
//  Emojier.swift
//  
//
//  Created by Diego on 2021/4/13.
//

import Foundation
import Smile

public class Emojier {
    
    public init() {}
    
    public func searchEmoji(_ keyword: String) -> String {
        let emojis = Smile.emojis(keywords: [keyword])
        
        guard emojis.isEmpty else {
            return emojis.joined()
        }
        return "👻"
    }
}
