//
//  ToyChatApp.swift
//  ToyChat
//
//  Created by Martin.Q on 2022/10/09.
//

import SwiftUI
import Firebase

@main
struct ToyChatApp: App {
	init() {
		FirebaseApp.configure()
	}
	
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
