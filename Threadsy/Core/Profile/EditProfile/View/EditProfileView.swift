//
//  EditProfileView.swift
//  Threadsy
//
//  Created by Mahsa Fateh on 6/18/25.
//

import SwiftUI

struct EditProfileView: View {
  @State private var bio = ""
  @State private var link = ""
  @State private var isPrivateProfile = false
  
    var body: some View {
      NavigationStack {
        ZStack {
          Color(.systemGroupedBackground)
            .edgesIgnoringSafeArea([.bottom, .horizontal])
          
          VStack {
            //name and profile image
            HStack {
              VStack(alignment: .leading) {
                Text("Name")
                  .fontWeight(.semibold)
                Text("Charles Leclerc")
              }
              .font(.footnote)
              
              Spacer()
              
              CircularProfileImageView()
            }
            
            Divider()
            
            VStack(alignment: .leading){
              Text("Bio")
                .fontWeight(.semibold)
              
              TextField("Enter your bio", text: $bio, axis: .vertical)
            }
            .font(.footnote)
            
            Divider()
            
            VStack(alignment: .leading) {
              Text("Link")
                .fontWeight(.semibold)
              
              TextField("Add link ...", text: $link)
              
            }.font(.footnote)
            
            Divider()
            
            Toggle("Private Profile", isOn: $isPrivateProfile)
              .font(.footnote)
            
          }
          .padding()
          .background(.white)
          .clipShape(RoundedRectangle(cornerRadius: 10))
          .overlay() {
            RoundedRectangle(cornerRadius: 10)
              .stroke(Color(.systemGray4), lineWidth: 1)
          }
          .padding()
        }
        .navigationTitle("Edit Profile")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
          ToolbarItem(placement: .topBarLeading) {
            Button("Cancel") {
              
            }
            .font(.subheadline)
            .foregroundStyle(Color.black)
          }
          
          ToolbarItem(placement: .topBarTrailing) {
            Button("Done") {
              
            }
            .font(.subheadline)
            .fontWeight(.semibold)
            .foregroundStyle(Color.black)
          }
        }
      }
    }
}

#Preview {
    EditProfileView()
}
