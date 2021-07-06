//
//  ContentView.swift
//  Contact
//
//  Created by USER on 20/06/2021.
//

import SwiftUI

struct ContentView: View {
    
   
    
    var body: some View {
        NavigationView{
            List(contacts){contact in
                  NavigationLink(
                    destination: DetailView(contact: contact)){
                
                    ContactRow(contact: contact)
                }
            }
            .navigationBarTitle("Contacts")
  }
 }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding(.top,60)
    }
}

struct ContactRow: View {
    
    let contact: Contact
    
    var body: some View {
        HStack{
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(50)
            VStack(alignment: .leading) {
                Text(contact.name)
                    .font(.system(size: 21, weight: .medium, design: .default))
                Text(contact.phone)
            }
            
        }
    }
}

