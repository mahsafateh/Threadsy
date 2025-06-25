  //
  //  PreviewProvider.swift
  //  Threadsy
  //
  //  Created by Mahsa Fateh on 6/25/25.
  //

  import SwiftUI
  import Foundation

extension PreviewProvider {
    static var dev: DeveloperPreview {
        DeveloperPreview.shared
    }
}

  class DeveloperPreview {
      static let shared = DeveloperPreview()
      
      let user = User(id: NSUUID().uuidString,
                      fullname: "Max MacGray",
                      email: "max@gmail.com",
                      username: "max_macgray",
                      bio: "F1 Champion")
  }
