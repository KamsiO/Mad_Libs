//
//  ViewController.swift
//  Mad Libs
//
//  Created by Kamsi Oramasionwu on 2/13/19.
//  Copyright © 2019 student. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    } //changes color of phone status bar text to white https://www.youtube.com/watch?v=iYU1uwN33F4
    
    // two variables that will be used as alpha values for objects on the start screen
    var welcomeAlpha: Int = 1
    var choiceAlpha: Int = 0
    
    
    @IBOutlet weak var madLabel: UILabel!
    @IBOutlet weak var libsLabel: UILabel!
    @IBOutlet weak var startBtn: UIButton!
    
    @IBOutlet weak var chooseGenreLabel: UILabel!
    @IBOutlet weak var adventureBtn: UIButton!
    @IBOutlet weak var romanceBtn: UIButton!
    @IBOutlet weak var mysteryBtn: UIButton!
    @IBOutlet weak var thrillerBtn: UIButton!
    
    @IBOutlet weak var backToGenreBtn: UIButton!
    @IBOutlet weak var chooseTemplateLabel: UILabel!
    @IBOutlet weak var advTemplate1Btn: UIButton!
    @IBOutlet weak var advTemplate2Btn: UIButton!
    @IBOutlet weak var rmcTemplate1Btn: UIButton!
    @IBOutlet weak var rmcTemplate2Btn: UIButton!
    
    let music = MusicController() // lets View Controller access the Music Controller class through the variable music
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) { // delay function that causes code within the function to happen after a set amount of time as the rest of the code outside the function continues to run
            self.music.startMusic() // starts the main menu music
        }
        music.loadStartSound() // prepares the sound file that plays when user taps the start button
        
        
        // when the user starts the app or goes back to the homepage, these three objects will be visible
        madLabel.alpha = CGFloat(welcomeAlpha)
        libsLabel.alpha = CGFloat(welcomeAlpha)
        startBtn.alpha = CGFloat(welcomeAlpha)
        
        // these five objects are invisible when the page loads until a function makes them become visible
        chooseGenreLabel.alpha = CGFloat(choiceAlpha)
        adventureBtn.alpha = CGFloat(choiceAlpha)
        romanceBtn.alpha = CGFloat(choiceAlpha)
        mysteryBtn.alpha = CGFloat(choiceAlpha)
        thrillerBtn.alpha = CGFloat(choiceAlpha)
        
        // these six objects are also invisible when the page loads until a function makes them become visible
        chooseTemplateLabel.alpha = CGFloat(choiceAlpha)
        backToGenreBtn.alpha = CGFloat(choiceAlpha)
        advTemplate1Btn.alpha = CGFloat(choiceAlpha)
        advTemplate2Btn.alpha = CGFloat(choiceAlpha)
        rmcTemplate1Btn.alpha = CGFloat(choiceAlpha)
        rmcTemplate2Btn.alpha = CGFloat(choiceAlpha)
    }
    

    @IBAction func startBtn(_ sender: Any) {
        music.soundPlayer.play() //plays a sound from the Music Controller class when the button is tapped
        startScreenFadeOut()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.showGenreOptions()
        }
    }
    
    @IBAction func adventureBtn(_ sender: Any) { // when adventureBtn is clicked, displays template options
        hideGenreOptions()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.showTemplateOptions(genre: "adventure")
        }
    }
    
    @IBAction func romanceBtn(_ sender: Any) { // when romanceBtn is clicked, displays template options
        hideGenreOptions()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.showTemplateOptions(genre: "romance")
        }
    }
    
    @IBAction func backToGenres(_ sender: Any) { // navigate back to genre options
        hideTemplateOptions()
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.showGenreOptions()
        }
    }
    
    
    func startScreenFadeOut() { // a function that makes three start screen objects fade to invisible
        madLabel.fadeOut()
        libsLabel.fadeOut()
        startBtn.fadeOut()
    }
    
    func showGenreOptions() { // a function that makes the four objects that show the user genre options fade to visible
        chooseGenreLabel.fadeIn()
        adventureBtn.fadeIn()
        romanceBtn.fadeIn()
        mysteryBtn.fadeIn()
        thrillerBtn.fadeIn()
    }
    
    func hideGenreOptions() { // a function that makes the four objects that show the user genre options fade to invisible
        chooseGenreLabel.fadeOut()
        adventureBtn.fadeOut()
        romanceBtn.fadeOut()
        mysteryBtn.fadeOut()
        thrillerBtn.fadeOut()
    }
    
    func showTemplateOptions(genre: String) { // a function that makes the objects that show the user template options fade to visible
        chooseTemplateLabel.fadeIn()
        backToGenreBtn.fadeIn()
        if genre == "adventure" {
            advTemplate1Btn.fadeIn()
            advTemplate2Btn.fadeIn()
       }
        else if genre == "romance" {
            rmcTemplate1Btn.fadeIn()
            rmcTemplate2Btn.fadeIn()
        }
    }
    
    func hideTemplateOptions() { // makes the objects that show the user template options fade to invisible
        chooseTemplateLabel.fadeOut()
        backToGenreBtn.fadeOut()
        advTemplate1Btn.fadeOut()
        advTemplate2Btn.fadeOut()
        rmcTemplate1Btn.fadeOut()
        rmcTemplate2Btn.fadeOut()
    }
    
    
    var storyNum: Int = 1 // sets the story template option as the 1st template since mystery and thriller only have one template

    // changes story template number to 2 if user picks the 2nd template option for either romance or adventure
    @IBAction func chooseRmcTemplate2(_ sender: Any) {
        storyNum = 2
    }
    @IBAction func chooseAdvTemplate2(_ sender: Any) {
        storyNum = 2
    }
    
    
    let story = Stories() // lets View Controller access the Stories class through the variable story
    let inputScreen = InputScreen() // lets View Controller access the InputScreen class through the variable inputScreen
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { // code that will run and set values for properties in the destination class before the segue
        if let destination = segue.destination as? InputScreen { // checks to make sure that the destination of the segue is InputScreen because some of the properties mentioned would be nil in other classes
            
            if segue.identifier == "toAdventure" { // each segue from ViewController to a screen of InputScreen class was given an identity --> this checks identity (to avoid finding nil on a wrong page) and executes code accrodingly
                if storyNum == 1 { // checks which template user has chosen to pass the correct inputs
                    destination.story = story.adventureInput1 //passes a property from the Stories class to a variable called story in the InputScreen class
                }
                else {
                    destination.story = story.adventureInput2
                }
            }
            if segue.identifier == "toRomance" {
               if storyNum == 1 {
                    destination.story = story.romanceInput1
                }
                else {
                    destination.story = story.romanceInput2
                }
            }
            if segue.identifier == "toMystery" {
                destination.story = story.mysteryInput1
            }
            if segue.identifier == "toThriller" {
                destination.story = story.thrillerInput1
            }
            
            
            destination.segueIdentifier = segue.identifier ?? ""
            destination.storyNum = storyNum
            music.startMusicPlayer.setVolume(0, fadeDuration: 1) // causes the start page background music to fade out 
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.music.startMusicPlayer.stop() //background music stops
            }
        }
    }
    
}
