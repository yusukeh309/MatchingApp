//
//  User.swift
//  MatchingApp
//
//  Created by Uske on 2021/02/28.
//

import Foundation
import Firebase

class User {
    
    var email: String
    var name: String
    var createdAt: Timestamp
    var age: String
    var residence: String
    var hobby: String
    var introduction: String
    var profileImageUrl: String
    
    init(dic: [String: Any]) {
        self.email = dic["email"] as? String ?? ""
        self.name = dic["name"] as? String ?? ""
        self.createdAt = dic["createdAt"] as? Timestamp ?? Timestamp()
        self.age = dic["age"] as? String ?? ""
        self.residence = dic["residence"] as? String ?? ""
        self.hobby = dic["hobby"] as? String ?? ""
        self.introduction = dic["introduction"] as? String ?? ""
        self.profileImageUrl = dic["profileImageUrl"] as? String ?? ""
    }
}
