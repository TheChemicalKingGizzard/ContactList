//
//  Contact.swift
//  ContactList
//
//  Created by Даниил Петров on 20.07.2022.
//
struct Contact {
    
    var name: String
    let surName: String
    let number: String
    let eMail: String
    
    static func getContactList() -> [Contact] {
        var completedContacts: [Contact] = []
        let storedDates = DataStore()
        
        while completedContacts.count != 10 {
            let person = Contact(
                name: storedDates.names.remove(at: Int.random(in: 0..<storedDates.names.count)),
                surName: storedDates.surNames.remove(at: Int.random(in: 0..<storedDates.surNames.count)),
                number: storedDates.numbers.remove(at: Int.random(in: 0..<storedDates.numbers.count)),
                eMail: storedDates.eMails.remove(at: Int.random(in: 0..<storedDates.eMails.count))
            )
            
            completedContacts.append(person)
        }
        return completedContacts
    }
}

class DataStore {
    
    var names = ["Michael",
                 "Dwight",
                 "Jim",
                 "Pam",
                 "Ryan",
                 "Stanley",
                 "Kevin",
                 "Angela",
                 "Oscar",
                 "Phyllis"]
    
    var surNames = ["Scott",
                    "Schrute",
                    "Halpert",
                    "Beesly",
                    "Howard",
                    "Hudson",
                    "Malone",
                    "Martin",
                    "Martinez",
                    "Vance"]
    
    var numbers = ["1111111",
                   "2222222",
                   "3333333",
                   "4444444",
                   "5555555",
                   "6666666",
                   "7777777",
                   "8888888",
                   "9999999",
                   "0000000"]
    
    var  eMails = ["first@icloud.com",
                   "second@icloud.com",
                   "third@icloud.com",
                   "fourth@icloud.com",
                   "fifth@icloud.com",
                   "sixth@icloud.com",
                   "seventh@icloud.com",
                   "eighth@icloud.com",
                   "ninth@icloud.com",
                   "tenth@icloud.com"]
}
