//
//  Stories.swift
//  Mad Libs
//
//  Created by Kamsi Oramasionwu on 2/13/19.
//  Copyright © 2019 student. All rights reserved.
//

import Foundation
import UIKit

class Stories {
    
    // tuples that hold the pronouns for gender that user chooses
    var determinedGender1 = (subjective: "", objective: "", possesive: "")
    var determinedGender2 = (subjective: "", objective: "", possesive: "")

//ADVENTURE
    func adventureStory1() -> String { // has a multiline string that accesses values from a dictionary through string interpolation and returns the string. I use a nil coalescing operator for each string interpolation so that if the user is somehow able to access StoryScreen w/o entering all the words, the app does not crash
        let adventureStory1 = """
        There once was a young adventurer. The adventurer's name was \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? ""). \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") had a \(adventureText1["Thing 1:"]?.lowercased() ?? "") that \(determinedGender1.subjective) was dearly attatched to and took everywhere; \(determinedGender1.subjective) showered with the \(adventureText1["Thing 1:"]?.lowercased() ?? ""), went to bed with the \(adventureText1["Thing 1:"]?.lowercased() ?? ""), and most importantly, \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") went into battle with the \(adventureText1["Thing 1:"]?.lowercased() ?? "").
        One \(adventureText1["Adjective 1:"]?.lowercased() ?? "") morning, \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") got word from \(adventureText1["Person 1:"]?.capitalizeFirstLetter() ?? "") that the \(adventureText1["Adjective 2:"]?.lowercased() ?? "") and evil \(adventureText1["Person OR Thing:"]?.capitalizeFirstLetter() ?? "") had risen from its cave and was destroying \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "")'s beautiful home, \(adventureText1["Name of Place:"]?.capitalizeFirstLetter() ?? "")! It was up to \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") and \(determinedGender1.possesive) loyal \(adventureText1["Thing 1:"]?.lowercased() ?? "") to stop the \(adventureText1["Adjective 2:"]?.lowercased() ?? "") and evil \(adventureText1["Person OR Thing:"]?.capitalizeFirstLetter() ?? ""). Luckily, \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") had spent years training with \(adventureText1["Person 2:"]?.capitalizeFirstLetter() ?? "")--\(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") could definitely handle \(determinedGender1.possesive) own in a fight. Now, \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") just needed to pack. \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") chose \(determinedGender1.possesive) \(adventureText1["Thing 2:"]?.lowercased() ?? "") as a weapon and filled \(determinedGender1.possesive) battle pack with \(adventureText1["Food (plural):"]?.lowercased() ?? "") for when \(determinedGender1.subjective) got hungry. \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") was ready. "\(adventureText1["Phrase 1:"]?.capitalizeFirstLetter() ?? "")" \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") called to \(determinedGender1.possesive) \(adventureText1["Thing 1:"]?.lowercased() ?? ""), and onto \(adventureText1["Name of Place:"]?.capitalizeFirstLetter() ?? "") they went.
        It took \(adventureText1["Number 1:"] ?? "") days for \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") and the loyal \(adventureText1["Thing 1:"]?.lowercased() ?? "") to get to the cave, but when they did, the \(adventureText1["Adjective 2:"]?.lowercased() ?? "") and evil \(adventureText1["Person OR Thing:"]?.capitalizeFirstLetter() ?? "") was nowhere to be found! \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") slowly drew \(determinedGender1.possesive) \(adventureText1["Thing 2:"]?.lowercased() ?? "") and did not let \(determinedGender1.possesive) guard down as \(determinedGender1.subjective) started to circle the cave.
        Suddenly, the \(adventureText1["Adjective 2:"]?.lowercased() ?? "") and evil \(adventureText1["Person OR Thing:"]?.capitalizeFirstLetter() ?? "") emerged from behind \(adventureText1["Something in Nature:"]?.lowercased().aOrAn() ?? "") \(adventureText1["Something in Nature:"]?.lowercased() ?? "")! \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") dropped \(determinedGender1.possesive) pack of \(adventureText1["Food (plural):"]?.lowercased() ?? "") in surprise, but immediately got into a battle stance with \(determinedGender1.possesive) \(adventureText1["Thing 1:"]?.lowercased() ?? "") by \(determinedGender1.possesive) side. "\(adventureText1["Phrase 2:"]?.capitalizeFirstLetter() ?? "")" \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") shouted at the \(adventureText1["Adjective 2:"]?.lowercased() ?? "") and evil \(adventureText1["Person OR Thing:"]?.capitalizeFirstLetter() ?? "") before charging. \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") jumped and striked the \(adventureText1["Adjective 2:"]?.lowercased() ?? "") and evil \(adventureText1["Person OR Thing:"]?.capitalizeFirstLetter() ?? "") \(adventureText1["Number 2:"] ?? "") times with \(determinedGender1.possesive) \(adventureText1["Thing 2:"]?.lowercased() ?? "").
        There was a moment of silence, and then the \(adventureText1["Adjective 2:"]?.lowercased() ?? "") and evil \(adventureText1["Person OR Thing:"]?.capitalizeFirstLetter() ?? "") collapsed, defeated. The people of \(adventureText1["Name of Place:"]?.capitalizeFirstLetter() ?? "") cheered and asked \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") to be their leader, but \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") declined. \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") saved \(adventureText1["Name of Place:"]?.capitalizeFirstLetter() ?? "") not for glory, but out of service. \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") preferred the simple life anyway. Together, \(adventureText1["Name:"]?.capitalizeFirstLetter() ?? "") and \(determinedGender1.possesive) \(adventureText1["Thing 1:"]?.lowercased() ?? "") walked into the \(adventureText1["Adjective 3:"]?.lowercased() ?? "") sunset.
    """
        
        return adventureStory1
    }
    
