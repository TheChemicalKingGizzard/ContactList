struct Contact {
    
    let name: String
    let surName: String
    let number: String
    let eMail: String
}

extension Contact {
    static func getContactList() -> [Contact] {
        
        var completedContacts: [Contact] = []
        
        let names = DataStore.shared.names.shuffled()
        let surNames = DataStore.shared.surNames.shuffled()
        let phones = DataStore.shared.numbers.shuffled()
        let eMails = DataStore.shared.eMails.shuffled()
        
        let count = min(names.count,
                         surNames.count,
                         phones.count,
                         eMails.count)
        
        for index in 0..<count {
            let person = Contact(
                name: names[index],
                surName: surNames[index],
                number: phones[index],
                eMail: eMails[index]
            )
            completedContacts.append(person)
        }
        print("new array")
        return completedContacts
    }
}
