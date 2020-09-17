//
//  BallClipRotatePulse.swift
//  FinalCut
//
//  Created by zhangyu528 on 2020/9/4.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct BallClipRotatePulse: View {
    @State private var animate = false;
    
    var body: some View {
        ZStack {
            Group {
                Circle().trim(from: 0, to: 0.2).stroke(lineWidth: 4)
                    .scaleEffect(animate ? 0.6 : 1)
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: true))
                    .rotationEffect(Angle(degrees: animate ? 360 : 0))
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                
                Circle().trim(from: 0.5, to: 0.7).stroke(lineWidth: 4)
                    .scaleEffect(animate ? 0.6 : 1)
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: true))
                    .rotationEffect(Angle(degrees: animate ? 360 : 0))
                    .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                
                Circle().scaleEffect(animate ? 0.3 : 0.6).animation(Animation.linear(duration: 1).repeatForever(autoreverses: true))
            }.foregroundColor(Color.white)
                .onAppear {
                    self.animate.toggle()
            }
        }
    }
}

struct BallClipRotatePulse_Previews: PreviewProvider {
    static var previews: some View {
        BallClipRotatePulse().background(Color.red)
    }
}
