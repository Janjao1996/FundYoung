//
//  identifyPlanDetailVC.swift
//  FundYoung
//
//  Created by Janjao on 17/2/2561 BE.
//  Copyright © 2561 Janjao. All rights reserved.
//

import UIKit

class identifyPlanDetailVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    var plan: Plan!
    let duration = [Int](1...50)
    @IBOutlet weak var pickerNumberOfYear: UIPickerView!
    
    @IBOutlet weak var SelectNumOfYear: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var targetInput: UITextField!
    
    @IBAction func nameTyped(_ sender: Any) {
        plan.PlanName = nameInput.text
        nameInput.text = plan.PlanName
    }
    
    @IBAction func targetTyped(_ sender: Any) {
        plan.Target = targetInput.text
        targetInput.text = plan.Target
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return duration.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return String(duration[row])
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        SelectNumOfYear.setTitle(String(duration[row]), for: .normal)
        pickerNumberOfYear.isHidden = true
        plan.NumberOfYear = duration[row]
    }
    

 
    
    override func viewDidLoad() {
       
        pickerNumberOfYear.isHidden = true
        pickerNumberOfYear.delegate = self
        pickerNumberOfYear.dataSource = self
        super.viewDidLoad()
        plan = Plan()

        // Do any additional setup after loading the view.
    }
    @IBAction func nextBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "identifyPlanVC", sender: self)
    }

    @IBAction func selectBtnPressed(_ sender: UIButton) {
        if pickerNumberOfYear.isHidden{
            
             pickerNumberOfYear.isHidden = false}
    }
    
   
}
