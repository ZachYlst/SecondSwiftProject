//
//  ViewController.swift
//  SecondSwiftProject
//
//  Created by Ylst, Zachary on 10/10/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    lazy var colorTool: ColorTools = ColorTools()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var clickyButton2: UIButton!
    @IBOutlet weak var changeScreenButton: UIButton!
    
//    let pickerList = ["red", "orange", "yellow", "green", "blue", "purple"]
//    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int
//    {
//        return 1
//    }
//    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component) -> Int
//    {
//        return colors.count
//    }
    
    @IBAction func clickTheButton2(_ sender: Any)
    {
        view.backgroundColor = colorTool.createRandomColor()
        clickyButton2.setTitleColor(colorTool.createRandomColor(), for: .normal)
    }
}