    func adventureStory2() -> String {
        let adventureStory2 = """
    "Being a word-class beast charmer is not an easy job. Just ask \(adventureText2["Type of Flower:"]?.capitalizeFirstLetter() ?? "") Thomas. Who is \(adventureText2["Type of Flower:"]?.capitalizeFirstLetter() ?? "") Thomas? Only the best ever beast slayer in all of history! He’s \(adventureText2["Verb (past tense):"]?.lowercased() ?? "") with thousands of \(adventureText2["Animal (plural):"]?.lowercased() ?? "")--in fact, some even call him \(adventureText2["Type of Flower:"]?.capitalizeFirstLetter() ?? "") ‘\(adventureText2["Animal (plural):"]?.capitalizeFirstLetter() ?? "")' Thomas. Still not ringing a bell? That’s alright. You must be new to \(adventureText2["Something in Nature:"]?.capitalizeFirstLetter() ?? "")ville. It is pretty small. Not even on the maps. Well, my name is \(adventureText2["Plant:"]?.capitalizeFirstLetter() ?? "") Vasquez. Naming your child after a type of plant is very common here in \(adventureText2["Something in Nature:"]?.capitalizeFirstLetter() ?? "")ville. Wards away the \(adventureText2["Mythical Creature (plural):"]?.lowercased() ?? ""). What’s your name?"
    "\(adventureText2["Your Name:"]?.capitalizeFirstLetter() ?? "")."
    "\(adventureText2["Your Name:"]?.capitalizeFirstLetter() ?? "")!? Who names their child that? But who am I to judge. Welcome to \(adventureText2["Something in Nature:"]?.capitalizeFirstLetter() ?? "")ville."
    "Thanks," I respond dryly. ‘Could you tell me more about this \(adventureText2["Type of Flower:"]?.capitalizeFirstLetter() ?? "") Thomas guy?"
    "Sure thing! \(adventureText2["Type of Flower:"]?.capitalizeFirstLetter() ?? "") Thomas was born back when the world was still \(adventureText2["Adjective 1:"]?.lowercased() ?? "")"
    "The \(adventureText2["Adjective 1:"]?.capitalizeFirstLetter() ?? "")-Ages? Well \(adventureText2["Type of Flower:"]?.capitalizeFirstLetter() ?? "") Thomas would have to be at least \(adventureText2["Number:"] ?? "") years old, give or take a century," I exclaimed.
    "He sure is. \(adventureText2["Number:"] ?? "") years old to be exact. It’s given him plenty of time to \(adventureText2["Verb 2:"]?.lowercased() ?? "") with the beasts! This is how we teach the wee ones about \(adventureText2["Type of Flower:"]?.capitalizeFirstLetter() ?? "") Thomas:
    Once upon a time, there was a young boy named \(adventureText2["Type of Flower:"]?.capitalizeFirstLetter() ?? "") Thomas. Being named \(adventureText2["Type of Flower:"]?.capitalizeFirstLetter() ?? "") back in those days was considered mighty odd, but his mam thought he was a special boy, and special he sure was. At age \(adventureText2["Age 1:"] ?? "") he could \(adventureText2["Verb 3:"]?.lowercased() ?? "") and at age \(adventureText2["Age 2:"] ?? "") he was able lift \(adventureText2["Object (plural):"]?.lowercased() ?? ""). Not an easy feat, might I add. It was no surprise when his mam discovered him charming a \(adventureText2["Mythical Creature:"]?.lowercased() ?? ""). From then on, everyone looked up to \(adventureText2["Type of Flower:"]?.capitalizeFirstLetter() ?? "") Thomas. He started off as a hero in his home, \(adventureText2["Fruit:"]?.capitalizeFirstLetter() ?? "")-Vine Square. From there, he grew famous and grew into his name, \(adventureText2["Type of Flower:"]?.capitalizeFirstLetter() ?? "") ‘\(adventureText2["Animal (plural):"]?.capitalizeFirstLetter() ?? "")’ Thomas, Protector of All. And that’s why everyone in \(adventureText2["Something in Nature:"]?.capitalizeFirstLetter() ?? "")ville names their children after plants, in hopes that that small connection to \(adventureText2["Type of Flower:"]?.capitalizeFirstLetter() ?? "") Thomas protects them."
    "From the \(adventureText2["Mythical Creature (plural):"]?.lowercased() ?? "")?"
    "Yes, from the \(adventureText2["Mythical Creature (plural):"]?.lowercased() ?? ""). We get a lot of them in these parts."
"""
        
        return adventureStory2
    }
    
