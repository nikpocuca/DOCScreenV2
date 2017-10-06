//
//  ClockTask.swift
//  DOCScreenV2
//
//  Created by Nik on 2017-10-06.
//  Copyright © 2017 Nik. All rights reserved.
//

import Foundation
import ResearchKit

public var ClockTask: ORKOrderedTask{
    
    var steps = [ORKStep]()
    
    // Instruction step.
    let instructionStep = ORKInstructionStep(identifier: "instructStep")
    instructionStep.title = "Drawing a clock"
    instructionStep.text = "Please take the pen and paper and draw a clock ten minutes past eleven."
    steps += [instructionStep]
    
    
    let imageCaptureStep = ORKImageCaptureStep(identifier: "imageStep")
    imageCaptureStep.isOptional = false
    imageCaptureStep.accessibilityHint = ""
    imageCaptureStep.templateImageInsets = UIEdgeInsets(top: 0.05, left: 0.05, bottom: 0.05, right: 0.05)
    
    steps += [imageCaptureStep]
    

    
    return ORKOrderedTask(identifier: "ClockTask", steps: steps)

}


