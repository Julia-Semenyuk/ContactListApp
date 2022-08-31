//
//  Model.swift
//  ContactListApp
//
//  Created by Юлия on 30.08.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phoneNumber: Int
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    
    static func getPerson() -> [Person] {
        let data = DataManager()
        var persons: [Person] = []
        
        var names = data.names.shuffled()
        var surnames = data.surnames.shuffled()
        var phoneNumbers = data.phoneNumbers.shuffled()
        var emails = data.emails.shuffled()
        
        let count = 13
        
        for _ in 1...count {
            let nameIndex = Int.random(in: 0..<names.count)
            let mainName = names[nameIndex]
            names.remove(at: nameIndex)
            
            let surnameIndex = Int.random(in: 0..<surnames.count)
            let mainSurname = surnames[surnameIndex]
            surnames.remove(at: surnameIndex)
            
            let phoneNumberIndex = Int.random(in: 0..<phoneNumbers.count)
            let mainPhoneNumber = phoneNumbers[phoneNumberIndex]
            phoneNumbers.remove(at: phoneNumberIndex)
            
            let emailIndex = Int.random(in: 0..<emails.count)
            let mainEmail = emails[emailIndex]
            emails.remove(at: emailIndex)
            
            persons.append(
                Person(
                    name: mainName,
                    surname: mainSurname,
                    phoneNumber: mainPhoneNumber,
                    email: mainEmail)
            )
        }
        return persons
    }
}
