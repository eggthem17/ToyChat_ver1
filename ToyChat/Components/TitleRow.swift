//
//  TitleRow.swift
//  ToyChat
//
//  Created by Martin.Q on 2022/10/09.
//

import SwiftUI

struct TitleRow: View {
	var imageUrl = URL(string: "https://i.guim.co.uk/img/media/c5a3cb22f4ae7b4a4c7462ef4d2d0c71cacb3c65/0_232_2789_1673/master/2789.jpg?width=1200&quality=85&auto=format&fit=max&s=2d8edfef48e3ab33f5c5deb837e14567")
	var name = "Marcus"
	
    var body: some View {
		HStack(spacing: 20) {
			AsyncImage(url: imageUrl) { image in
				image.resizable()
					.aspectRatio(contentMode: .fill)
					.frame(width: 50, height: 50)
					.cornerRadius(50)
			} placeholder: {
				ProgressView()
			}
			
			VStack(alignment: .leading) {
				Text(name)
					.font(.title).bold()
				
				Text("Online")
					.font(.caption)
					.foregroundColor(.gray)
			}
			.frame(maxWidth: .infinity, alignment: .leading)
			
			Image(systemName: "phone.fill")
				.foregroundColor(.gray)
				.padding(10)
				.background(.white)
				.cornerRadius(50)
		}
		.padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
			.background(Color("Yellow"))
    }
}
