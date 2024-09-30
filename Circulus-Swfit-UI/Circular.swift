//
//  Circular.swift
//  Circulus-Swfit-UI
//
//  Created by Sabri Çetin on 29.09.2024.
//
import SwiftUI

struct Circular: View {
    var lineWidht: CGFloat
    var backgroundColor: Color
    var foregroundColor: Color
    var percentege: Double
    var gradientColors : [Color]
    
    var body: some View {
        ZStack {
            // Arka plan çemberi
            Circle()
                .stroke(lineWidth: lineWidht)
                .foregroundColor(backgroundColor)
            
            // Dolan çember
            Circle()
                .trim(from: 0.0, to: percentege / 100)
                .stroke(
                    
                AngularGradient(gradient: Gradient(colors: gradientColors), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/ ),
                    
                    style: StrokeStyle(lineWidth: lineWidht, lineCap: .round, lineJoin: .round)) // Uçları yuvarlatma
                .foregroundColor(foregroundColor)
                .rotationEffect(Angle(degrees: 270)) // Yukarıdan başlama efekti
                .animation(.easeInOut(duration: 2.0), value: percentege) // Animasyon ekliyoruz
        }
    }
}
