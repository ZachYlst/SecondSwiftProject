//
//  SecondScreenController.swift
//  SecondSwiftProject
//
//  Created by Ylst, Zachary on 10/12/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit
import AVFoundation

public class SecondScreenController: UIViewController
{
    private var soundPlayer: AVAudioPlayer?
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
    
    @IBAction func changeImage(_ sender: Any)
    {
        switchImage()
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
        else
        {
            imageView1.image = UIImage(named: "night sky 2")
        }
        imageCounter += 1
    }
    
    private func playMusicFile() -> Void
    {
        if let isPlaying = soundPlayer?.isPlaying
        {
            if (isPlaying)
            {
                soundPlayer?.pause()
            }
            else
            {
                soundPlayer?.play()
            }
        }
    //This code is less safe - force unwrapping can cause crashes
//        if (soundPlayer?.isPlaying)!
//        {
//            soundPlayer?.pause()
//        }
//        else
//        {
//            soundPlayer?.play()
//        }
    }
    private func loadAudioFile() -> Void
    {
        if let soundURL = NSDataAsset(name: "Nero_Promises")
        {
            do
            {
            try! AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try! AVAudioSession.sharedInstance().setActive(true)
                
                try soundPlayer = AVAudioPlayer(data: soundURL.data, fileTypeHint: AVFileType.mp3.rawValue)
                slider.maximumValue = Float ((soundPlayer?.duration)!)
                Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: (#selector(self.updateSlider)), userInfo: nil, repeats: true)
            }
            catch
            {
                print("Audio File Load Error")
            }
        }
    }
    
    @objc private func updateSlider() -> Void
    {
        slider.value = Float ((soundPlayer?.currentTime)!)
    }
}

