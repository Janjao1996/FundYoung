//
//  PlanDataService.swift
//  FundYoung
//
//  Created by Janjao on 20/2/2561 BE.
//  Copyright © 2561 Janjao. All rights reserved.
//

import Foundation

class PlanDataService{
    static let instance = PlanDataService()
    private let plan = [
        Plan(PlanName: "RoadTrip to U.S.", Target: 200000, NumberOfYear: 3),
        Plan(PlanName: "Home", Target: 5000000, NumberOfYear: 20)
    ]
    
    func getPlanDetail() -> [Plan] {
        return plan
    }
    func getNAV() -> Float{
        return 0
    }
    
}


