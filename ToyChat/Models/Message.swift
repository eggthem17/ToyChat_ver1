//
//  Message.swift
//  ToyChat
//
//  Created by Martin.Q on 2022/10/09.
//

import Foundation

struct Message: Identifiable, Codable {
	var id: String
	var text: String
	var received: Bool
	var timestamp: Date
}
