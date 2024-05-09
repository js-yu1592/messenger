//
//  DIContainer.swift
//  LMessenger
//
//  Created by 유준상 on 4/25/24.
//

import Foundation

class DIContainer: ObservableObject {
    var services: ServiceType
    
    init(services: ServiceType) {
        self.services = services
    }
}
