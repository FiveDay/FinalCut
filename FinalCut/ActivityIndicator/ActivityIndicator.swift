//
//  SpinnerActivityIndicator.swift
//  FinalCut
//
//  Created by zhangyu528 on 2020/9/2.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

enum ActivityIndicatorType {
    case BallPulse
    case BallGridPulse
    case BallClipRotate
    case BallClipRotatePulse
    case Spinner
}

struct ActivityIndicator: View {
    
    @Binding public var isShow: Bool
    
    var type: ActivityIndicatorType = .BallPulse
    
    var body: some View {
        ZStack {
            if self.isShow {
                Group {
                    if type == .BallPulse {//switch in SwiftUI view builders blocks will be supported in Xcode 12
                        BallPulse().frame(width: 70, height: 20)
                    } else if type == .BallGridPulse {
                        BallGridPulse().frame(width: 70, height: 70)
                    } else if type == .Spinner {
                        Spinner().frame(width:  40, height: 40)
                    }
                }
            }
        }
    }
}

struct ActivityIndicator_Previews: PreviewProvider {
    static var previews: some View {
        ActivityIndicator(isShow: .constant(true))
    }
}
