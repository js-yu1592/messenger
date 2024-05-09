//
//  LMessengerApp.swift
//  LMessenger
//
//  Created by 유준상 on 4/23/24.
//

import SwiftUI

@main
// main 어노테이션은 앱을 실행할때 main 함수를 실행하도록 함. main 함수의 기본 구현 제공
struct LMessengerApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var container: DIContainer = .init(services: Services())
    
    var body: some Scene {
        WindowGroup {
            AthenticatedView(authViewModel: .init(container: container))
                .environmentObject(container)
        }
    }
}
