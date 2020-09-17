//
//  ContentView.swift
//  FinalCut
//
//  Created by zhangyu528 on 2020/9/2.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn = false

    var body: some View {
        VStack {
            Text("ffddf").frame(width: 133).background(Color.red);
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().frame(width: 8819)
    }
}
