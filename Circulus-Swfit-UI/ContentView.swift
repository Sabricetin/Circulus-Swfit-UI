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
            
            Circular(lineWidht: 40, backgroundColor: .pink.opacity(0.2), foregroundColor: .pink,
                percentege: firstCirclePErecentage,
                     gradient: Gradient(colors: [Color.pink , Color.red]))
                .frame(width: 350 , height: 350)
                .onTapGesture {
                    if self.firstCirclePErecentage == 0 {
                        self.firstCirclePErecentage = 100
                    } else {
                        self.firstCirclePErecentage = 0
                    }
                }
            
            Circular(lineWidht: 40, backgroundColor: .purple.opacity(0.2), foregroundColor: .purple,
                     
                      percentege: secondtCirclePErecentage, gradient: Gradient(colors: [Color.yellow , Color.green]))
                .frame(width: 250  , height: 250)
                .onTapGesture {
                    if self.secondtCirclePErecentage == 0 {
                        self.secondtCirclePErecentage = 75
                    } else {
                        self.secondtCirclePErecentage = 0
                    }
                }
            
            Circular(lineWidht: 40, backgroundColor: .blue.opacity(0.2), foregroundColor: .blue,
                     percentege: thirdCirclePErecentage, gradient: Gradient(colors: [Color.purple , Color.blue]))
                .frame(width: 150 , height: 150)
                .onTapGesture {
                    if self.thirdCirclePErecentage == 0 {
                        self.thirdCirclePErecentage = 50
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



/*
struct ContentView: View {
    
    @State var firstCirclePErecentage : Double = 0
    @State var secondtCirclePErecentage : Double = 0
    @State var thirdCirclePErecentage : Double = 0

    var body: some View {
        
        ZStack {
            
            Circular(lineWidht: 40, backgroundColor: Color.purple.opacity(0.2), foregroundColor: Color.purple, percentege: firstCirclePErecentage)
                .frame(width: 350 , height: 350)
                .onTapGesture {
                    if self.firstCirclePErecentage == 0 {
                        self.firstCirclePErecentage = 100
                    } else {
                        self.firstCirclePErecentage = 0
                    }
                }
            Circular(lineWidht: 40, backgroundColor: Color.purple.opacity(0.2), foregroundColor: Color.purple, percentege: secondtCirclePErecentage)
                .frame(width: 250  , height: 250)
                .onTapGesture {
                    if self.secondtCirclePErecentage == 0 {
                        self.secondtCirclePErecentage = 75
                    } else {
                        self.secondtCirclePErecentage = 0
                    }
                }
            Circular(lineWidht: 40, backgroundColor: Color.purple.opacity(0.2), foregroundColor: Color.purple, percentege: thirdCirclePErecentage)
                .frame(width: 150 , height: 150)
                .onTapGesture {
                    if self.thirdCirclePErecentage == 0 {
                        self.thirdCirclePErecentage = 50
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
*/
