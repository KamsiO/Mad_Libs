//
//  InputScreen.swift
//  Mad Libs
//
//  Created by Kamsi Oramasionwu on 2/18/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation
import UIKit


class InputScreen : UIViewController, UITextFieldDelegate{
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // collections of labels and text fields for each genre input screen
    @IBOutlet var adventureLabel: [UILabel]!
    @IBOutlet var adventureTextField: [UITextField]!
    @IBOutlet weak var adventureGender: UISegmentedControl!
    @IBOutlet weak var adventureGenderLabel: UILabel!
    @IBOutlet weak var adventureBtn: UIButton!
    
    @IBOutlet var romanceLabel: [UILabel]!
    @IBOutlet var romanceTextField: [UITextField]!
    @IBOutlet weak var romanceGender1: UISegmentedControl!
    @IBOutlet weak var romanceGender2: UISegmentedControl!
    @IBOutlet weak var romanceBtn: UIButton!
    
    @IBOutlet var mysteryLabel: [UILabel]!
    @IBOutlet var mysteryTextField: [UITextField]!
    @IBOutlet weak var mysteryGender: UISegmentedControl!
    @IBOutlet weak var mysteryBtn: UIButton!
    
    @IBOutlet var thrillerLabel: [UILabel]!
    @IBOutlet var thrillerTextField: [UITextField]!
    @IBOutlet weak var thrillerGender1: UISegmentedControl!
    @IBOutlet weak var thrillerGender2: UISegmentedControl!
    @IBOutlet weak var thrillerBtn: UIButton!
    
    var story : [String] = [] //an array that will hold all the text for the labels (which tell the user which word to input in the text fields) in the InputScreen class
    var inputNum = 0 // a variable that will be compared to the number of strings in story variable to make sure for loops don't go out of range
    var storyNum : Int = 0
    var segueIdentifier: String = ""
    
    let music = MusicController()
    
