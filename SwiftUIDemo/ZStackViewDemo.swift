//
//  ZStackViewDemo.swift
//  SwiftUIDemo
//
//  Created by 繁华奢品 on 2024/4/26.
//

import SwiftUI

struct ZStackViewDemo: View {
    
    @State var count = 0;
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Text("Detail View 1")) {
                    HStack(alignment: .center, content: {
                        Button(action: {
                            count += 1
                        }, label: {
                            Text("点我 + 1")
                                .padding()
                                .background(Color(.tertiarySystemFill))
                                .cornerRadius(5)
                        })
                        
                        Button(action: {
                            count -= 1
                        }, label: {
                            Text("点我 - 1")
                                .padding()
                                .background(Color(.tertiarySystemFill))
                                .cornerRadius(5)
                        })
                    })
                    .background(Color(.orange.withAlphaComponent(0.2)))
                    .cornerRadius(8.0)
                }
                NavigationLink(destination: Text("Detail View 2")) {
                    HStack(alignment: .top, content: {
                        Image("empty")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                        
                        Text("当前值：\(count)")
                            .font(.system(size: 18, weight: .bold))
                    })
                    .padding(EdgeInsets(top: 15, leading: 0, bottom: 20, trailing: 0))
                }
            }
            .navigationTitle("Navigation Example")
        }
        
    }
}

#Preview {
    ZStackViewDemo()
}
