//
//  ContentView.swift
//  TrafficLights-SwiftUI
//
//  Created by Алексей Синяговский on 12.05.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            BackgroundView()
            LogicTrafficLightsView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
