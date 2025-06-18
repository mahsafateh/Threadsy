//
//  UserCell.swift
//  Threadsy
//
//  Created by Mahsa Fateh on 6/18/25.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
      HStack {
        CircularProfileImageView()
        
        VStack(alignment: .leading) {
          Text("Lee")
            .fontWeight(.semibold)
          
          Text("Lee Zhung")
          
        }
        .font(.footnote)
        
        Spacer()
        
        Text("Follow")
          .font(.subheadline)
          .fontWeight(.semibold)
          .frame(width: 100, height: 32)
          .overlay {
            RoundedRectangle(cornerRadius: 10)
              .stroke(Color(.systemGray4), lineWidth: 1)
          }
      }
      .padding(.horizontal)
    }
}

#Preview {
    UserCell()
}
