  //
  //  ProfileView.swift
  //  Threadsy
  //
  //  Created by Mahsa Fateh on 6/18/25.
  //

import SwiftUI

struct ProfileView: View {
  @State private var selectedFilter : ProfileThreadFilter = .threads
  @Namespace var animation
  
  private var filterBarWidth: CGFloat {
    let count = CGFloat(ProfileThreadFilter.allCases.count)
    return UIScreen.main.bounds.width / count - 16
  }
  
  var body: some View {
    NavigationStack {
      ScrollView(showsIndicators: false) {
          //bio
        VStack(spacing: 20) {
          
          HStack(alignment: .top ) {
            
            VStack(alignment: .leading, spacing: 12) {
                // fullname and username
              VStack(alignment: .leading, spacing: 4){
                
                Text("Charles")
                  .font(.title2)
                  .fontWeight(.semibold)
                
                Text("charles")
                  .font(.subheadline)
              }
              
              Text("Formula 1 driver for Scuderia Ferrari")
              
              Text("2 folowers")
                .font(.caption)
                .foregroundColor(.gray)
            }
            
            Spacer()
            
            CircularProfileImageView()
          }
          
          Button {
            
          } label: {
            Text("Follow")
              .modifier(ThreadsButtonModifier())
          }
          
            //User content list view
          
          VStack {
            HStack {
              ForEach(ProfileThreadFilter.allCases) { filter in
                VStack {
                  Text(filter.title)
                    .font(.subheadline)
                    .fontWeight(selectedFilter ==  filter ? .semibold : .regular)
                  
                  if selectedFilter == filter {
                    Rectangle()
                      .foregroundStyle(Color.black)
                      .frame(width: filterBarWidth, height: 1)
                      .matchedGeometryEffect(id: "item", in: animation)
                  }
                  else {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: filterBarWidth, height: 1)
                  }
                }
                .onTapGesture{
                  withAnimation(.spring()) {
                    selectedFilter = filter
                  }
                }
              }
            }
          }
          
          LazyVStack {
            ForEach(0 ... 10, id: \.self) {
              thread in
              ThreadCell()
            }
          }
          .padding(.vertical, 8)
          
        }
        
        
      }
      .toolbar {
        ToolbarItem(
          placement : .navigationBarTrailing
        ){
          Button {
            AuthService.shared
              .signOut()
          } label: {
            Image(
              systemName: "line.3.horizontal"
            ).foregroundStyle(.black)
          }
          
        }
      }
      .padding(.horizontal)
    }
    
  }
}

#Preview {
  ProfileView()
}
