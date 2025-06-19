//
//  CreateThreadView.swift
//  Threadsy
//
//  Created by Mahsa Fateh on 6/19/25.
//

import SwiftUI

struct CreateThreadView: View {
  @State private var caption = ""
  @Environment(\.dismiss) var dismiss
  
    var body: some View {
      NavigationStack {
        VStack {
          HStack(alignment:.top) {
            CircularProfileImageView()
            
            VStack(alignment: .leading, spacing: 4) {
              Text("Maximiliam")
                .fontWeight(.semibold)
              
              TextField("Start a thread... ", text: $caption, axis: .vertical)
            }
            .font(.footnote)
            
            Spacer()
            
            if !caption.isEmpty {
              Button {
                caption = ""
              } label: {
                Image(systemName: "xmark")
                  .resizable()
                  .frame(width: 12, height: 12)
                  .foregroundStyle(.gray)
              }
            }
            

          }
          
          
          Spacer()
          
        }
        .padding()
        .navigationTitle("New Thread")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
          ToolbarItem(placement: .topBarLeading){
            Button("Cancel") {
              dismiss()
              print("Dismiss is pressed")
            }
            .font(.subheadline)
            .foregroundStyle(.black)

          }
          ToolbarItem(placement: .topBarTrailing){
            Button("Post") {
              
            }
            .opacity(caption.isEmpty ? 0.5 : 1.0)
            .disabled(caption.isEmpty)
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(.black)

          }

        }
      }
    }
}

#Preview {
    CreateThreadView()
}
