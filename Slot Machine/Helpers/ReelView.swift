//
//  ReelView.swift
//  Slot Machine
//
//  Created by Muhammad Ilham Ramadhan on 21/10/20.
//  Copyright © 2020 Muhammad Ilham Ramadhan. All rights reserved.
//

import SwiftUI

struct ReelView: View {
    var body: some View {
        Image("gfx-reel")
            .resizable()
            .modifier(ImageModifier())
    }
}

struct ReelView_Previews: PreviewProvider {
    static var previews: some View {
        ReelView()
            .previewLayout(.fixed(width: 220, height: 220))
    }
}
