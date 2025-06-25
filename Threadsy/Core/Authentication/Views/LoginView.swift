//
//  LoginView.swift
//  Threadsy
//
//  Created by Mahsa Fateh on 6/16/25.
//

import SwiftUI

struct LoginView: View {
  @StateObject var viewModel = LoginViewModel() 
  
  var body: some View {
    NavigationStack {
      
      VStack {
        Spacer()
        Image("threads-logo-png")
          .resizable().scaledToFit()
          .frame(width: 120, height: 120)
          .padding()
        
        VStack {
          TextField("Enter your Email",  text: $viewModel.email)
            .autocapitalization(.none)
            .modifier(ThreadsTextFieldModifier())
          
          SecureField("Enter your Password",  text: $viewModel.password)
            .autocapitalization(.none)
            .modifier(ThreadsTextFieldModifier())
        }
        
        NavigationLink {
          Text("Forgot Password")
        } label: {
          Text("Forgot Password?")
            .font(.footnote)
            .fontWeight(.semibold)
            .padding(.vertical)
            .padding(.trailing, 28)
            .foregroundStyle(Color.black)
            .frame(maxWidth: .infinity, alignment: .trailing)
        } 
        
        Button {
          Task {try await viewModel.login() }
        } label: {
          Text("Login")
            .modifier(ThreadsButtonModifier())
        }
        
        Spacer()
        
        Divider()
        
        NavigationLink {
          RegistrationView()
            .navigationBarBackButtonHidden(true)
        } label: {
          HStack(spacing: 3) {
            Text("Don't have an account?")
            
            Text("Sign Up")
              .fontWeight(.semibold)
          }
          .foregroundStyle(Color.black)
          .font(.footnote)
        }
        .padding(.vertical, 16)
      }
    }
  }
}
#Preview {
  LoginView()
}
