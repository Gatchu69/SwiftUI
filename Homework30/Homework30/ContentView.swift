//
//  ContentView.swift
//  Homework30
//
//  Created by Nodiko Gachava on 27.05.24.
//

import SwiftUI

struct ContentView: View {
    
    @State var homeIcon = Image(systemName: "house")
    @State  var popularCategory: Bool = true
    @State var list = ["Apple", "Pear", "Banana", "Xinkali", "Shaurwma", "Chaqafuli "]
    @State var cartList = []
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            Text("Products")
                .font(.largeTitle)
                .bold()
                .padding(.top)
            
            ScrollView(.horizontal) {
                HStack {
                    Button {
                        print(2)
                    }label: {
                        Text("Popular")
                            .font(.title)
                            .padding()
                            .foregroundStyle(.black)
                    }
                    
                    Button {
                        print("1")
                    } label: {
                        Text("Snacks")
                            .font(.title)
                            .padding()
                            .foregroundStyle(.black)
                    }
                    Button {
                        print(2)
                    }label: {
                        Text("Drinks")
                            .font(.title)
                            .padding()
                            .foregroundStyle(.black)
                    }
                    
                    Button {
                        print(3)
                    }label: {
                        Text("Grocery")
                            .font(.title)
                            .padding()
                            .foregroundStyle(.black)
                    }
                }
                .padding(.top, 0.5)
            }
            ScrollView(.vertical){
                LazyVGrid(columns: columns) {
                    ForEach(list.indices, id: \.self) { index in
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 100, height: 150)
                                .foregroundStyle(.white)
                                .shadow(radius: 10)
                                .padding()
                            
                            Text(list[index])
                                .font(.caption)
                                .bold()
                                .padding(.top, -50)
                                .padding(.leading, -40)
                            
                            Rectangle()
                                .frame(width: 100, height: 1)
                                .padding(.top, 90)
                            HStack {
                                Button {
                                    print("123")
                                    cartList.append(list[index])
                                    print(list[index])
                                } label: {
                                    Image(systemName: "plus")
                                        .resizable()
                                        .frame(width: 20, height: 20)
                                }
                                
                                .padding()
                                
                                Button {
                                    cartList.remove(at: index)
                                } label: {
                                    Image(systemName: "minus")
                                        .resizable()
                                        .frame(width: 20, height: 3)
                                }
                                .padding()
                            }
                            .padding(.top, 120)
                        }
                    }
                }
                .padding()
                
            }
            Spacer()
            
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .frame(width: 220, height: 70, alignment: .center)
                    .foregroundStyle(.white)
                    .shadow(color: .black, radius: 5)
                
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundStyle(.white)
                    .shadow(radius: 15)
                    .padding(.leading, 190)
                    .padding(.top, -45)
                
                Text("\(cartList.count)")
                    .bold()
                    .padding(.leading, 190)
                    .padding(.top, -40)
                
                HStack {
                    Button {
                        print("Home Page")
                        
                    } label: {
                        homeIcon
                            .resizable()
                            .foregroundStyle(.black)
                            .frame(width: 35, height: 35, alignment: .leading)
                    }
                    .padding()
                    
                    Button {
                        print("Pressed person")
                    } label: {
                        Image(systemName: "person")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 35, height: 35, alignment: .center)
                    }
                    .padding()
                    
                    Button {
                        print("Pressed Category")
                    } label: {
                        Image(systemName: "cart")
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 35, height: 35, alignment: .center)
                    }
                    .padding([.leading, .trailing])
                }
            }
        }
    }
}
        
        
    

#Preview {
    ContentView()
}
