//
//  SecondScreenController.swift
//  SecondSwiftProject
//
//  Created by Ylst, Zachary on 10/12/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class SecondScreenController: UIViewController
{
    lazy var colorTool = ColorTools()
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = colorTool.createRandomColor()
    }
    private var imageCounter: Int = 0
    
    @IBOutlet weak var changeImageButton: UIButton!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var imageView1: UIImageView!

    @IBAction func homeButtonClick(_ sender: Any)
    {
        
    }
    
    @IBAction func changeImage(_ sender: Any)
    {
        
    }
    
    private func switchImage() -> Void
    {
        if (imageCounter > 2)
        {
            imageCounter = 0
        }
        if (imageCounter == 0)
        {
            imageView1.image = UIImage(named: "wow")
        }
        else if (imageCounter == 1)
        {
            imageView1.image = UIImage(named: "night sky")
        }
    }
}

