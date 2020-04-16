//
//  SliderViewController.swift
//  MultipleScene
//
//  Created by Isaiah Hinton on 4/15/20.
//  Copyright © 2020 Isaiah Hinton. All rights reserved.
//

import UIKit






class SliderViewController: UIViewController {
    
    
    @IBOutlet weak var sliderVal: UILabel!
    
    
    @IBAction func mySlider(_ sender: UISlider) {
        global.sliderVar = Int(sender.value)
        sliderVal.text = "\(global.sliderVar)"
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
