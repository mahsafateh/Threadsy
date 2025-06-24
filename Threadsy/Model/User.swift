  //
  //  User.swift
  //  Threadsy
  //
  //  Created by Mahsa Fateh on 6/24/25.
  //

  import Foundation

  struct User: Identifiable, Codable {
      let id: String
      let fullname: String
      let email: String
      let username: String
      let profileImageUrl: String?
      let bio: String?
    
    
    init(id: String,
         fullname: String,
         email: String,
         username: String,
         profileImageUrl: String? = nil,
         bio: String? = nil) {
        self.id = id
        self.fullname = fullname
        self.email = email
        self.username = username
        self.profileImageUrl = profileImageUrl
        self.bio = bio
    }
  }
