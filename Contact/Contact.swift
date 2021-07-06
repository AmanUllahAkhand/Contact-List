//
//  contact.swift
//  Contact
//
//  Created by USER on 20/06/2021.
//

import Foundation
import SwiftUI

struct Contact : Identifiable{
    let imageName:String
    let name:String
    let phone:String
    let email:String
    let address:String
    let id = UUID()
}
let contacts = [
    Contact(imageName: "Aman", name: "Aman", phone: "+880 1783901510", email: "m.tanvir2005@gmail.com", address: "Gulsan,Dhaka"),
    Contact(imageName: "man1", name: "Avir", phone: "+880 1813901511", email: "avir@gmail.com", address: "Paduar Bazar,Comilla"),
    Contact(imageName: "man2", name: "Ovi", phone: "+880 1823901512", email: "ovi@gmail.com", address: "Hathazari,Chittagong"),
    Contact(imageName: "man3", name: "Tanvir", phone: "+880 1673901513", email: "tanvir@gmail.com", address: "Chandpur Sadar,Chandpur"),
    Contact(imageName: "man4", name: "Arif", phone: "+880 1313901514", email: "arif@gmail.com", address: "Hazigonj,Chandpur"),
    Contact(imageName: "man5", name: "Apon", phone: "+880 1923901515", email: "apon@gmail.com", address: "Maizdi,Noakhali")
]
