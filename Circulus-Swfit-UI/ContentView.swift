//
//  ContentView.swift
//  Circulus-Swfit-UI
//
//  Created by Sabri Çetin on 28.09.2024.
//
import SwiftUI
struct ContentView: View {
    
    @State var firstCirclePErecentage : Double = 0
    @State var secondtCirclePErecentage : Double = 0
    @State var thirdCirclePErecentage : Double = 0

    var body: some View {
        
        ZStack { 
            
            Color.black.edgesIgnoringSafeArea(.all)
            
            Circular(lineWidht: 40, backgroundColor: .pink.opacity(0.2), foregroundColor: .pink,
                percentege: firstCirclePErecentage,
                    gradientColors: [Color(hex: "#e32115") , Color(hex: "#f82a8f")])
                .frame(width: 350 , height: 350)
                .onTapGesture {
                    if self.firstCirclePErecentage == 0 {
                        self.firstCirclePErecentage = 100
                    } else {
                        self.firstCirclePErecentage = 0
                    }
                }
            
            Circular(lineWidht: 40, backgroundColor: .green.opacity(0.2), foregroundColor: .green,
                     
                      percentege: secondtCirclePErecentage, 
                     gradientColors: [Color(hex: "#70c102") , Color(hex: "#d8ff01")])
                .frame(width: 250  , height: 250)
                .onTapGesture {
                    if self.secondtCirclePErecentage == 0 {
                        self.secondtCirclePErecentage = 100
                    } else {
                        self.secondtCirclePErecentage = 0
                    }
                }
            
            Circular(lineWidht: 40, backgroundColor: .blue.opacity(0.2), foregroundColor: .blue,
                     percentege: thirdCirclePErecentage,
                     gradientColors: [Color(hex: "#34c0c7") , Color(hex: "#44ffaa")])                .frame(width: 150 , height: 150)
                .onTapGesture {
                    if self.thirdCirclePErecentage == 0 {
                        self.thirdCirclePErecentage = 100
                    } else {
                        self.thirdCirclePErecentage = 0
                    }
                } 
        }
    } 
}
#Preview {
    ContentView()
}
