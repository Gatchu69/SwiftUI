//
//  ContentView.swift
//  Homework29
//
//  Created by Nodiko Gachava on 25.05.24.
//

import SwiftUI
struct ContentView: View {
    let todoArray: [String] = ["State Object", "State Property", "Binding Property", "Observable Object", "Observed Protocol "]
    
    @State var buttonImage = Image(systemName: "circle")
    @State var todo = 5
    
    
    var body: some View {
        HStack {
            Text("You Have \(todoArray.count) tasks to Complete")
                .font(.headline)
                .frame(width: 188, height: 50, alignment: .leading)
                .bold()
            Spacer()
            
            ZStack{
                Image("gialo")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                    .shadow(color: .black, radius: 10, x: 5, y: 5)
                Circle()
                    .frame(width: 20, height: 20)
                    .padding(.top, 70)
                    .padding(.leading, 40)
                    .foregroundColor(.orange)
                
                Text("\(todoArray.count)")
                    .padding(.top, 70)
                    .padding(.leading, 40)
            }
        }
        .padding()
        
        VStack {
            Button {
                buttonImage = Image(systemName: "checkmark.seal.fill")
                todo = todoArray.count
            } label: {
                Text("Complete All")
                    .foregroundColor(.white)
            }
            .frame(width: 300, height: 50)
            .background(AngularGradient(colors: [.pink, .purple], center: .topLeading,  angle: .degrees(180) ))
            .cornerRadius(8)
            
        }
        
        VStack (alignment: .leading) {
            Text("Progress")
                .font(.body)
                .bold()
                .frame(width: 85, height: 20, alignment: .leading)
                .padding()
        
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 370, height: 139, alignment: .center)
                    .foregroundColor(Color.orange)
                    .padding(.top, 5)
                
                Text("Daily Task")
                    .font(.body)
                    .frame(width: 85, height: 20)
                    .padding(.top, -50)
                
                Text("\(todo) / \(todoArray.count) Tasks Completed")
                    .font(.caption2)
                    .frame(width: 155, height: 19, alignment: .leading)
                    .padding()
                    .padding(.top, -30)
               
                HStack {
                    Text("Keep Working")
                        .font(.footnote)
                        .frame(width: 92, height: 17, alignment: .leading)
                        .padding()
                        .padding(.top, 40)
                    
                    Text("50%")
                        .frame(width: 37, height: 22, alignment: .trailing)
                        .padding(.top, 40)
                        .padding(.leading, 190)
                }
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 350 ,height: 18, alignment: .center)
                        .foregroundColor(.gray)
                        .padding(.top, 90)
                        .padding(.leading, 10)
                    
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 175 ,height: 18, alignment: .leading)
                        .foregroundColor(.pink)
                        .padding(.top, 90)
                        .padding(.leading, -175)
                }
            }
        }
        ScrollView {
            ForEach(0..<todoArray.count) { index in
                ZStack {
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 376, height: 80)
                        .foregroundColor(.orange)
                    
                    
                    RoundedRectangle(cornerRadius: 5)
                        .frame(width: 15, height: 80, alignment: .trailing)
                        .padding(.leading, -188)
                        .foregroundColor(randomColor())
                    
                    Text(todoArray[index])
                        .frame(width: 161, height: 19, alignment: .leading)
                        .padding(.top, -25)
                        .padding(.leading, -160)
                    
                    Image("calendarr")
                        .resizable()
                        .frame(width: 20, height: 20, alignment: .trailing)
                        .padding(.top, 20)
                        .padding(.leading, -160)
                    
                    Text("25.06")
                        .frame(width: 45, height: 17, alignment: .leading)
                        .padding(.top, 20)
                        .padding(.leading, -130)
                    
                    Button {
                        
                    } label: {
                        buttonImage
                            .resizable()
                            .foregroundColor(.black)
                            .frame(width: 26, height: 26, alignment: .trailing)
                            .padding(.leading, 300)
                    }
            }
            }
        }
        Spacer()
    }
}

#Preview {
    ContentView()
}
