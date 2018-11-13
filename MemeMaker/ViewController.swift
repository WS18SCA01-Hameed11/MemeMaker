//
//  ViewController.swift
//  MemeMaker
//
//  Created by Hameed Abdullah on 11/12/18.
//  Copyright © 2018 Hameed Abdullah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //“Segmented controls are used to offer a choice between a limited number of options. For example, a calendar app might have a segmented control to switch between day, week, and month views”
    
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    var topChoices = [
        CaptionChoice(emoji: "🕶", caption: "You know what's cool?"),
        CaptionChoice(emoji: "💥", caption: "You know what makes me mad?"),
        CaptionChoice(emoji: "💕", caption: "You know what I love?")
    ]
    
    var bottomChoices = [
        CaptionChoice(emoji: "🐱", caption: "Cats wearing hats"),
        CaptionChoice(emoji: "🐕", caption: "Dogs carrying logs"),
        CaptionChoice(emoji: "🐒", caption: "Monkeys being funky")
    ]
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let font = UIFont.systemFont(ofSize: 25)
        topCaptionSegmentedControl.setTitleTextAttributes([NSAttributedString.Key.font: font],for: .normal)
        bottomSegmentedControl.setTitleTextAttributes([NSAttributedString.Key.font: font],for: .normal)
        
        //First, remove all of the segments from the top control:
        topCaptionSegmentedControl.removeAllSegments()
        
    
        //Loop through the topChoices array and add the new segments in:
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
        
        bottomSegmentedControl.removeAllSegments()
        for choice in bottomChoices {
            //to add segments
            //animated: false, This is all happening before the user gets to see anything
            bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomSegmentedControl.selectedSegmentIndex = 0
        
        captionChoice()
        
        
    }

    @IBAction func segmentedControlValueChanged(_ sender: Any) {
        
        captionChoice()
    }
    
    func captionChoice() {
        
        let topChoice = topChoices[topCaptionSegmentedControl.selectedSegmentIndex].caption
        topCaptionLabel.text = topChoice
        
        let bottmChoice = bottomChoices[bottomSegmentedControl.selectedSegmentIndex].caption
        bottomCaptionLabel.text = bottmChoice
        
    }
    
    
    
}
























