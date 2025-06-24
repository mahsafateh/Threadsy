  //
  //  ContentView.swift
  //  Threadsy
  //
  //  Created by Mahsa Fateh on 6/16/25.
  //

import SwiftUI

struct ContentView: View {
  @StateObject var viewModel = ContentViewModel()
  var body: some View {
    Group {
      if viewModel.userSession != nil {
        ThreadsTabView()
      } else {
        LoginView()
      }
    }
  }
}

#Preview {
  ContentView()
}
