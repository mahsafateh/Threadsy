//
//  ProfileViewModel.swift
//  Threadsy
//
//  Created by Mahsa Fateh on 6/24/25.
//

import Foundation
import Combine

class ProfileViewModel: ObservableObject {
  @Published var currentUser: User?
  private var cancellables = Set<AnyCancellable>()
  
  init() {
    setupSubscribers()
  }
  
  private func setupSubscribers() {
    UserService.shared.$currentUser.sink { [weak self] user in self?.currentUser = user
    }.store(in: &cancellables)
  }
}
