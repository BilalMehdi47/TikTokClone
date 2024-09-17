//
//  UserCell.swift
//  TikTokClone
//
//  Created by Bilal Mehdi on 16/09/2024.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack (spacing: 12) {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 48, height: 48)
                .foregroundStyle(Color(.systemGray5))
            
            VStack{
                Text("test_user")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("User Name")
                    .font(.footnote)
            }
            Spacer()
        }
    }
}

#Preview {
    UserCell()
}
