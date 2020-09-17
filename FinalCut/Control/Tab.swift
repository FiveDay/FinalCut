//
//  Tab.swift
//  FinalCut
//
//  Created by zhangyu528 on 2020/9/11.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct Tab: View {
    init() {
      UITabBar.appearance().barTintColor = UIColor(named: "250_sumi_墨")
    }
    var body: some View {

        TabView {
            CutView()
                .tabItem {
                    Image(systemName: "scissors")
                    Text("剪辑")
                }
            Text("SwiftUI Setting")
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("我的")
                }
        }.accentColor(Color("185_masuhana_舛花"))
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab()
    }
}
