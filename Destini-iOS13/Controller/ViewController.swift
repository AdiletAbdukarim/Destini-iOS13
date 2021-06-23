//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let story0 = "You see a fork in the road."
    let choice1 = "Take a left"
    let choice2 = "Take a right"
    
    var story = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func choiceMade(_ sender: UIButton) {
        let userChoice = sender.currentTitle!
        let userMadeChoice = story.nextStory(userChoice)
        updateUI()
    }
    
    
    
    @objc func updateUI(){
        storyLabel.text = story.getStoryTitle()
        
        choice1Button.setTitle(story.getChoice1Title(), for: .normal)
        choice2Button.setTitle(story.getChoice2Title(), for: .normal)
    }
    
}

