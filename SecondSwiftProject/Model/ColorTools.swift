//
//  ColorTools.swift
//  SecondSwiftProject
//
//  Created by Ylst, Zachary on 10/12/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

public class ColorTools
{
    public func createRandomColor() -> UIColor
    {
        let randomRed: CGFloat = CGFloat(drand48())
        let randomGreen: CGFloat = CGFloat(drand48())
        let randomBlue: CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed,
                       green: randomGreen,
                       blue: randomBlue,
                       alpha: 1.0)
    }
}