    override func viewDidLoad() {
        // setup custom status bar https://freakycoder.com/ios-notes-13-how-to-change-status-bar-color-1431c185e845
        let app : UIApplication = UIApplication.shared
        let statusBarHeight: CGFloat = app.statusBarFrame.size.height

        let statusBarView = UIView()
        view.addSubview(statusBarView)
        
        statusBarView.translatesAutoresizingMaskIntoConstraints = false
        statusBarView.heightAnchor.constraint(equalToConstant: statusBarHeight).isActive = true
        statusBarView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.0).isActive = true
        statusBarView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        statusBarView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        overrideUserInterfaceStyle = .light //only use light interface style
        
        
        // if-statements to setup the input screen based on which genre the user chose
        if segueIdentifier == "toAdventure" {
            statusBarView.backgroundColor = #colorLiteral(red: 0.5130010247, green: 0.9133928418, blue: 0.03394796699, alpha: 1)
            music.adventureMusic() //sets the music for input screen
            adventureBtn.isEnabled = false
            makeTransparent(button: adventureBtn, enabled: false)
            
            if storyNum == 1 {
                // shows the gender picker which is only used in the first story template for adventure
                adventureGender.alpha = 1
                adventureGenderLabel.alpha = 1
            }
            for label in adventureLabel{ // a for loop that changes the text of each label in the screen to strings from the array of label texts and makes the label become visible
                if inputNum <= story.count-1{
                    label.text = story[inputNum]
                    inputNum += 1
                
                    label.alpha = 1 // all the labels are initially invisible because the two stories of each genre have a different amount of words that the user will have to input
                }
            }
            inputNum = 0
            for textField in adventureTextField { // a for loop that makes the text fields on the screen become visible according to how many strings are in the story array
                if inputNum <= story.count-1{
                    textField.alpha = 1
                    textField.resignFirstResponder() // allows the keyboard to be dismissed when typing in text fields
                    textField.addTarget(self, action: #selector(editingChanged), for: .editingChanged)
                    inputNum += 1
                }
            }
            /*if numTimesOnPage < 2 {
                music.adventureMusic()
            }*/
        }
        
        else if segueIdentifier == "toRomance" {
            statusBarView.backgroundColor = #colorLiteral(red: 0.8708205819, green: 0.2673715055, blue: 0.5477263331, alpha: 1)
            music.romanceMusic()
            romanceBtn.isEnabled = false
            makeTransparent(button: romanceBtn, enabled: false)
            
            for label in romanceLabel{
                if inputNum <= story.count-1{
                    label.text = story[inputNum]
                    inputNum += 1
                    
                    label.alpha = 1
                }
            }
            inputNum = 0
            for textField in romanceTextField{
                if inputNum <= story.count-1{
                    textField.alpha = 1
                    textField.resignFirstResponder()
                    textField.addTarget(self, action: #selector(editingChanged), for: .editingChanged)
                    inputNum += 1
                }
            }
        }
        
        else if segueIdentifier == "toMystery" {
            statusBarView.backgroundColor = #colorLiteral(red: 0.01960784314, green: 0.09803921569, blue: 0.4352941176, alpha: 1)
            music.mysteryMusic()
            mysteryBtn.isEnabled = false
            makeTransparent(button: mysteryBtn, enabled: false)
            
            for label in mysteryLabel{
                if inputNum <= story.count-1{
                    label.text = story[inputNum]
                    inputNum += 1
                    
                    label.alpha = 1
                }
            }
            inputNum = 0
            for textField in mysteryTextField{
                if inputNum <= story.count-1{
                    textField.alpha = 1
                    textField.resignFirstResponder()
                    textField.addTarget(self, action: #selector(editingChanged), for: .editingChanged)
                    inputNum += 1
                }
            }
        }
        
        else if segueIdentifier == "toThriller" {
            statusBarView.backgroundColor = UIColor.black
            music.thrillerMusic()
            thrillerBtn.isEnabled = false
            makeTransparent(button: thrillerBtn, enabled: false)
            
            for label in thrillerLabel{
                if inputNum <= story.count-1{
                    label.text = story[inputNum]
                    inputNum += 1
                    
                    label.alpha = 1
                }
            }
            inputNum = 0
            for textField in thrillerTextField{
                if inputNum <= story.count-1{
                    textField.alpha = 1
                    textField.resignFirstResponder()
                    textField.addTarget(self, action: #selector(editingChanged), for: .editingChanged)
                    inputNum += 1
                }
            }
        }
    }

    
    @objc func editingChanged(_ textField: UITextField) { // function that keeps the ready button disabled until all the text fields have been filled
        if segueIdentifier == "toAdventure" {
            inputNum = 0
            for textField in adventureTextField {
                if inputNum <= story.count-1{
                    guard let textFieldVar = textField.text, !textFieldVar.isEmpty else {
                        adventureBtn.isEnabled = false
                        makeTransparent(button: adventureBtn, enabled: false)
                        return
                    }
                    inputNum += 1
                }
            }
            adventureBtn.isEnabled = true
            makeTransparent(button: adventureBtn, enabled: true)
        }
        if segueIdentifier == "toRomance" {
            inputNum = 0
            for textField in romanceTextField {
                if inputNum <= story.count-1{
                    guard let textFieldVar = textField.text, !textFieldVar.isEmpty else {
                        romanceBtn.isEnabled = false
                        makeTransparent(button: romanceBtn, enabled: false)
                        return
                    }
                    inputNum += 1
                }
            }
            romanceBtn.isEnabled = true
            makeTransparent(button: romanceBtn, enabled: true)
        }
        if segueIdentifier == "toMystery" {
            inputNum = 0
            for textField in mysteryTextField {
                if inputNum <= story.count-1{
                    guard let textFieldVar = textField.text, !textFieldVar.isEmpty else {
                        mysteryBtn.isEnabled = false
                        makeTransparent(button: mysteryBtn, enabled: false)
                        return
                    }
                    inputNum += 1
                }
            }
            mysteryBtn.isEnabled = true
            makeTransparent(button: mysteryBtn, enabled: true)
        }
        if segueIdentifier == "toThriller" {
            inputNum = 0
            for textField in thrillerTextField {
                if inputNum <= story.count-1{
                    guard let textFieldVar = textField.text, !textFieldVar.isEmpty else {
                        thrillerBtn.isEnabled = false
                        makeTransparent(button: thrillerBtn, enabled: false)
                        return
                    }
                    inputNum += 1
                }
            }
            thrillerBtn.isEnabled = true
            makeTransparent(button: thrillerBtn, enabled: true)
        }
    }
    
    func makeTransparent(button: UIButton, enabled: Bool) { // sets the transparency of button based on whether it is enabled or not
        if enabled {
            button.alpha = 1
        }
        else {
            button.alpha = 0.5
        }
    }
    
    
    // functions for back buttons to stop music
    @IBAction func advBackBtn(_ sender: Any) {
        music.adventureMusicPlayer.setVolume(0, fadeDuration: 1)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.music.adventureMusicPlayer.stop()
        }
    }
    @IBAction func rmcBackBtn(_ sender: Any) {
        music.romanceMusicPlayer.setVolume(0, fadeDuration: 1)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.music.romanceMusicPlayer.stop()
        }
    }
    @IBAction func mystBackBtn(_ sender: Any) {
        music.mysteryMusicPlayer.setVolume(0, fadeDuration: 1)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.music.mysteryMusicPlayer.stop()
        }
    }
    @IBAction func thrilBackBtn(_ sender: Any) {
        music.thrillerMusicPlayer.setVolume(0, fadeDuration: 1)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.music.thrillerMusicPlayer.stop()
        }
    }
    
    
    let stories = Stories()
    
    @IBAction func adventureReadyBtn(_ sender: Any) {
        inputNum = 0
        for textField in adventureTextField { // a for lopp that checks which story template the user chose then adds to the appropriate dictionary in the Story class; the strings from the array of label text will be the keys and the text that the user inputed will be the values
            if storyNum == 1 {
                if inputNum <= stories.adventureInput1.count-1 {
                    stories.adventureText1[stories.adventureInput1[inputNum]] = textField.text
            
                    inputNum += 1
                }
            }
                    
            else if storyNum == 2 {
                if inputNum <= stories.adventureInput2.count-1 {
                    stories.adventureText2[stories.adventureInput2[inputNum]] = textField.text
                    
                    inputNum += 1
                }
            }
        }
        determineGenders(index1: adventureGender.selectedSegmentIndex)
        print(stories.adventureText1)
    }
    
    
    @IBAction func romanceReadyBtn(_ sender: Any) {
        inputNum = 0
        for textField in romanceTextField {
            if storyNum == 1 {
                //print("story num1")
                if inputNum <= stories.romanceInput1.count-1 {
                    //print("in loop")
                    stories.romanceText1[stories.romanceInput1[inputNum]] = textField.text
                    
                    inputNum += 1
                }
            }
                
            else if storyNum == 2 {
                if inputNum <= stories.romanceInput2.count-1 {
                    stories.romanceText2[stories.romanceInput2[inputNum]] = textField.text
                    
                    inputNum += 1
                }
            }
        }
        determineGenders(index1: romanceGender1.selectedSegmentIndex, index2: romanceGender2.selectedSegmentIndex)
        print(stories.romanceText1)
    }
    
    
    @IBAction func mysteryReadyBtn(_ sender: Any) {
        inputNum = 0
        for textField in mysteryTextField {
            if inputNum <= stories.mysteryInput1.count-1 {
                stories.mysteryText1[stories.mysteryInput1[inputNum]] = textField.text
                
                inputNum += 1
            }
            
        }
        determineGenders(index1: mysteryGender.selectedSegmentIndex)
        print(stories.mysteryText1)
    }
    
    @IBAction func thrillerReadyBtn(_ sender: Any) {
        inputNum = 0
        for textField in thrillerTextField {
            if inputNum <= stories.thrillerInput1.count-1 {
                stories.thrillerText1[stories.thrillerInput1[inputNum]] = textField.text
                
                inputNum += 1
            }
        }
        determineGenders(index1: thrillerGender1.selectedSegmentIndex, index2: thrillerGender2.selectedSegmentIndex)
        print(stories.thrillerText1)
    }
    
    
    func determineGenders (index1: Int?, index2: Int? = -1) { // sets the values of determinedGender tuple by checking UISegmentedView index
        switch index1 {
            case 0:
                stories.determinedGender1.subjective = "he"
                stories.determinedGender1.objective = "him"
                stories.determinedGender1.possesive = "his"
            case 1:
                stories.determinedGender1.subjective = "she"
                stories.determinedGender1.objective = "her"
                stories.determinedGender1.possesive = "her"
            case 2:
                stories.determinedGender1.subjective = "they"
                stories.determinedGender1.objective = "them"
                stories.determinedGender1.possesive = "their"
            default:
                break
        }
        switch index2 {
            case 0:
                stories.determinedGender2.subjective = "he"
                stories.determinedGender2.objective = "him"
                stories.determinedGender2.possesive = "his"
            case 1:
                stories.determinedGender2.subjective = "she"
                stories.determinedGender2.objective = "her"
                stories.determinedGender2.possesive = "her"
            case 2:
                stories.determinedGender2.subjective = "they"
                stories.determinedGender2.objective = "them"
                stories.determinedGender2.possesive = "their"
            default:
                break
        }
    }
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { // this delay added to make sure that the ready buttons fills the dictionaries first before the user is taken to the next screen which uses the dictionary
        if let destination = segue.destination as? StoryScreen {
            print(self.segueIdentifier)
            
            if self.segueIdentifier == "toAdventure" {
                if self.storyNum == 1 {
                    destination.adventureStory = self.stories.adventureStory1() // sets the value of adventureStory, a variable in the StoryScreen class, equal to a function in the Stories class which returns the completed story string
                }
                else {
                    destination.adventureStory = self.stories.adventureStory2()
                }
                self.music.adventureMusicPlayer.setVolume(0, fadeDuration: 1)
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    self.music.adventureMusicPlayer.stop()
                }
            }
            if self.segueIdentifier == "toRomance" {
                if self.storyNum == 1 {
                    destination.romanceStory = self.stories.romanceStory1()
                }
                else {
                    destination.romanceStory = self.stories.romanceStory2()
                }
                self.music.romanceMusicPlayer.setVolume(0, fadeDuration: 1)
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    self.music.romanceMusicPlayer.stop()
                }
            }
            if self.segueIdentifier == "toThriller" {
                destination.thrillerStory = self.stories.thrillerStory1()
                self.music.thrillerMusicPlayer.setVolume(0, fadeDuration: 1)
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    self.music.thrillerMusicPlayer.stop()
                }
            }
            if self.segueIdentifier == "toMystery" {
                destination.mysteryStory = self.stories.mysteryStory1()
                self.music.mysteryMusicPlayer.setVolume(0, fadeDuration: 1)
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    self.music.mysteryMusicPlayer.stop()
                }
            }
            
            destination.segueIdentifier = self.segueIdentifier
            destination.storyNum = self.storyNum
        }
    }
    }
    
}
