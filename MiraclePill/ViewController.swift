//
//  ViewController.swift
//  MiraclePill
//
//  Created by Humberto Sanchez Lara on 11/7/16.
//  Copyright © 2016 Humberto Sanchez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var zipLbl: UILabel!
    @IBOutlet weak var zipField: UITextField!
    @IBOutlet weak var pillImg: UIImageView!
    @IBOutlet weak var productName: UILabel!
    @IBOutlet weak var productCost: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var streetLbl: UILabel!
    @IBOutlet weak var streetField: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var headDivider: UIView!
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var successImage: UIImageView!
  
    
    
    let states = ["Aguascalientes","Baja California","Baja California Sur","Campeche","Chiapas","Chihuahua","Ciudad de México","Coahuila","Colima","Durango"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLbl.isHidden = true
        countryField.isHidden = true
        zipLbl.isHidden = true
        zipField.isHidden = true
        
    }
   

    @IBAction func onPressedBuy(_ sender: Any) {
        
// Option 1
//        stateLbl.isHidden = true
//        statePicker.isHidden = true
//        statePickerBtn.isHidden = true
//        countryLbl.isHidden = true
//        countryField.isHidden = true
//        zipLbl.isHidden = true
//        zipField.isHidden = true
//        pillImg.isHidden = true
//        productName.isHidden = true
//        productCost.isHidden = true
//        nameLbl.isHidden = true
//        nameField.isHidden = true
//        streetLbl.isHidden = true
//        streetField.isHidden = true
//        cityLbl.isHidden = true
//        cityField.isHidden = true
//        headDivider.isHidden = true
//        buyBtn.isHidden = true

// Option 2
//        for i in 1...18 {
//            self.view.viewWithTag(i)?.isHidden = true
//        }
        
// Option 3 BEST
        for view in self.view.subviews as [UIView] {
            view.isHidden = true
        }
        successImage.isHidden = false
    }

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLbl.isHidden = false
        countryField.isHidden = false
        zipLbl.isHidden = false
        zipField.isHidden = false
    }
}

