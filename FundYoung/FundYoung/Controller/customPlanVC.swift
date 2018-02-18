//
//  customPlanVC.swift
//  FundYoung
//
//  Created by Janjao on 17/2/2561 BE.
//  Copyright © 2561 Janjao. All rights reserved.
//

import UIKit

class customPlanVC: UIViewController {
    var plan:Plan!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        planName.text = plan.PlanName
        Target.text = String(plan.Target)
        Duration.text = String(plan.NumberOfYear)
        

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var planName: UITextField!
    @IBOutlet weak var Target: UITextField!
    @IBOutlet weak var Duration: UITextField!
    
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
