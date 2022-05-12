//
//  LogicTrafficLightsView.swift
//  TrafficLights-SwiftUI
//
//  Created by Алексей Синяговский on 12.05.2022.
//

import SwiftUI

enum PresentColor {
    case red
    case yellow
    case green
}

struct LogicTrafficLightsView: View {
    
    @State private var presentColor = PresentColor.red
    @State private var textButton = "START"
    
    @State private var red = 0.3
    @State private var yellow = 0.3
    @State private var green = 0.3
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    var body: some View {
        VStack{
            SignalTrafficLightsView(red: red, yellow: yellow, green: green)
            Spacer()
            Button(action: { setColor() }) {
                Text(textButton)
                    .padding(.leading, 50)
                    .padding(.trailing, 50)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                    .frame(width: 200)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .font(.title)
                    .overlay(RoundedRectangle(cornerRadius: 15)
                        .stroke(.white, lineWidth: 4))
                    
            }
        }
    }
    
    private func setColor() {
        switch presentColor {
            
        case .red:
            textButton = "NEXT"
            green = lightIsOff
            red = lightIsOn
            presentColor = .yellow
        case .yellow:
            red = lightIsOff
            yellow = lightIsOn
            presentColor = .green
        case .green:
            yellow = lightIsOff
            green = lightIsOn
            presentColor = .red
        }
    }
}

struct LogicTrafficLightsView_Previews: PreviewProvider {
    static var previews: some View {
        LogicTrafficLightsView()
    }
}
