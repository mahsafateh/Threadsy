//
//  ContentViewModel.swift
//  Threadsy
//
//  Created by Mahsa Fateh on 6/24/25.
//

import Foundation
import Combine
import FirebaseAuth

class ContentViewModel: ObservableObject {
  @Published var userSession: FirebaseAuth.User?
  private var cancelable = Set<AnyCancellable>()
  
  init() {
    setUpSubscribers()
  }
  
  private func setUpSubscribers() {
    AuthService.shared.$userSession.sink{[weak self] userSession in self?.userSession = userSession}.store(in: &cancelable)
  }
}
