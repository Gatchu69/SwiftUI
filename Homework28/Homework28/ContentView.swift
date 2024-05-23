//
//  ContentView.swift
//  Homework28
//
//  Created by Nodiko Gachava on 22.05.24.
//

import SwiftUI

struct ContentView: View {
    @State var titleFirst = "We love property wrappers and closures"
    
    var body: some View {
        Text("SwiftUI")
            .font(.largeTitle)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        
        HStack(alignment: .center, spacing: nil, content: {
            ZStack {
                Text(titleFirst)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 165, height: 232, alignment: .topLeading)
                    .background(Color.yellow)
                    .cornerRadius(18)
                
                
                
                Button(action: {
                    self.titleFirst = "We don't love property wrappers and closures :( "
                }, label: {
                    Image(systemName: "mic.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .frame(width: 32, height: 32, alignment: .center)
                })
                
            }
            ZStack {
                VStack(content: {
                    Text("Chat")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 165, height: 110, alignment: .leading)
                        .background(Color.orange)
                        .cornerRadius(18)
                    
                    Text("Hot News")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 165, height: 110, alignment: .leading)
                        .background(Color.purple)
                        .cornerRadius(18)
                })
        }
    })
        Spacer()
        
    }
}

#Preview {
    ContentView()
}
