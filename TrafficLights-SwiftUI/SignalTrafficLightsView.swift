//
//  SignalTrafficLightsView.swift
//  TrafficLights-SwiftUI
//
//  Created by Алексей Синяговский on 12.05.2022.
//

import SwiftUI

struct SignalTrafficLightsView: View {
    
    let red: Double
    let yellow: Double
    let green: Double
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(.red)
                .opacity(red)
                .overlay(Circle().stroke(.white, lineWidth: 5))
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(.yellow)
                .opacity(yellow)
                .overlay(Circle().stroke(.white, lineWidth: 5))
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(.green)
                .opacity(green)
                .overlay(Circle().stroke(.white, lineWidth: 5))
        }
    }
}

struct SignalTrafficLightsView_Previews: PreviewProvider {
    static var previews: some View {
        SignalTrafficLightsView(red: 1.0, yellow: 1.0, green: 1.0)
    }
}
