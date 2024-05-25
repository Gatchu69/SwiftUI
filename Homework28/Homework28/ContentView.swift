//
//  ContentView.swift
//  Homework28
//
//  Created by Nodiko Gachava on 22.05.24.
//

import SwiftUI

struct ContentView: View {
    @State var titleFirst: String = "We love property wrappers and closures"
    @State var titleSecond: String = "Chat"
    @State var backgroundColor: Color = .orange
    
    var body: some View {
        Text("SwiftUI")
            .font(.largeTitle)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        
        HStack(alignment: .center, spacing: nil, content: {
            ZStack {
                RoundedRectangle(cornerRadius: 18)
                    .frame(width: 165, height: 232, alignment: .leading)
                    .foregroundColor(Color("yellowBack", bundle: nil))
                
                Image("Guitar")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(18)
                    .frame(width: 82, height: 182)
                    .padding(.leading, 80)
                    .padding(.top, 50)
                
                Text(titleFirst)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .cornerRadius(18)
                    .frame(width: 165, alignment: .leading)
                
                Button(action: {
                    self.titleFirst = "We don't love property wrappers and closures :( "
                }, label: {
                    Image(systemName: "mic.circle.fill")
                        .renderingMode(.template)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                })
                .frame(width: 32, height: 32)
                .padding(.bottom, 150.0)
                .padding(.leading, -70)
                
                
                
            }
            VStack(content: {
                ZStack {
                    RoundedRectangle(cornerRadius: 18)
                        .frame(width: 165, height: 110)
                        .foregroundColor(.orange)
                        .cornerRadius(18)
                    
                    Text(titleSecond)
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 165, alignment: .leading)
                        .padding()
                        
                    
                    Button {
                        self.titleSecond = "Blue"
                        self.backgroundColor = .green
                    } label: {
                        Image(systemName: "ellipsis.message")
                            .foregroundColor(.white)
                            .frame(width: 50, height: 50)
                    }
                    .padding(.bottom, 70 )
                    .padding(.leading, -80)
                    
                }
                
                ZStack {
                    Text("Hot News")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 165, height: 110, alignment: .leading)
                        .background(Color.purple)
                        .cornerRadius(18)
                    
                    Image(systemName: "person.circle")
                        .foregroundColor(.white)
                        .frame(width: 32, height: 32)
        

                }
            })
    })
        Spacer()
        
    }
}

#Preview {
    ContentView()
}
