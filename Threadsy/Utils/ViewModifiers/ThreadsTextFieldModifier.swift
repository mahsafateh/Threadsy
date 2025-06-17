//
//  ThreadsTextFieldModifier.swift
//  Threadsy
//
//  Created by Mahsa Fateh on 6/17/25.
//

import SwiftUI

struct ThreadsTextFieldModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.subheadline)
      .padding(12)
      .background(Color(.systemGray6))
      .cornerRadius(10)
      .padding(.horizontal, 24)
  }
}
 
