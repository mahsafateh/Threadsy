  //
  //  LoginViewModel.swift
  //  Threadsy
  //
  //  Created by Mahsa Fateh on 6/24/25.
  //

import Foundation

class LoginViewModel: ObservableObject {
  @Published var email = ""
  @Published var password = ""
  
  @MainActor
  func login () async throws {
    try await AuthService.shared.login(
      withEmail: email,
      password: password
    )
    print(
      "DEBUG: User Logged in ..."
    )
  }
}
