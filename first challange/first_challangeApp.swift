//
//  first_challangeApp.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 24/10/22.
//

import SwiftUI

@main
struct first_challangeApp: App {
    @StateObject var manager = TransactionManager()

    var body: some Scene {
        WindowGroup {
            TabbarView()
                .environmentObject(manager)
                .preferredColorScheme(.light)
        }
    }
}
