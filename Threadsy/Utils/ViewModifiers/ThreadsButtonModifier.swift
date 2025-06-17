//
//  ThreadsButtonModifier.swift
//  Threadsy
//
//  Created by Mahsa Fateh on 6/17/25.
//

import SwiftUI

struct ThreadsButtonModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.subheadline)
      .fontWeight(.semibold)
      .foregroundColor(.white)
      .frame(width: 390, height: 44)
      .background(.black)
      .cornerRadius(8)
  }
}
