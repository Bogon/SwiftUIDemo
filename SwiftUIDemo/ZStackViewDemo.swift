//
//  ZStackViewDemo.swift
//  SwiftUIDemo
//
//  Created by 繁华奢品 on 2024/4/26.
//

import SwiftUI

struct ZStackViewDemo: View {
    
    
    
    var body: some View {
        Text("文本展示")
        ZStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .offset(x: 20,y: 20)
                .font(.system(size: 13))
                .padding()
        }
    }
}

#Preview {
    ZStackViewDemo()
}
