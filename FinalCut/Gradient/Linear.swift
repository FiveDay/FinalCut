//
//  Linear.swift
//  FinalCut
//
//  Created by zhangyu528 on 2020/9/9.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct Linear: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.blue, .white, .pink]), startPoint: .topLeading, endPoint: .bottomTrailing)
    }
}

struct Linear_Previews: PreviewProvider {
    static var previews: some View {
        Linear()
    }
}
