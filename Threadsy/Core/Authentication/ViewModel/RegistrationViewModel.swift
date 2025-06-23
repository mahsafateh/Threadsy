  //
  //  RegistrationViewModel.swift
  //  Threadsy
  //
  //  Created by Mahsa Fateh on 6/23/25.
  //

import Foundation

class RegistrationViewModel: ObservableObject {
  @Published var email = ""
  @Published var password = ""
  @Published var fullname = ""
  @Published var username = ""
  
  @MainActor
  func createUser() async throws {
    try await AuthService.shared.createUser(
        withEmail: email,
        password: password,
        fullname: fullname,
        username: username
      )
    print(
      "DEBUG: Create user here ..."
    )
  }
}
