//
//  ThreadCell.swift
//  Threadsy
//
//  Created by Mahsa Fateh on 6/17/25.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
      VStack {
        HStack(alignment: .top, spacing: 12) {
          Image(systemName: "person.crop.circle.fill")
            .resizable()
            .scaledToFill()
            .frame(width: 40, height: 40)
            .clipShape(Circle())
          
          VStack(alignment: .leading, spacing: 4) {
            HStack {
              Text("charlee")
                .font(.footnote)
                .fontWeight(.semibold)
              
              Spacer()
              
              Text("10m")
                .font(.caption)
                .foregroundColor(Color(.systemGray3))
              
              Button {
                
              } label: {
                Image(systemName: "ellipsis")
                  .foregroundColor(Color(.darkGray))
              }

            }
            
            Text("Formula 1 champion")
              .font(.footnote)
              .multilineTextAlignment(.leading)
            
            HStack(spacing: 16) {
              Button {
                
              } label: {
                Image(systemName: "heart")
              }
              
              Button {
                
              } label: {
                Image(systemName: "bubble")
              }
              
              Button {
                
              } label: {
                Image(systemName: "arrow.rectanglepath")
              }
              
              Button {
                
              } label: {
                Image(systemName: "paperplane")
              }

            }
            .foregroundColor(.black)
            .padding(.vertical, 8)

          }
        }
        Divider()
        
      }.padding()
    }
}

#Preview {
    ThreadCell()
}
