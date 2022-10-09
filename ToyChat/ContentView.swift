//
//  ContentView.swift
//  ToyChat
//
//  Created by Martin.Q on 2022/10/09.
//

import SwiftUI

struct ContentView: View {
	@StateObject var messagesManager = MessagesManager()
	
    var body: some View {
		VStack {
			VStack {
				TitleRow()
				
				ScrollView {
					ForEach(messagesManager.messages, id: \.id) { message in
						MessageBubble(message: message)
					}
				}
					.padding(.top, 10)
					.background(.white)
					.cornerRadius(30, corners: [.topLeft, .topRight])
			}
			.background(Color("Yellow"))
			
			MessageField()
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
