//
//  UserDataService.swift
//  FundYoung
//
//  Created by Janjao on 19/2/2561 BE.
//  Copyright © 2561 Janjao. All rights reserved.
//

import Foundation

class UserDataService {
    static let instance = UserDataService()
    private let user = User(FistName: "Theeranith", LastName: "Atchaklab")
    func getUser() -> User {
        return user
    }
    
}
