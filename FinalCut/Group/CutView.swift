//
//  CutView.swift
//  FinalCut
//
//  Created by zhangyu528 on 2020/9/11.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct CutView: View {
    var body: some View {
        ZStack {
            Color("249_ro_吕").edgesIgnoringSafeArea(.top)
            VStack {
                Spacer()
                StartWorkBtn()
                WorkListSpace()
            }
        }
    }
}

struct CutView_Previews: PreviewProvider {
    static var previews: some View {
        CutView()
    }
}

struct StartWorkBtn: View {
    var body: some View {
        Button(action: {
            
        }) {
            VStack {
                Image(systemName: "plus.rectangle.fill").font(.system(size: 48))
                Text("开始创作")
            }.foregroundColor(Color("185_masuhana_舛花"))
        }
    }
}

struct WorkListSpace: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Segmented(title: "剪辑草稿")
            }
            WorkList()
        }
    }
}
