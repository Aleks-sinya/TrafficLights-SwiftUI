//
//  SignalTrafficLightsView.swift
//  TrafficLights-SwiftUI
//
//  Created by Алексей Синяговский on 12.05.2022.
//

import SwiftUI

struct ColorCircleView: View {
    
    let color: Color
    let diametr = UIScreen.main.bounds.maxX / 3
    let opacity: Double
    
    var body: some View {
        Circle()
            .padding(-4)
            .frame(width: diametr, height: diametr)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle()
                .trim(from: 0.53, to: 0.97)
                .stroke(.brown, lineWidth: 8))
            .animation(.easeIn(duration: 0.2), value: opacity)
        
    }
}

struct SignalTrafficLightsView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .blue, opacity: 0.1)
    }
}
