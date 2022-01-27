//
//  Question.swift
//  Homework2.3
//
//  Created by Денис Ільницький on 26/01/2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let birthday: String
    let countryOfLiving: String
    let placeOfJob: String
    let hobby: String
    let goal: String
    let image: String
    
    var fullName: String {
        "\(name) \(surname)"
    }

    static func getPerson() -> Person {
    Person(
        name: "Denys",
        surname: "Ilnytskyi",
        birthday: "29.09.1999",
        countryOfLiving: "Slovakia",
        placeOfJob: "PSA Peugeot Citroën",
        hobby: "Fitness, learning programming",
        goal: "Change job",
        image: "SwiftImage"
    )
    }
}
