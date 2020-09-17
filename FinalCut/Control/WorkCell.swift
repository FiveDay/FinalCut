//
//  WorkCell.swift
//  FinalCut
//
//  Created by zhangyu528 on 2020/9/16.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct WorkCell: View {
    var body: some View {
        HStack( spacing: 0) {
            Image("image01").padding()
            VStack(alignment: .leading) {
                Text("20200919").foregroundColor(Color("233_白練"))
                Spacer()
                Group {
                    Text("更新于2020.09.18")
                    Text("16M")
                }.foregroundColor(Color("235_白鼠")).font(.system(size: 13))
                Spacer()
                Text("00:16").foregroundColor(Color("234_胡粉")).font(.system(size: 13))
            }.padding(.vertical)
            Spacer()
            Button(action: {
                
            }) {
                Text("...").foregroundColor(Color("235_白鼠")).font(.system(size: 24))
            }.padding()
        }.background(Color("249_ro_吕")).frame(height: 130)
    }
}

struct WorkCell_Previews: PreviewProvider {
    static var previews: some View {
        WorkCell().previewLayout(.sizeThatFits)
    }
}