    // arrays of strings that will fill the labels on InputScreen
    let adventureInput1 : [String] = ["Name:", "Thing 1:", "Adjective 1:", "Person 1:", "Adjective 2:", "Person OR Thing:", "Name of Place:", "Person 2:", "Thing 2:", "Food (plural):", "Phrase 1:", "Number 1:", "Something in Nature:", "Phrase 2:", "Number 2:", "Adjective 3:"]
    let adventureInput2 : [String] = ["Type of Flower:", "Verb (past tense):", "Animal (plural):", "Something in Nature:", "Plant:", "Mythical Creature (plural):", "Your Name:", "Adjective 1:", "Number:", "Verb 2:", "Adjective 2:", "Age 1:", "Age 2:", "Verb 3:", "Object (plural):", "Mythical Creature:", "Fruit:"]
    
    // the dictionaries that the label text and text from text fields are added to and which is accesed by the story functions to complete the stories
    var adventureText1 : [String : String] = [:]
    var adventureText2 : [String : String] = [:]

    
//ROMANCE
    func romanceStory1() -> String {
        let romanceStory1 = """
        "I’ll pick you up at \(romanceText1["Time:"] ?? "")". That’s what \(romanceText1["Name 1:"]?.capitalizeFirstLetter() ?? "")’s last text to \(romanceText1["Name 2:"]?.capitalizeFirstLetter() ?? "") had said and now \(determinedGender2.possesive) stomach was filled with \(romanceText1["Insect OR Animal (plural):"]?.lowercased() ?? ""). It was quite a vague text now that \(romanceText1["Name 2:"]?.capitalizeFirstLetter() ?? "") thought about it. \(romanceText1["Name 1:"]?.capitalizeFirstLetter() ?? "") hadn’t even mentioned where \(determinedGender1.subjective) planned to take them. \(romanceText1["Name 2:"]?.capitalizeFirstLetter() ?? "") hoped it was to \(romanceText1["Name of Restaurant:"]?.capitalizeFirstLetter() ?? "")--the food there was always amazing.
        \(romanceText1["Name 2:"]?.capitalizeFirstLetter() ?? "") made \(determinedGender2.possesive) way up to \(determinedGender2.possesive) room to dress up. \(romanceText1["Name 2:"]?.capitalizeFirstLetter() ?? "")’s goal was to look \(romanceText1["Adjective 1:"] ?? ""). It took exactly \(romanceText1["Number 1:"] ?? "") \(addS(romanceText1["Number 1:"] ?? "", string: "minute")), but \(romanceText1["Name 2:"]?.capitalizeFirstLetter() ?? "") was finally able to settle on an outfit that included \(aOrAn(romanceText1["Article of Clothing:"] ?? "")) \(romanceText1["Article of Clothing:"]?.lowercased() ?? "").
        Just then, the doorbell rang. \(romanceText1["Name 1:"]?.capitalizeFirstLetter() ?? "") was here! \(romanceText1["Name 2:"]?.capitalizeFirstLetter() ?? "") ran to the door and threw it open. \(romanceText1["Name 2:"]?.capitalizeFirstLetter() ?? "") was blinded by \(romanceText1["Name 1:"]?.capitalizeFirstLetter() ?? "")’s \(romanceText1["Adverb (ending in ly):"]?.lowercased() ?? "") \(romanceText1["Adjective 2:"]?.lowercased() ?? "") looks. "\(romanceText1["Phrase 1:"]?.capitalizeFirstLetter() ?? "")" \(romanceText1["Name 1:"]?.capitalizeFirstLetter() ?? "") said, and \(romanceText1["Name 2:"]?.capitalizeFirstLetter() ?? "") nearly fainted. During the car ride, \(romanceText1["Title of Song:"]?.capitalizeFirstLetter() ?? "") was playing. \(romanceText1["Name 1:"]?.capitalizeFirstLetter() ?? "") and \(romanceText1["Name 2:"]?.capitalizeFirstLetter() ?? "") sang along in perfect harmony.
        When they got to \(romanceText1["Name of Restaurant:"]?.capitalizeFirstLetter() ?? ""), it was crowded and smelled like \(romanceText1["Plant:"]?.lowercased() ?? ""). \(romanceText1["Name 1:"]?.capitalizeFirstLetter() ?? "") offered to buy \(romanceText1["Name 2:"]?.capitalizeFirstLetter() ?? "") anything on the menu, so \(romanceText1["Name 2:"]?.capitalizeFirstLetter() ?? "") ordered \(romanceText1["Number 2:"]?.capitalizeFirstLetter() ?? "") \(romanceText1["Food (plural):"]?.lowercased() ?? ""). They were delicious!
        Back inside \(romanceText1["Name 1:"]?.capitalizeFirstLetter() ?? "")’s car, \(romanceText1["Name 1:"]?.capitalizeFirstLetter() ?? "") turned to face \(romanceText1["Name 2:"]?.capitalizeFirstLetter() ?? ""). "\(romanceText1["Phrase 2:"]?.capitalizeFirstLetter() ?? "")" \(determinedGender1.subjective) said to \(determinedGender2.objective) before leaning over to kiss \(determinedGender2.objective). How \(romanceText1["Name 1:"]?.capitalizeFirstLetter() ?? "") managed to always say the right thing at the exact right time was beyond \(romanceText1["Name 2:"]?.capitalizeFirstLetter() ?? "")'s understanding.
        Overall, the first date was a success! \(romanceText1["Name 2:"]?.capitalizeFirstLetter() ?? "") suggested that for the next date, they should go \(romanceText1["Activity (ending in -ing):"]?.lowercased() ?? ""). \(romanceText1["Name 1:"]?.capitalizeFirstLetter() ?? "") \(romanceText1["Verb (past tense):"]?.lowercased() ?? ""). It was a date!
    """
        
        return romanceStory1
    }
    
