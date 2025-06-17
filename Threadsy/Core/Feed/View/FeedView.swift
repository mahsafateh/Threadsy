//
//  FeedView.swift
//  Threadsy
//
//  Created by Mahsa Fateh on 6/17/25.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
      NavigationStack {
        ScrollView(showsIndicators: false) {
          LazyVStack {
            ForEach(0 ... 10, id: \.self) {
              thread in
              ThreadCell()
            }
          }
        }
        .refreshable {
          print("DEBUG: Refresh threads")
        }
        .navigationTitle("Threads")
        .navigationBarTitleDisplayMode(.inline)
      }
      .toolbar {
        ToolbarItem(placement: .navigationBarTrailing) {
          Button {
            
          } label: {
            Image(systemName: "arrow.counterclockwise")
              .foregroundColor(.black)
          }
        }

      }
    }
}

#Preview {
  NavigationStack{
    FeedView()
  }
}
