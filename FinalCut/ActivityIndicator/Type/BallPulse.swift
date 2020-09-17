//
//  BallPulse.swift
//  FinalCut
//
//  Created by zhangyu528 on 2020/9/3.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct BallPulse: View {
    
    public var color: Color = Color.red
    
    @State private var duration = 0.4
    @State private var firstAnimate = false
    @State private var secondAnimate = false
    @State private var thirdAnimate = false

    var body: some View {
        
        HStack(alignment: .center, spacing: 2) {
            Circle().foregroundColor(color).scaleEffect(firstAnimate ? 0.3 : 1).animation(Animation.easeInOut(duration: duration).repeatForever(autoreverses: true))
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now()) {
                        self.firstAnimate.toggle()
                    }
                }
            Circle().foregroundColor(color).scaleEffect(secondAnimate ? 0.3 : 1).animation(Animation.easeInOut(duration: duration).repeatForever(autoreverses: true))
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + self.duration / 2) {
                        self.secondAnimate.toggle()
                    }
                }
            Circle().foregroundColor(color).scaleEffect(thirdAnimate ? 0.3 : 1).animation(Animation.easeInOut(duration: duration).repeatForever(autoreverses: true))
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + self.duration) {
                        self.thirdAnimate.toggle()
                    }
                }
        }
    }
}

struct BallPulse_Previews: PreviewProvider {
    static var previews: some View {
        BallPulse()
            .frame(width: 70, height: 20)
            .previewLayout(PreviewLayout.sizeThatFits)
    }
}
