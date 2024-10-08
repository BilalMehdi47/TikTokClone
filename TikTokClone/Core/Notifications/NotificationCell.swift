//
//  NotificationCell.swift
//  TikTokClone
//
//  Created by Bilal Mehdi on 16/09/2024.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundStyle(Color(.systemGray5))
            
            HStack {
                Text("cant.remeber ")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                
                
                Text(" liked your post now and want to connect with you. ")
                    .font(.footnote) +
                
                Text("3d")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            Spacer()
            
            Rectangle()
                .frame(width: 48, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
