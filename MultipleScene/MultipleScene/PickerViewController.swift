//
//  PickerViewController.swift
//  MultipleScene
//
//  Created by Isaiah Hinton on 4/15/20.
//  Copyright © 2020 Isaiah Hinton. All rights reserved.
//

import UIKit




class PickerViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
let items = ["Item1", "Item2", "Item3", "Item4"]
var selection:String!
    
    
    
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var pickerVal: UILabel!
    
    
    
    
    
    
    public func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selection = items[row]
        pickerVal.text = "You selected: " + selection
        global.pickerVar = selection
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
        picker.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