    func romanceStory2() -> String {
        let romanceStory2 = """
        “\(romanceText2["Name 1:"]?.capitalizeFirstLetter() ?? ""), I’m breaking up with you.”
        “\(romanceText2["Name 2:"]?.capitalizeFirstLetter() ?? ""), please! Just wait! Think about all the good times we’ve had like when we went \(romanceText2["Verb (ending with -ing) 1:"]?.lowercased() ?? "") with the \(romanceText2["Animal (plural):"]?.lowercased() ?? ""). And, and that time when we, uh, tried the new \(romanceText2["Herb:"]?.lowercased() ?? "") ice cream,” \(romanceText2["Name 1:"]?.capitalizeFirstLetter() ?? "") said.
        \(romanceText2["Name 2:"]?.capitalizeFirstLetter() ?? "") smiled at that. It was a good memory. \(romanceText2["Name 1:"]?.capitalizeFirstLetter() ?? "") and \(romanceText2["Name 2:"]?.capitalizeFirstLetter() ?? "") had walked \(romanceText2["Number 1:"]?.lowercased() ?? "") steps to \(romanceText2["Adjective 1:"]?.capitalizeFirstLetter() ?? "") Parlor to try their new flavor. \(romanceText2["Adjective 1:"]?.capitalizeFirstLetter() ?? "") Parlor was crowded and loud, and honestly, the \(romanceText2["Herb:"]?.lowercased() ?? "") ice cream was pretty gross, but it was the first time they had said "\(romanceText2["Phrase:"]?.lowercased() ?? "")" to each other, their version of I Love You. After that, they went to \(romanceText2["Object:"]?.capitalizeFirstLetter() ?? "") Movie House and watched \(romanceText2["Movie Title:"]?.capitalizeFirstLetter() ?? ""), \(romanceText2["Verb (ending with -ing) 2:"]?.lowercased() ?? "") the whole time. It was proof that \(romanceText2["Name 1:"]?.capitalizeFirstLetter() ?? "") and \(romanceText2["Name 2:"]?.capitalizeFirstLetter() ?? "") were good together.
        “It was a good day,” \(romanceText2["Name 2:"]?.capitalizeFirstLetter() ?? "") admitted, “but it was also a long time ago. Back when you were \(romanceText2["Adjective 2:"]?.lowercased() ?? "") and I was \(romanceText2["Adjective 3:"]?.lowercased() ?? ""). That’s not who we are anymore.”
        “But it’s not necessarily me being \(romanceText2["Adjective 2:"]?.lowercased() ?? "") and you being \(romanceText2["Adjective 3:"]?.lowercased() ?? "") that brought us together. \(romanceText2["Name 2:"]?.capitalizeFirstLetter() ?? ""), we were meant to be together!!” \(romanceText2["Name 1:"]?.capitalizeFirstLetter() ?? "") pleaded. \(determinedGender1.subjective.capitalizeFirstLetter()) grabbed \(romanceText2["Name 2:"]?.capitalizeFirstLetter() ?? "")’s \(romanceText2["Body Part:"]?.lowercased() ?? ""), hoping that the physical contact would get through to \(determinedGender2.objective).
        \(romanceText2["Name 2:"]?.capitalizeFirstLetter() ?? "") moved slightly so that \(romanceText2["Name 1:"]?.capitalizeFirstLetter() ?? "") was no longer touching \(determinedGender2.possesive) \(romanceText2["Body Part:"]?.lowercased() ?? ""). “That’s enough!” \(romanceText2["Name 2:"]?.capitalizeFirstLetter() ?? "") said. “You need to accept that our differences have made us grow \(romanceText2["Number 2:"]?.lowercased() ?? "") feet apart. That’s a lot! I’m sorry, but I can’t do this anymore.” With that, \(romanceText2["Name 2:"]?.capitalizeFirstLetter() ?? "") turned and walked into the \(romanceText2["Color:"]?.lowercased() ?? "") sunset. It was the last time \(romanceText2["Name 1:"]?.capitalizeFirstLetter() ?? "") ever saw \(determinedGender2.objective).
    """
        
        return romanceStory2
    }
    
