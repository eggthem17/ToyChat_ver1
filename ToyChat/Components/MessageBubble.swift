//
//  MessageBubble.swift
//  ToyChat
//
//  Created by Martin.Q on 2022/10/09.
//

import SwiftUI

struct MessageBubble: View {
	var message: Message
	@State private var showTime = false
	
    var body: some View {
		VStack(alignment: message.received ? .leading : .trailing) {
			HStack {
				Text(message.text)
					.padding()
					.background(message.received ? Color("Gray") : Color("Yellow"))
					.cornerRadius(30)
			}
			.frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
			
			if showTime {
				Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
					.font(.caption2)
					.foregroundColor(.gray)
					.padding(message.received ? .leading : .trailing, 25)
			}
		}
		.frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
		.padding(message.received ? .leading : .trailing)
		.padding(.horizontal, 10)
		.onTapGesture {
			
		}
		.gesture(
			DragGesture(minimumDistance: 0)
				.onChanged({ _ in
					showTime = true
				})
				.onEnded({ _ in
					showTime = false
				})
		)
    }
}

struct MessageBubble_Previews: PreviewProvider {
    static var previews: some View {
		MessageBubble(message: Message(id: "3333", text: "Testing Message", received: true, timestamp: Date()))
		MessageBubble(message: Message(id: "3333", text: "Testing Message", received: false, timestamp: Date()))
    }
}
