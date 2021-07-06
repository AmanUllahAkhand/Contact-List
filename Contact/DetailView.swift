//
//  DetailView.swift
//  Contact
//
//  Created by USER on 20/06/2021.
//

import SwiftUI

struct DetailView: View {
    
    let contact: Contact
    
    var body: some View {
        VStack{
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(150)
                .shadow(radius: 3)
            Text(contact.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.medium)
            Form{
                Section{
                    HStack{
                        Text("Phone")
                        Spacer()
                        Text(contact.phone)
                            .foregroundColor(.gray)
                            .font(.callout)
                        }
                    HStack{
                        Text("Email")
                        Spacer()
                        Text(contact.email)
                            .foregroundColor(.gray)
                            .font(.callout)
                        }
                    HStack{
                        Text("Address")
                        Spacer()
                        Text(contact.address)
                            .foregroundColor(.gray)
                            .font(.callout)
                            .frame(width: 180)
                        }
                     }
                Section{
                    Button(action: {
                        print("Send a massage")
                    }){
                        Text("Send a massage")
                    }
                    
                    Button(action: {
                        print("Call")
                    }){
                        Text("Call")
                    }
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(contact: contacts[0])
            .padding(.top,60)
    }
}