    let romanceInput1 : [String] = ["Name 1:", "Name 2:", "Time:", "Insect OR Animal (plural):", "Name of Restaurant:", "Adjective 1:", "Number 1:", "Article of Clothing:", "Adverb (ending in ly):", "Adjective 2:", "Phrase 1:", "Title of Song:", "Plant:", "Number 2:", "Food (plural):", "Phrase 2:", "Activity (ending in -ing):", "Verb (past tense):"]
   
    let romanceInput2 : [String] = ["Name 1:", "Name 2:", "Verb (ending with -ing) 1:", "Animal (plural):", "Herb:", "Number 1:", "Adjective 1:", "Object:", "Phrase:", "Movie Title:", "Verb (ending with -ing) 2:", "Adjective 2:", "Adjective 3:", "Body Part:", "Number 2:", "Color:"]
    
    var romanceText1 : [String : String] = [:]
    var romanceText2 : [String : String] = [:]
    
    
//MYSTERY
    func mysteryStory1() -> String {
        let mysteryStory1 = """
        THE \(mysteryText1["Thing 3:"]?.uppercased() ?? "")IAN WEEKLY PAPER
        \(mysteryText1["Day of the Week:"]?.uppercased() ?? ""): What happened to \(mysteryText1["First Name:"]?.capitalizeFirstLetter() ?? "") \(mysteryText1["Fruit:"]?.capitalizeFirstLetter() ?? "")? That was the question on everyone’s mind. It had been \(mysteryText1["Number 1:"] ?? "") days since the last person had seen \(determinedGender1.objective) at \(mysteryText1["Thing 1:"]?.capitalizeFirstLetter() ?? "") Academy, the \(mysteryText1["Ranking 1:"] ?? "") ranked school in America. \(mysteryText1["First Name:"]?.capitalizeFirstLetter() ?? "") \(mysteryText1["Fruit:"]?.capitalizeFirstLetter() ?? "") was a sweet person; everybody knew that. Yet a recent investigation by a detective from the \(mysteryText1["Thing 2:"]?.capitalizeFirstLetter() ?? "") Agency dug up some things from \(mysteryText1["First Name:"]?.capitalizeFirstLetter() ?? "") \(mysteryText1["Fruit:"]?.capitalizeFirstLetter() ?? "")’s past. Shady things.
        "Apparently, \(mysteryText1["First Name:"]?.capitalizeFirstLetter() ?? "") \(mysteryText1["Fruit:"]?.capitalizeFirstLetter() ?? "") used to \(mysteryText1["Verb:"]?.lowercased() ?? "") with \(mysteryText1["Famous Person/People:"]?.capitalizeFirstLetter() ?? "")."
        "I heard that \(mysteryText1["First Name:"]?.capitalizeFirstLetter() ?? "") \(mysteryText1["Fruit:"]?.capitalizeFirstLetter() ?? "") spent \(mysteryText1["Number 2:"] ?? "") \(addS(mysteryText1["Number 2:"] ?? "", string: "month")) in a cave in \(mysteryText1["Country:"] ?? ""), but also with \(mysteryText1["Famous Person/People:"]?.capitalizeFirstLetter() ?? "")."
        Everyone seemed to agree that \(mysteryText1["First Name:"]?.capitalizeFirstLetter() ?? "") \(mysteryText1["Fruit:"]?.capitalizeFirstLetter() ?? "") at least knew \(mysteryText1["Famous Person/People:"]?.capitalizeFirstLetter() ?? ""). That’s pretty awesome actually. But that didn’t explain where \(mysteryText1["First Name:"]?.capitalizeFirstLetter() ?? "") \(mysteryText1["Fruit:"]?.capitalizeFirstLetter() ?? "") had gone and why \(determinedGender1.subjective) hadn’t checked in with \(determinedGender1.possesive) mom. The \(mysteryText1["Thing 1:"]?.capitalizeFirstLetter() ?? "") Academy newspaper, the \(mysteryText1["Thing 1:"]?.capitalizeFirstLetter() ?? "")ian, was able to get an exclusive interview with \(mysteryText1["First Name:"]?.capitalizeFirstLetter() ?? "") \(mysteryText1["Fruit:"]?.capitalizeFirstLetter() ?? "")’s mom.
        "So, Mrs. \(mysteryText1["Fruit:"]?.capitalizeFirstLetter() ?? ""), do you know where \(mysteryText1["First Name:"]?.capitalizeFirstLetter() ?? "") is?"
        "If I knew, \(mysteryText1["First Name:"]?.capitalizeFirstLetter() ?? "") wouldn’t be missing…"
        "Oh. Right."
        It was a very short interview. Clearly, the \(mysteryText1["Thing 1:"]?.capitalizeFirstLetter() ?? "")ian needs more quality control...
        This just in, an anonymous email was sent to the \(mysteryText1["Thing 1:"]?.capitalizeFirstLetter() ?? "")ian email account: "I had to \(mysteryText1["Verb:"] ?? ""). It was the only way." People struggle to figure out who the email could possibly be from.
        "My guess, it was \(mysteryText1["Famous Person/People:"]?.capitalizeFirstLetter() ?? "")." Many people again agree that \(mysteryText1["Famous Person/People:"]?.capitalizeFirstLetter() ?? "") is involved. We at the \(mysteryText1["Thing 3:"]?.capitalizeFirstLetter() ?? "")ian are genuinely confused on how no one at \(mysteryText1["Thing 1:"]?.capitalizeFirstLetter() ?? "") Academy has pieced together that the email was probably from \(mysteryText1["First Name:"]?.capitalizeFirstLetter() ?? "") \(mysteryText1["Fruit:"]?.capitalizeFirstLetter() ?? ""). Like really? That’s why  \(mysteryText1["Thing 3:"]?.capitalizeFirstLetter() ?? "") Academy is better. WE’RE BETTER. This story is about how \(mysteryText1["Thing 3:"]?.capitalizeFirstLetter() ?? "") Academy, the \(mysteryText1["Ranking 2:"] ?? "") ranked school in America, is BETTER than \(mysteryText1["Thing 1:"]?.capitalizeFirstLetter() ?? "") Academy! You wanna know what happened to \(mysteryText1["First Name:"]?.capitalizeFirstLetter() ?? "") \(mysteryText1["Fruit:"]?.capitalizeFirstLetter() ?? "")? \(determinedGender1.subjective.capitalizeFirstLetter()) transferred HERE! WE WIN!
        - \(mysteryText1["Date:"] ?? "")
    """
        
        return mysteryStory1
    }
    
//    func mysteryStory2() -> String {
//        let mysteryStory2 = ""
//
//        return mysteryStory2
//    }
    
