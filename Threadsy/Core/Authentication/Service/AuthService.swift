//
//  AuthService.swift
//  Threadsy
//
//  Created by Mahsa Fateh on 6/23/25.
//

import FirebaseAuth

class AuthService {
  
  static let shared = AuthService()
  
  @MainActor
  func login(withEmail email: String, password: String) async throws {
    
  }
  
  @MainActor
  func createUser(withEmail email: String, password: String, fullname: String, username: String) async throws {
    do {
      let resualt = try await Auth.auth().createUser(
        withEmail: email,
        password: password
      )
      print(
        "DEBUG: Create user \(resualt.user.uid)"
      )
    } catch {
      print(
        "DEBUG: Failed to create user with error \(error.localizedDescription)"
      )
    }
  }
  
}
