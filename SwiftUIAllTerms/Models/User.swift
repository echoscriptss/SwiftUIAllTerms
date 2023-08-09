//
//  User.swift
//  SwiftUIAllTerms
//
//  Created by Yogesh on 7/27/23.
//

import Foundation

class User: ObservableObject {
   @Published var userName: String = String()
}

class UserDetails: ObservableObject {
    @Published var department: String = String()
    @Published var jobshift: String = String()
}