    let mysteryInput1 : [String] = ["First Name:", "Day of the Week:", "Fruit:", "Number 1:", "Thing 1:", "Ranking 1:", "Thing 2:", "Verb:", "Famous Person/People:", "Number 2:", "Country:", "Number 3:", "Thing 3:", "Ranking 2:", "Date:"]
    
//    let mysteryInput2 : [String] = ["","","","","","","","","","","","","","","","","","","",""]
    
    var mysteryText1 : [String : String] = [:]
//    var mysteryText2 : [String : String] = [:]


//THRILLER
    func thrillerStory1() -> String {
        let thrillerStory1 = """
        It was dark. So, so dark. \(thrillerText1["Name 1:"]?.capitalizeFirstLetter() ?? "") regretted \(thrillerText1["Verb (ending in -ing):"]?.lowercased() ?? ""); \(thrillerText1["Verb (ending in -ing):"]?.lowercased() ?? "") with \(determinedGender2.objective). That’s what got \(determinedGender1.objective) into this mess in the first place. \(thrillerText1["Name 1:"]?.capitalizeFirstLetter() ?? "") should have listened to all the warnings about \(determinedGender2.objective) but instead, \(determinedGender1.subjective) went to see \(determinedGender2.objective). At \(thrillerText1["Age:"] ?? "") years old and a high school student at \(thrillerText1["Thing:"]?.capitalizeFirstLetter() ?? "") Academy, \(thrillerText1["Name 1:"]?.capitalizeFirstLetter() ?? "") thought \(determinedGender1.subjective) could handle it all.
        A loud noise brought \(thrillerText1["Name 1:"]?.capitalizeFirstLetter() ?? "") back to the present. \(determinedGender2.subjective.capitalizeFirstLetter()) must have found \(determinedGender1.objective). Crawling under the nearest \(thrillerText1["Object 1:"]?.lowercased() ?? ""), \(thrillerText1["Name 1:"]?.capitalizeFirstLetter() ?? "") checked \(determinedGender1.possesive) phone. Still no signal. It really seemed like \(thrillerText1["Name 1:"]?.capitalizeFirstLetter() ?? "") was on \(determinedGender1.possesive) own for this. "\(thrillerText1["Phrase:"]?.capitalizeFirstLetter() ?? "")," \(determinedGender2.subjective) whispered in a sing song voice. It sent shivers down \(thrillerText1["Name 1:"]?.capitalizeFirstLetter() ?? "")’s back. Why couldn’t \(determinedGender2.subjective) just leave \(thrillerText1["Name 1:"]?.capitalizeFirstLetter() ?? "") alone? Now probably wasn’t the best time to think about it, but \(thrillerText1["Name 1:"]?.capitalizeFirstLetter() ?? "") couldn’t help but remember the weird comment that \(determinedGender2.subjective) had left on \(thrillerText1["Thing:"]?.capitalizeFirstLetter() ?? "") Academy's gossip page. \(determinedGender1.subjective.capitalizeFirstLetter()) could still remember it clearly: "If I \(thrillerText1["Verb:"]?.lowercased() ?? ""), I am \(thrillerText1["Adjective 1:"]?.lowercased() ?? ""), but \(thrillerText1["Adjective 2:"]?.lowercased() ?? "") \(thrillerText1["Article of Clothing (plural):"]?.lowercased() ?? "") always make me \(thrillerText1["Adjective 3:"]?.lowercased() ?? "")--YOU HAVE BEEN WARNED". While everyone else saw warning signs, \(thrillerText1["Name 1:"]?.capitalizeFirstLetter() ?? "") was intrigued. Did \(thrillerText1["Adjective 2:"]?.lowercased() ?? "") \(thrillerText1["Article of Clothing (plural):"]?.lowercased() ?? "") really make \(determinedGender2.objective) \(thrillerText1["Adjective 3:"]?.lowercased() ?? "")?
        Suddenly, \(determinedGender2.subjective) \(wasOrWere(previousWord: determinedGender2.subjective)) in front of \(thrillerText1["Name 1:"]?.capitalizeFirstLetter() ?? ""), holding \(thrillerText1["Object 2:"]?.lowercased().aOrAn() ?? "") \(thrillerText1["Object 2:"]?.lowercased() ?? "") that looked deadly. \(thrillerText1["Name 1:"]?.capitalizeFirstLetter() ?? "") threw \(determinedGender1.possesive) phone at \(determinedGender2.objective) and made it \(thrillerText1["Number:"] ?? "") steps before \(determinedGender2.subjective) grabbed \(determinedGender1.possesive) ankle. \(thrillerText1["Name 1:"]?.capitalizeFirstLetter() ?? "") went down hard and bruised \(determinedGender1.possesive) \(thrillerText1["Body Part:"]?.lowercased() ?? ""). Chances of escape just plummeted. \(thrillerText1["Name 1:"]?.capitalizeFirstLetter() ?? "") looked into \(determinedGender2.possesive) eyes. "Why are you doing this?" \(determinedGender1.subjective) sobbed. "\(thrillerText1["Name 1:"]?.capitalizeFirstLetter() ?? ""), you asked me to go \(thrillerText1["Verb (ending in -ing):"]?.lowercased() ?? "") with you which was sweet," \(determinedGender2.subjective) said, \(determinedGender2.possesive) voice deadly calm, "but you learned too much. You found out my real name is \(thrillerText1["Name 2:"]?.capitalizeFirstLetter() ?? ""). Anyone who knows that can’t live. I’m sorry."
    """
        
        return thrillerStory1
    }
    
//    func thrillerStory2() -> String {
//        let thrillerStory2 = ""
//
//        return thrillerStory2
//    }
    
