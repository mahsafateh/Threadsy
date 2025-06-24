  //
  //  AuthService.swift
  //  Threadsy
  //
  //  Created by Mahsa Fateh on 6/23/25.
  //

import FirebaseAuth

class AuthService {
  
  @Published var userSession: FirebaseAuth.User?
  
  static let shared = AuthService()
  
  init(){
    self.userSession = Auth
      .auth().currentUser
  }
  
  @MainActor
  func login(withEmail email: String, password: String) async throws {
    do {
      let resualt = try await Auth.auth().signIn(
        withEmail: email,
        password: password
      )
      self.userSession = resualt.user
      print(
        "DEBUG: Logged in \(resualt.user.uid)"
      )
    } catch {
      print(
        "DEBUG: Failed to create user with error \(error.localizedDescription)"
      )
    }
    
  }
  
  @MainActor
  func createUser(withEmail email: String, password: String, fullname: String, username: String) async throws {
    do {
      let resualt = try await Auth.auth().createUser(
        withEmail: email,
        password: password
      )
      self.userSession = resualt.user
      print(
        "DEBUG: Create user \(resualt.user.uid)"
      )
    } catch {
      print(
        "DEBUG: Failed to create user with error \(error.localizedDescription)"
      )
    }
  }
  
  
  func signOut() {
    try? Auth.auth().signOut()
    self.userSession = nil
  }
  
  
}
