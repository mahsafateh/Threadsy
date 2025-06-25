//
//  ExploreView.swift
//  Threadsy
//
//  Created by Mahsa Fateh on 6/17/25.
//

import SwiftUI

struct ExploreView: View {
  @State private var searchText = ""
  @StateObject var viewModel = ExploreViewModel()
  
    var body: some View {
      NavigationStack {
        ScrollView {
          LazyVStack {
            ForEach(viewModel.users) {
              user in
              NavigationLink(value: user) {
                VStack {
                  UserCell(user: user)
                  
                  Divider()
                }
                .padding(.vertical, 4)
              }
            }
          }
        }
        .navigationDestination(for: User.self, destination: {
          user in ProfileView()
        })
        .navigationTitle("Search")
        .searchable(text: $searchText, prompt: "Search" )
      }
    }
}

#Preview {
    ExploreView()
}
