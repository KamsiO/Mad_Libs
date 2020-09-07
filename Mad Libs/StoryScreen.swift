//
//  StoryScreen.swift
//  Mad Libs
//
//  Created by Kamsi Oramasionwu on 2/18/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

class StoryScreen : UIViewController {
    override var preferredStatusBarStyle: UIStatusBarStyle { //https://www.youtube.com/watch?v=iYU1uwN33F4
        return .lightContent
    }
    
    // strings which will fill the text of a label
    var adventureStory : String = ""
    var romanceStory : String = ""
    var mysteryStory : String = ""
    var thrillerStory : String = ""
    
    var storyNum : Int = 0
    
    let story = Stories()
    
    var segueIdentifier: String = ""
    
    @IBOutlet weak var adventureStoryLabel: UILabel!
    @IBOutlet weak var romanceStoryLabel: UILabel!
    @IBOutlet weak var mysteryStoryLabel: UILabel!
    @IBOutlet weak var thrillerStoryLabel: UILabel!
    
    
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
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) { // this delay was added because the delay of the code in the segue in InputScreen meant that code within this viewDidLoad function was running before information was passed from InputScreen
            
            // if-statements to setup the story screen based on which genre input screen they are coming from
            if self.segueIdentifier == "toAdventure" {
                statusBarView.backgroundColor = #colorLiteral(red: 0.5130010247, green: 0.9133928418, blue: 0.03394796699, alpha: 1)
                self.adventureStoryLabel.text = self.adventureStory //sets the value of the text in the label to the string which is the completed story
                self.music.speechArray.append(self.adventureStory) //adds the story to the array of strings that the text-to-speech can read
        
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.adventureStoryLabel.fadeIn() //causes the label, which was invisible, to fade into visibility
            }
        }
            else if self.segueIdentifier == "toRomance" {
                statusBarView.backgroundColor = #colorLiteral(red: 0.8708205819, green: 0.2673715055, blue: 0.5477263331, alpha: 1)
                self.romanceStoryLabel.text = self.romanceStory
                self.music.speechArray.append(self.romanceStory)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.romanceStoryLabel.fadeIn()
            }
        }
            else if self.segueIdentifier == "toMystery" {
                statusBarView.backgroundColor = #colorLiteral(red: 0.01960784314, green: 0.09803921569, blue: 0.4352941176, alpha: 1)
                self.mysteryStoryLabel.text = self.mysteryStory
                self.music.speechArray.append(self.mysteryStory)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.mysteryStoryLabel.fadeIn()
            }
        }
            else if self.segueIdentifier == "toThriller" {
                statusBarView.backgroundColor = UIColor.black
                self.thrillerStoryLabel.text = self.thrillerStory
                self.music.speechArray.append(self.thrillerStory)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.thrillerStoryLabel.fadeIn()
            }
        }
        }
    }
    
    var played : Bool = false // variable to keep track of playing and stopping the text-to-speech
    
    //function to control playback of text-to-speech
    @IBAction func playStory(_ sender: Any) {
        if played == false {
            music.speak(txtnum: self.music.speechArray.count-1) // starts the text to speech from the beginning of the string
            played = true
        }
        else {
            music.voiceSynthesizer.stopSpeaking(at: AVSpeechBoundary(rawValue: 0)!) // immediately stops the text-to-speech https://developer.apple.com/documentation/avfoundation/avspeechsynthesizer
            played = false
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? InputScreen { //passes values to properties in InputScreen so that the user can make another mad lib with the same template
            if storyNum == 1 {
                if segueIdentifier == "toAdventure" {
                    destination.story = story.adventureInput1
                    destination.segueIdentifier = segueIdentifier
                }
                else if segueIdentifier == "toRomance" {
                    destination.story = story.romanceInput1
                    destination.segueIdentifier = segueIdentifier
                }
                else if segueIdentifier == "toMystery" {
                    destination.story = story.mysteryInput1
                    destination.segueIdentifier = segueIdentifier
                }
                else if segueIdentifier == "toThriller" {
                    destination.story = story.thrillerInput1
                    destination.segueIdentifier = segueIdentifier
                }
            }
            else if storyNum == 2 {
                if segueIdentifier == "toAdventure" {
                    destination.story = story.adventureInput2
                    destination.segueIdentifier = segueIdentifier
                }
                else if segueIdentifier == "toRomance" {
                    destination.story = story.romanceInput2
                    destination.segueIdentifier = segueIdentifier
                }
            }
            destination.storyNum = storyNum
            music.voiceSynthesizer.stopSpeaking(at: AVSpeechBoundary(rawValue: 0)!) //stops the text-to-speech so it does not carry on to another screen
        }
        
        
        if let destination = segue.destination as? ViewController { // sets the start screen back to how it first is when the user started the app 
            destination.welcomeAlpha = 1
            destination.choiceAlpha = 0
            destination.storyNum = 1
            
            music.voiceSynthesizer.stopSpeaking(at: AVSpeechBoundary(rawValue: 0)!)
        }

    }
    
    
}
