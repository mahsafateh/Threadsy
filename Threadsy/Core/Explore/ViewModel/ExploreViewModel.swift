//
//  ExploreViewModel.swift
//  Threadsy
//
//  Created by Mahsa Fateh on 6/25/25.
//

import Foundation

class ExploreViewModel: ObservableObject {
  @Published var users = [User]()
  
  init() {
    Task {
      try await fetchUsers()
    }
  }
  
 @MainActor
  private func fetchUsers() async throws {
    self.users = try await UserService.fetchUsers()
  }
}
