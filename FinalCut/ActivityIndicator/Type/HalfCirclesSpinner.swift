
//
//  HalfCirclesSpinner.swift
//  FinalCut
//
//  Created by zhangyu528 on 2020/9/2.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct HalfCirclesSpinner: View {
    @State private var animate = true
    
    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0, to: 0.2)
                .stroke(AngularGradient(gradient: Gradient(colors: [Color.gray]), center: .center), style: StrokeStyle(lineWidth: 6, lineCap: .round))
                .rotationEffect(Angle(degrees: animate ? 360 : 0))
                .animation(Animation.linear(duration: 0.7).repeatForever(autoreverses: false))
            
            Circle()
                .trim(from: 0.5, to: 0.7)
            .stroke(AngularGradient(gradient: Gradient(colors: [Color.gray]), center: .center), style: StrokeStyle(lineWidth: 6, lineCap: .round))
            .rotationEffect(Angle(degrees: animate ? 360 : 0))
            .animation(Animation.linear(duration: 0.7).repeatForever(autoreverses: false))
        }.onAppear {
            if self.animate {
                self.animate.toggle()
            }
        }
    }
}

struct HalfCirclesSpinner_Previews: PreviewProvider {
    static var previews: some View {
        HalfCirclesSpinner()
    }
}
