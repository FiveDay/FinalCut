//
//  BallGridPulse.swift
//  FinalCut
//
//  Created by zhangyu528 on 2020/9/4.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct BallGridPulse: View {
    @State private var animates = [false,false,false,
                                false,false,false,
                                false,false,false]
    
    var body: some View {
        VStack(spacing: 2) {
            HStack(spacing: 2) {
                Circle().foregroundColor(Color.white).scaleEffect(animates[0]  ? 0.3 : 1).opacity(animates[0] ? 0.3 : 1 ).animation(Animation.easeInOut(duration: 0.36).repeatForever(autoreverses: true))
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now()) {
                            self.animates[0].toggle()
                        }
                    }
                Circle().foregroundColor(Color.white).scaleEffect(animates[1]  ? 0.3 : 1).opacity(animates[1]  ? 0.3 : 1 ).animation(Animation.easeInOut(duration: 0.36).repeatForever(autoreverses: true))
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.18) {
                            self.animates[1].toggle()
                        }
                    }
                Circle().foregroundColor(Color.white).scaleEffect(animates[2]  ? 0.3 : 1).opacity(animates[2]  ? 0.3 : 1 ).animation(Animation.easeInOut(duration: 0.36).repeatForever(autoreverses: true))
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.36) {
                            self.animates[2].toggle()
                        }
                    }
            }
            HStack(spacing: 2) {
                Circle().foregroundColor(Color.white).scaleEffect(animates[3]  ? 0.3 : 1).opacity(animates[3]  ? 0.3 : 1 ).animation(Animation.easeInOut(duration: 0.36).repeatForever(autoreverses: true))
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.18) {
                            self.animates[3].toggle()
                        }
                    }
                Circle().foregroundColor(Color.white).scaleEffect(animates[4]  ? 0.3 : 1).opacity(animates[4]  ? 0.3 : 1 ).animation(Animation.easeInOut(duration: 0.36).repeatForever(autoreverses: true))
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.18 + 0.18) {
                            self.animates[4].toggle()
                        }
                    }
                Circle().foregroundColor(Color.white).scaleEffect(animates[5]  ? 0.3 : 1).opacity(animates[5]  ? 0.3 : 1 ).animation(Animation.easeInOut(duration: 0.36).repeatForever(autoreverses: true))
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.19 + 0.36) {
                            self.animates[5].toggle()
                        }
                    }
            }
            HStack(spacing: 2) {
                Circle().foregroundColor(Color.white).scaleEffect(animates[6]  ? 0.3 : 1).opacity(animates[6]  ? 0.3 : 1 ).animation(Animation.easeInOut(duration: 0.36).repeatForever(autoreverses: true))
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.18 * 3) {
                            self.animates[6].toggle()
                        }
                    }
                Circle().foregroundColor(Color.white).scaleEffect(animates[7]  ? 0.3 : 1).opacity(animates[7]  ? 0.3 : 1 ).animation(Animation.easeInOut(duration: 0.36).repeatForever(autoreverses: true))
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.18 * 4) {
                            self.animates[7].toggle()
                        }
                    }
                Circle().foregroundColor(Color.white).scaleEffect(animates[8]  ? 0.3 : 1).opacity(animates[8]  ? 0.3 : 1 ).animation(Animation.easeInOut(duration: 0.36).repeatForever(autoreverses: true))
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.18 * 5) {
                            self.animates[8].toggle()
                        }
                    }
            }
        }
    }
}

struct BallGridPulse_Previews: PreviewProvider {
    static var previews: some View {
        BallGridPulse().background(Color.red)
    }
}
