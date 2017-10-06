//
//  ProfileTask.swift
//  DOCScreenV2
//
//  Created by Nik on 2017-10-06.
//  Copyright © 2017 Nik. All rights reserved.
//

import Foundation
import ResearchKit


public var ProfileTask: ORKOrderedTask{
    
    var steps = [ORKStep]()
    
    // Instruction step.
    let instructionStep = ORKInstructionStep(identifier: "prelimStep")
    instructionStep.title = "Preliminary Questions"
    instructionStep.text = "You will be asked questions about your demographic and baseline health information"
    steps += [instructionStep]
    
    // Name Question
    let nameTitle = "What is your name?"
    let nameAnswerFormat = ORKTextAnswerFormat()
    let nameStep = ORKQuestionStep(identifier: "nameStep", title: nameTitle, answer: nameAnswerFormat)
    
    steps += [nameStep]
    
    // Age Question
    
    let ageTitle = "What is your age in years?"
    let ageAnswerFormat = ORKNumericAnswerFormat(style: .integer, unit: "years")
    let ageStep = ORKQuestionStep(identifier: "ageStep", title: ageTitle, answer: ageAnswerFormat)
    
    steps += [ageStep]
    
    // Sex Question
    let sexTitle = "What is your sex?"
    let sexChoices = [
        ORKTextChoice(text: "Male", value: 0 as NSCoding & NSCopying & NSObjectProtocol),
        ORKTextChoice(text: "Female", value: 1 as NSCoding & NSCopying & NSObjectProtocol) ]
    let sexAnswerFormat = ORKTextChoiceAnswerFormat(style: .singleChoice, textChoices: sexChoices)
    
    let sexStep = ORKQuestionStep(identifier: "sexStep", title: sexTitle, answer: sexAnswerFormat)
    
    steps += [sexStep]
    
    // Education Question
    
    let eduTitle = "What is your education in years?"
    let eduAnswerFormat = ORKNumericAnswerFormat(style: .integer, unit: "years")
    let eduStep = ORKQuestionStep(identifier: "eduStep", title: eduTitle, answer: eduAnswerFormat)
    
    steps += [eduStep]
    
    // Height Question
    
    let hTitle = "What is your height in cm?"
    let hAnswerFormat = ORKNumericAnswerFormat(style: .integer, unit: "cm")
    let hStep = ORKQuestionStep(identifier: "hStep", title: hTitle, answer: hAnswerFormat)
    
    steps += [hStep]
    
    // Weight Question
    
    let w8Title = "What is your weight in lbs?"
    let w8AnswerFormat = ORKNumericAnswerFormat(style: .integer, unit: "lbs")
    let w8Step = ORKQuestionStep(identifier: "w8Step", title: w8Title, answer: w8AnswerFormat)
    steps += [w8Step]
    
    
    // BMI Question
    
    let bmiTitle = "What is your BMI?"
    let bmiAnswerFormat = ORKNumericAnswerFormat(style: .integer, unit: "")
    let bmiStep = ORKQuestionStep(identifier: "bmiStep", title: bmiTitle, answer: bmiAnswerFormat)
    steps += [bmiStep]
    

    return ORKOrderedTask(identifier: "ProfileTask", steps: steps)
}

