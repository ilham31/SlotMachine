//
//  Extensions.swift
//  Slot Machine
//
//  Created by Muhammad Ilham Ramadhan on 21/10/20.
//  Copyright © 2020 Muhammad Ilham Ramadhan. All rights reserved.
//

import SwiftUI

extension Text {
    func scoreLabelStyle() -> Text {
        self
            .foregroundColor(.white)
            .font(.system(size: 10, weight: .bold, design: .rounded))
    }
    
    func scoreNumberStyle() -> Text {
        self
            .foregroundColor(.white)
            .font(.system(.title, design: .rounded))
            .fontWeight(.heavy)
    }
}
