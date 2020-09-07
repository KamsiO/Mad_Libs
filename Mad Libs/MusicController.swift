//
//  MusicController.swift
//  Mad Libs
//
//  Created by Kamsi Oramasionwu on 2/21/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation
import AVFoundation

class MusicController {
    // Variables that have access to the properties of AVAudioPlayer which is a class that can play and control audio
    var soundPlayer = AVAudioPlayer()
    var startMusicPlayer = AVAudioPlayer()
    var adventureMusicPlayer = AVAudioPlayer()
    var romanceMusicPlayer = AVAudioPlayer()
    var mysteryMusicPlayer = AVAudioPlayer()
    var thrillerMusicPlayer = AVAudioPlayer()
    
    let voiceSynthesizer = AVSpeechSynthesizer() //declare a variable that has access to the properties of AVSpeechSynthesizer which is a class that has text-to-speech functionality
    
    
    func loadStartSound() { //https://codewithchris.com/avaudioplayer-tutorial/
        let startSound = Bundle.main.path(forResource: "startSound.mp3", ofType: nil)! // links startSound to a sound file
        
        do { // will let soundPlayer access a sound file if it can find the file otherwise a simple error message will be printed --> keeps the code from crashing completely
            soundPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: startSound))
        }
        catch {
            print("Could not load sound file")
        }

    }
    
    // Functions that initialize the music used throughout the app
    func startMusic() { //https://www.youtube.com/watch?v=dqad3XuMwHI
        let mainMenuSong = Bundle.main.path(forResource: "bensound-funnysong.mp3", ofType: nil)!
        
        do {
            startMusicPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: mainMenuSong))
            startMusicPlayer.volume = 0.3 // sets the volume that the song will play at
            startMusicPlayer.numberOfLoops = -1 // will make the song loop infinitely
            startMusicPlayer.prepareToPlay() //loads the sound file and all its presets so that it can start playing fatser
            startMusicPlayer.play() //plays the song
        }
        catch {
            print("Could not load sound file")
        }
    }
    
    func adventureMusic() {
        let adventureSong = Bundle.main.path(forResource: "bensound-littleplanet.mp3", ofType: nil)!
        
        do {
            adventureMusicPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: adventureSong))
            adventureMusicPlayer.volume = 0.3
            adventureMusicPlayer.numberOfLoops = 0
            adventureMusicPlayer.prepareToPlay()
            adventureMusicPlayer.play()
        }
        catch {
            print("Could not load sound file")
        }
    }
    
    func romanceMusic() {
        let romanceSong = Bundle.main.path(forResource: "bensound-love.mp3", ofType: nil)!
        
        do {
            romanceMusicPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: romanceSong))
            romanceMusicPlayer.volume = 0.3
            romanceMusicPlayer.numberOfLoops = 0
            romanceMusicPlayer.prepareToPlay()
            romanceMusicPlayer.play()
        }
        catch {
            print("Could not load sound file")
        }
    }
    
    func mysteryMusic() {
        let mysterySong = Bundle.main.path(forResource: "bensound-enigmatic.mp3", ofType: nil)!
        
        do {
            mysteryMusicPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: mysterySong))
            mysteryMusicPlayer.volume = 0.3
            mysteryMusicPlayer.numberOfLoops = 0
            mysteryMusicPlayer.prepareToPlay()
            mysteryMusicPlayer.play()
        }
        catch {
            print("Could not load sound file")
        }
    }
    
    func thrillerMusic() {
        let thrillerSong = Bundle.main.path(forResource: "bensound-ofeliasdream.mp3", ofType: nil)!
        
        do {
            thrillerMusicPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: thrillerSong))
            thrillerMusicPlayer.volume = 0.5
            thrillerMusicPlayer.numberOfLoops = 0
            thrillerMusicPlayer.prepareToPlay()
            thrillerMusicPlayer.play()
        }
        catch {
            print("Could not load sound file")
        }
    }
    
    
    
    // Text-to-Speech
    var speechArray = [String]() //an array that will hold all the strings that the text-to-speech can read
    
    func speak(txtnum: Int) {
        let speech = AVSpeechUtterance(string: speechArray[txtnum]) // AVSpeechUtterance is a class that controls the speech of the text-to-speech. It takes in the speech array which it can then read from
        speech.voice = AVSpeechSynthesisVoice(identifier: "Alex") //setting the text-to-speech voice
        speech.rate = 0.45 //controls the rate at which AVSpeechUtterance speaks the string
        speech.volume = 10
        
        voiceSynthesizer.speak(speech) //makes the text-to-speech start speaking
    }
    
    
}