    let thrillerInput1 : [String] = ["Name 1:", "Name 2:", "Age:", "Verb (ending in -ing):", "Thing:", "Object 1:", "Object 2:", "Phrase:", "Verb:", "Adjective 1:", "Adjective 2:", "Adjective 3:", "Article of Clothing (plural):", "Number:", "Body Part:"]
   
//    let thrillerInput2 : [String] = ["","","","","","","","","","","","","","","","","","","",""]
    
    var thrillerText1 : [String : String] = [:]
//    var thrillerText2 : [String : String] = [:]
    
}


// functions to improve grammar
func wasOrWere(previousWord: String) -> String { // returns "was" or "were" depending on the argument string
    if previousWord == "they" {
        return "were"
    }
    else {
        return "was"
    }
}

func aOrAn(_ string: String) -> String { // determines appropriate indefinite article based on characters of argument string
    let prefix = string.prefix(1)
    if prefix == "a" || prefix == "e" || prefix == "i" || prefix == "o" || prefix == "u" {
        return "an"
    }
    else if string.last == "s" {
        return ""
    }
    else {
        return "a"
    }
}

func addS(_ number: String, string: String) -> String { // determines if second argument string should be singular or plural based on the first argument string
    if number == "1" || number == "1.0" || number == "one" {
        return string
    }
    else {
        return string + "s"
    }
}


extension String { // extensions add new functionality to a type
    func capitalizeFirstLetter() -> String { // a function that can capitalize only the first letter of a string,
        return prefix(1).capitalized + dropFirst() //prefix means it starts at the first element of the string and goes up to, but not including, the number in the parentheses. In this case, it only looks at the first letter in the string, removes it, and replaces it with its capitalized version
    }
    func aOrAn() -> String { // a funtion to choose between using the string "a" or "an"
        if prefix(1) == "a" || prefix(1) == "e" || prefix(1) == "i" || prefix(1) == "o" || prefix(1) == "u" {
            return "an"
        }
        else {
            return "a"
        }
    }
}
