# Mad_Libs
An iOS mad-libs game where users can choose between multiple genres and story templates -- made using Swift 4 and Xcode 10

## Table of contents
* [Introduction](#introduction)
* [Technologies](#built-with)
* [Setup](#setup)
* [Gameplay](#gameplay)
* [Features](#features)
* [Acknowledgements](#acknowledgements)

## Introduction 
This project was my first dive into developing for iOS after learning Swift. As a first project, I thought it would be interesting to develop a game, and a mad-libs app seemed like a simple game to develop. Though a mad libs app could be as simple as text fields and string interpolation, I decided to take this project to the next level. I experimented with animations, segues, music, and text-to-speech. I also added a combination of features and functions that would minimize how specific a user needs to be when inputting their words while still maintaining the grammar of the story.

## Built With
* Swift 4.2.1
* Xcode 10.1


## Setup
Note: this project can only be accessed by users with Apple devices
* Download ZIP of repository and unzip 
* Install Xcode 10 or higher on your computer
* From the Mad Libs folder, open the file called Mad Libs.xcodeproj
* In upper left corner of Xcode, choose which device simulator to run project on, then press play button to build project
** If you have an iOS device, you may run the app on it by plugging it into your computer and choosing your device in the simulator menu
* Wait for simulator to load on your computer or open the Mad Libs app on your iOS device. Enjoy!

## Gameplay
In a mad libs app, the user is asked to input a series of different types of words that will then be inserted to a story template, resulting in a fun story. In my mad libs app, users can choose between different genres of story templates: adventure, romance, mystery, or thriller. The adventure and romance genres currently have two stories to choose from each, while the mystery and thriller genres have one each.

iPad Pro 12.9" demo:

![ipad pro demo](<Mad Libs demos>/<ipad demo.gif>)

[Full demo video](<Mad Libs demos>/<Mad Libs shortened.mp4>)

## Features
### Multi-Page App using Segues
Instead of having the game be on a single page with endless scrolling, I made use of segues, multiple ViewControllers, and segue identifiers to make sure the right information was being sent to the right screen. Each genre gets its own Input screen and story screen which have different themes and music.

### Gender Function
For stories with characters that the user will create, they can choose the character’s gender using a UISegmentedView. Whichever gender they choose will then influence the content of a dictionary that holds gender pronouns. In this way, all the users have to do is tap which gender they prefer a character to be and all the pronouns for that character that come up in the story will be adjusted accordingly.

### Smart Input Screen
Since some genres have multiple templates, the number of words that a user needs to input is different depending on the story. I made use of alpha values and for-loops to show as many text-fields are necessary for the story, depending on which template and genre the user picks. Additionally, I created functions and made use of enabled/disabled buttons to check if the user has inputted all words before moving onto the completed story page. 

### Text-to-Speech
On the screen where the completed story is displayed, there is a button at the bottom of the screen that users can tap to read their story out loud. I added this feature in hopes of making the app more accessible-friendly. Tapping the button once will start the text to speech engine, tapping it again will stop the text-to-speech, and tapping once again will start the reading of the story over from the beginning and so on.

## Author
Code: Kamsi Oramasionwu
Mad-libs templates: Kamsi Oramasionwu

## Acknowledgements
The songs used throughout the app--on the homepage and the themed input pages--do not belong to me. I downloaded them from the [Bensound](https://bensound.com) royalty free music library.
