//
//  Plan.swift
//  FundYoung
//
//  Created by Janjao on 17/2/2561 BE.
//  Copyright © 2561 Janjao. All rights reserved.
//

import Foundation
struct Plan {
    var PlanName: String!
    var Target: Int!
    var NumberOfYear: Int!
    var FundList = [Fund]()
    var Assesment = [Question]()
    init(PlanName: String, Target : Int, NumberOfYear: Int) {
        self.PlanName = PlanName
        self.Target = Target
        self.NumberOfYear = NumberOfYear
    }
    
    
}


