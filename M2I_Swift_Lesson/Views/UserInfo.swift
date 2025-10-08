//
//  UserInfo.swift
//  M2I_Swift_Lesson
//
//  Created by Antonin DO SOUTO on 08/10/2025.
//


Image(user.pdp)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                
                Text("Antonin Do Souto")
                    .font(.title)
                Text("\(user.email)")
                    .font(.title)
                Text("\(user.password)")
                    .font(.title)