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
    var gradient : Gradient
    
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
                    AngularGradient( gradient: gradient,
                                     center: .center) ,
                    
                    style: StrokeStyle(lineWidth: lineWidht, lineCap: .round, lineJoin: .round)) // Uçları yuvarlatma
                .foregroundColor(foregroundColor)
                .rotationEffect(Angle(degrees: 270)) // Yukarıdan başlama efekti
                .animation(.easeInOut(duration: 2.0), value: percentege) // Animasyon ekliyoruz
        }
    }
}

/* struct Circular: View {
    
    let lineWidht : CGFloat
    let backgroundColor : Color
    let foregroundColor : Color
    let percentege : Double
    
    var body: some View {
        GeometryReader {geometry in
            
            ZStack {
                
                CircularShape()
                    .stroke(style: StrokeStyle(lineWidth: lineWidht))
                    .fill(backgroundColor)
                
                CircularShape(percent: percentege)
                    .stroke(style: StrokeStyle(lineWidth: lineWidht))
                    .fill(foregroundColor)
            } 
            .animation(.smooth(duration: 1.5), value: percentege)
            .padding(lineWidht / 1.5)
        }
     
            
    }
}

#Preview {
    Circular(lineWidht: 10, backgroundColor: .purple, foregroundColor: .pink, percentege: 50)
}
*/
