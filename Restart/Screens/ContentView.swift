//
//  ContentView.swift
//  Restart
//
//  Created by Jared on 2023-04-12.
//

import SwiftUI

struct ContentView: View {
    // @AppStorage is a property wrapper - purpose is store the value using {get set}
    // "onboarding" is the User Defaults Key
    // "isOnboardingViewActive" is the actual proptery name
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
