//
//  Segmented.swift
//  FinalCut
//
//  Created by zhangyu528 on 2020/9/14.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct Segmented: View {
    
    @State var isSelected: Bool = true
    @State var title: String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Text(title).foregroundColor(Color("233_白練")).padding()
            if isSelected {
                Color("233_白練").frame(height: 2).padding(.horizontal)
            }
        }.onTapGesture {
            if !self.isSelected {
                self.isSelected = true
            }
        }.fixedSize(horizontal: true, vertical: true)
    }
}

struct Segmented_Previews: PreviewProvider {
    static var previews: some View {
        Segmented(title: "剪辑草稿").background(Color("249_ro_吕")).previewLayout(PreviewLayout.sizeThatFits)
    }
}
