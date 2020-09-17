//
//  WorkList.swift
//  FinalCut
//
//  Created by zhangyu528 on 2020/9/16.
//  Copyright © 2020 zhangyu528. All rights reserved.
//

import SwiftUI

struct WorkList: View {
    var body: some View {
        List {
            Group {
                WorkCell()
                WorkCell()
                WorkCell()
                WorkCell()
                WorkCell()
            }.listRowBackground(Color("249_ro_吕"))
        }
    }
}

struct WorkList_Previews: PreviewProvider {
    static var previews: some View {
        WorkList().previewLayout(.sizeThatFits)
    }
}
