//
//  FundDataService.swift
//  FundYoung
//
//  Created by Janjao on 18/2/2561 BE.
//  Copyright © 2561 Janjao. All rights reserved.
//

import Foundation

class  FundDataService {
    static let instance = FundDataService()
    private let Funds = [
        Fund(FundName: "F1", Risk: 5, Return: 5),
        Fund(FundName: "F2", Risk: 4, Return: 4),
        Fund(FundName: "F3", Risk: 6, Return: 7)
    ]
    
    func getFunds() -> [Fund]{
        return Funds
    }
}
 
