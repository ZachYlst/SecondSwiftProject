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
    
    private func createRandomColor() -> UIColor
    {
        let randomRed: CGFloat = CGFloat(drand48())
        let randomGreen: CGFloat = CGFloat(drand48())
        let randomBlue: CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed,
                       green: randomGreen,
                       blue: randomBlue,
                       alpha: 1.0)
    }
    
    @IBOutlet weak var clickyButton: UIButton!
    @IBOutlet weak var clickyButton2: UIButton!
    @IBOutlet weak var clickySwitch: UISwitch!
    @IBOutlet weak var clickySwitch2: UISwitch!
    
    @IBAction func clickTheButton(_ sender: UIButton)
    {
        if(view.backgroundColor == .white)
        {
            view.backgroundColor = .gray
        }
        else
        {
            view.backgroundColor = .white
        }
        clickyButton.setTitleColor(.black, for: .normal)
        clickyButton2.setTitleColor(.black, for: .normal)
    }
    @IBAction func clickTheButton2(_ sender: Any)
    {
        view.backgroundColor = createRandomColor()
        clickyButton.setTitleColor(createRandomColor(), for: .normal)
        clickyButton2.setTitleColor(createRandomColor(), for: .normal)
    }
//    @IBAction func clickTheSwitch(_ sender: UISwitch)
//    {
//        if(clickySwitch2, isOn: true)
//        {
//            func SetOn(_ on: false, animated: true)
//        }
//    }
//    @IBAction func clickTheSwitch2(_ sender: UISwitch)
//    {
//
//    }
//}
}
