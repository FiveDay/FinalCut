//
//  SquareSpin.swift
//  FinalCut
//
//  Created by zhangyu528 on 2020/9/4.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct SquareSpin: View {
    @State private var yAnimate = false
    
    var body: some View {
        Rectangle().frame(width: 100, height: 100).rotation3DEffect(Angle(degrees: yAnimate ? 180 : 0), axis: (x: 0, y: 1, z: 0))
            .animation(Animation.linear(duration: 0.3).repeatForever())
            .foregroundColor(Color.white)
            .onAppear {
                self.yAnimate.toggle()
            }
    }
}

struct SquareSpin_Previews: PreviewProvider {
    static var previews: some View {
            SquareSpin()
    }
}
