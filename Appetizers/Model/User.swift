//
//  User.swift
//  Appetizers
//
//  Created by Tina Jureško on 06.10.2024..
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
