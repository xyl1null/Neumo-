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

extension Float {
    var clean: String {
       return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}

struct ContentView: View {
    
    private var avgWidth = (screenWidth - 50) / 4
//    private var avgHeight = (screenHeight) / 4
    let const: CGFloat = 3
    @State private var result = "0"
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Spacer()
                
                HStack {
                    Spacer()
                    Text("\(result)")
                        .font(.system(size: 88))
                        .foregroundColor(.white)
                        .padding()
                }
                
                VStack {
                    
                    HStack {
                        Button("AC", action: ac)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.lightGray))
                            )
                            
                        Button("±", action: inverse)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.lightGray))
                            )
                            
                        
                        Button("%", action: percent)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.lightGray))
                            )
                        
                        Button("÷", action: divide)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color.orange)
                            )
                    }.padding(.all, const)
                    
                    HStack {
                        
                        Button("7", action: seven)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                            
                        Button("8", action: eight)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                            
                        
                        Button("9", action: nine)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                        
                        
                        Button("×", action: multiply)
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
                        Button("4", action: four)
                            
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
//                            .contentShape(Circle().size(CGSize(width: avgWidth, height: avgWidth)))
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                            
                        Button("5", action: five)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                            
                        
                        Button("6", action: six)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                        
                        
                        Button("-", action: minus)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color.orange)
                            )
                    }.padding(.all, const)

                    
                    HStack {
                        Button("1", action: one)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                            
                        Button("2", action: two)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                            
                        
                        Button("3", action: three)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                            
                        
                        
                        Button("﹢", action: plus)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color.orange)
                            )
                            
                    }.padding(.all, const)
                    
                    HStack {
                        Button("0", action: zero)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth * 2, height: avgWidth)
                            .background(
                                Capsule()
                                    .fill(Color(.darkGray))
                            )
                            
                        
                        Button("·", action: dot)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: avgWidth, height: avgWidth)
                            .background(
                                Circle()
                                    .fill(Color(.darkGray))
                            )
                            
                        
                        Button("=", action: equals)
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
    
    func one() {
        if result != "0" {
            result.append("1")
        } else {
            result = "1"
        }
            
    }
    
    func two() {
        if result != "0" {
            result.append("2")
        } else {
            result = "2"
        }
    }

    func three() {
        if result != "0" {
            result.append("3")
        } else {
            result = "3"
        }
    }

    func four() {
        if result != "0" {
            result.append("4")
        } else {
            result = "4"
        }
    }

    func five() {
        if result != "0" {
            result.append("5")
        } else {
            result = "5"
        }
    }

    func six() {
        if result != "0" {
            result.append("6")
        } else {
            result = "6"
        }
    }

    func seven() {
        if result != "0" {
            result.append("7")
        } else {
            result = "7"
        }
    }

    func eight() {
        if result != "0" {
            result.append("8")
        } else {
            result = "8"
        }
    }

    func nine() {
        if result != "0" {
            result.append("9")
        } else {
            result = "9"
        }
    }

    func zero() {
        if result != "0" {
            result.append("0")
        } else {
            result = "0"
        }
    }
    
    func ac() {
        result = "0"
    }
    
    func dot() {
        if result.contains(".") {
            result = "0."
        } else {
            result.append(".")
        }
    }
    
    func plus() {
        if result.contains("+") || result.contains("-") || result.contains("×") || result.contains("÷") {
            equals()
            result.append("+")
        } else {
            result.append("+")
        }
        
    }
    
    func minus() {
        if result.contains("+") || result.contains("-") || result.contains("×") || result.contains("÷") {
            equals()
            result.append("-")
        } else {
            result.append("-")
        }
    }
    
    func multiply() {
        if result.contains("+") || result.contains("-") || result.contains("×") || result.contains("÷") {
            equals()
            result.append("×")
        } else {
            result.append("×")
        }
    }
    
    func divide() {
        if result.contains("+") || result.contains("-") || result.contains("×") || result.contains("÷") {
            equals()
            result.append("÷")
        } else {
            result.append("÷")
        }
    }
    
    func inverse() {
        if Float(result)! > 0 {
            result = "-" + result
        } else {
            result.removeFirst()
        }
    }
    
    func percent() {
        result = String(Float(result)! / 100)
    }
    
    func equals() {
        if result.contains("+") {
            let x = Float(result.split(separator: "+")[0])!
            let y = Float(result.split(separator: "+")[1])!
            let cleaned = (x + y).clean
            result = String(cleaned)
        } else if result.contains("-") {
            let x = Float(result.split(separator: "-")[0])!
            let y = Float(result.split(separator: "-")[1])!
            let cleaned = (x - y).clean
            result = String(cleaned)
        } else if result.contains("×") {
            let x = Float(result.split(separator: "×")[0])!
            let y = Float(result.split(separator: "×")[1])!
            let cleaned = (x * y).clean
            result = String(cleaned)
        } else if result.contains("÷") {
            let x = Float(result.split(separator: "÷")[0])!
            let y = Float(result.split(separator: "÷")[1])!
            if y == 0 {
                result = "0"
            } else {
                let cleaned = (x / y).clean
                result = String(cleaned)
            }
            
        }
        
    }
    
    func cal() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
