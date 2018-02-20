//
//  fundRecommendationVC.swift
//  FundYoung
//
//  Created by Janjao on 17/2/2561 BE.
//  Copyright © 2561 Janjao. All rights reserved.
//

import UIKit

class fundRecommendationVC: UIViewController {
    var plan:Plan!

    override func viewDidLoad() {
        planName.text = plan.PlanName
        target.text = String(plan.Target)
        Duration.text = String(plan.NumberOfYear)
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var planName: UITextField!
    @IBOutlet weak var target: UITextField!
    @IBOutlet weak var Duration: UITextField!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func customBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "SelecttionVC", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let fundRecommendation = segue.destination as? fundSelectionVC{
            
            fundRecommendation.plan = plan
            
        }
    }
}
