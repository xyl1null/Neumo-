//
//  ContentView.swift
//  Shared
//
//  Created by Shane Leigh on 09/07/2020.
//

import Combine
import SwiftUI


let screenRect = UIScreen.main.bounds
let screenWidth = screenRect.size.width
let screenHeight = screenRect.size.height

extension Shape {
    
}
enum symbols {
//    case one, two,
}

struct ContentView: View {
    
    private var avgWidth = (screenWidth - 50) / 4
//    private var avgHeight = (screenHeight) / 4
    let const: CGFloat = 3
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Spacer()
                
                HStack {
                    Spacer()
                    Text("0")
                        .font(.system(size: 88))
                        .foregroundColor(.white)
                        .padding()
                }
                
                VStack {
                    
                    HStack {
                        Button("AC", action: {})
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.lightGray))
                            )
                            
                        Button("±", action: {})
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.lightGray))
                            )
                            
                        
                        Button("%", action: {})
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.lightGray))
                            )
                        
                        Button("÷", action: {})
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color.orange)
                            )
                    }.padding(.all, const)
                    
                    HStack {
                        
                        Button("7", action: {})
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                            
                        Button("8", action: {})
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                            
                        
                        Button("9", action: {})
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                        
                        
                        Button("×", action: {})
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color.orange)
                            )
                    }
                    .padding(.all, const)

                    
                    HStack {
                        Button("4", action: {})
                            
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
//                            .contentShape(Circle().size(CGSize(width: avgWidth, height: avgWidth)))
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                            
                        Button("5", action: {})
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                            
                        
                        Button("6", action: {})
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                        
                        
                        Button("-", action: {})
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color.orange)
                            )
                    }.padding(.all, const)

                    
                    HStack {
                        Button("1", action: {})
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                            
                        Button("2", action: {})
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                            
                        
                        Button("3", action: {})
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                            
                        
                        
                        Button("﹢", action: {})
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color.orange)
                            )
                            
                    }.padding(.all, const)
                    
                    HStack {
                        Button("0", action: {})
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth * 2, height: avgWidth)
                            .background(
                                Capsule()
                                    .fill(Color(.darkGray))
                            )
                            
                        
                        Button("·", action: {})
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                            
                        
                        Button("=", action: {})
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color.orange)
                            )
                        
                    }
                    .padding(.all, const)

                }
            }
        }
    }
    
    func digit() {
        
    }
    func cal() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
