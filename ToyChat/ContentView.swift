//
//  ContentView.swift
//  ToyChat
//
//  Created by Martin.Q on 2022/10/09.
//

import SwiftUI

struct ContentView: View {
	var sampleMessage = ["Hi there", "Hi, what's wrong with you", "????", "I said what's wrong with you"]
	
    var body: some View {
		VStack {
			VStack {
				TitleRow()
				
				ScrollView {
					ForEach(sampleMessage, id: \.self) { text in
						MessageBubble(message: Message(id: "3333", text: text, received: true, timestamp: Date()))
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
