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
				
				ScrollViewReader { proxy in
					ScrollView {
						ForEach(messagesManager.messages, id: \.id) { message in
							MessageBubble(message: message)
						}
					}
					.padding(.top, 10)
					.background(.white)
					.cornerRadius(30, corners: [.topLeft, .topRight])
					.onChange(of: messagesManager.lastMessageId) { id in
						withAnimation {
							proxy.scrollTo(id, anchor: .bottom)
						}
					}
				}
			}
			.background(Color("Yellow"))
			
			MessageField()
				.environmentObject(MessagesManager())
		}
		.onTapGesture {
			hideKeyboard()
		}
    }
}

#if canImport(UIKit)
extension View {
	func hideKeyboard() {
		UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
	}
}
#endif

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
