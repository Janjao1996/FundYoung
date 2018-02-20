//
//  fundSelectionVC.swift
//  FundYoung
//
//  Created by Janjao on 17/2/2561 BE.
//  Copyright © 2561 Janjao. All rights reserved.
//

import UIKit

class fundSelectionVC: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    @IBOutlet weak var FundTable: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FundDataService.instance.getFunds().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let fundCell = tableView.dequeueReusableCell(withIdentifier: "FundCell") as? FundCell{
            let fund = FundDataService.instance.getFunds()[indexPath.row ]
            fundCell.updateViews(fund: fund)
            return fundCell
            
        }
        else{
            print("fail")
            return FundCell()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FundTable.dataSource = self
        FundTable.delegate = self

        // Do any additional setup after loading the view.
    }
    @IBAction func BackBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "CustomVC", sender: self)
    }
    var plan:Plan!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let fundRecommendation = segue.destination as? fundRecommendationVC{
            
            fundRecommendation.plan = plan
            
        }
    }

   
}
