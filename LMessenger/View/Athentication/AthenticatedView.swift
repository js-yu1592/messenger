//
//  AthenticatedView.swift
//  LMessenger
//
//  Created by 유준상 on 4/23/24.
//

import SwiftUI

struct AthenticatedView: View {
    @StateObject var authViewModel: AuthenticatedViewModel
    
    var body: some View {
        VStack {
            switch authViewModel.authenticationState {
            case .unauthenticated:
                LoginIntroView()
                    .environmentObject(authViewModel)
            case .authenticated:
                MainTabView()
            }
        }
        .onAppear {
            authViewModel.send(action: .checkAuthenticationState)
        }
    }
}

#Preview {
    AthenticatedView(authViewModel: .init(container: .init(services: StubService())))
}
