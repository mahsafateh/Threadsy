//
//  CircularProfileImageView.swift
//  Threadsy
//
//  Created by Mahsa Fateh on 6/18/25.
//

import SwiftUI

struct CircularProfileImageView: View {
    var body: some View {
      Image(systemName: "person.circle.fill")
        .resizable()
        .scaledToFill()
        .frame(width: 40, height: 40)
        .clipShape(Circle())
    }
}

#Preview {
    CircularProfileImageView()
}

