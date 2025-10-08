//
//  TopBar.swift
//  M2I_Swift_Lesson
//
//  Created by Antonin DO SOUTO on 08/10/2025.
//


HStack {
                    Spacer()
                    Image(user.pdp)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    Image(user.pdp)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    Image(user.pdp)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                    Spacer()
                    Counter(text: "Counter:", counter: counter)
                    Spacer()
                    Button(action: {
                        user.email = user.CapitalizeEmail();
                        user.password = user.CapitalizePassword();
                        print("\(user.email)")
                    }) {
                        Text("Invite & earn")
                            .padding()
                            .background(.yellow)
                            .cornerRadius(50)
                    }
                    Spacer()
                }
                .frame(height: 75)