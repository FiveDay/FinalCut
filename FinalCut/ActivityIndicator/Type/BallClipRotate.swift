//
//  BallClipRotate.swift
//  FinalCut
//
//  Created by zhangyu528 on 2020/9/4.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct BallClipRotate: View {
    @State private var animate = false
    
    var body: some View {
        Circle().trim(from: 0, to: 0.7).stroke(lineWidth: 4)
            .rotationEffect(Angle(degrees: animate ? 360 : 0))
            .animation(Animation.linear(duration: 0.8).repeatForever(autoreverses: false))
            .scaleEffect(animate ? 0.6 : 1)
            .animation(Animation.linear(duration: 0.8).repeatForever(autoreverses: true))
            .foregroundColor(Color.white)
            .onAppear {
                self.animate.toggle()
            }
    }
}

struct BallClipRotate_Previews: PreviewProvider {
    static var previews: some View {
        BallClipRotate().background(Color.red)
    }
}
