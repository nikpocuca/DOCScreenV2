//
//  Utility.swift
//  DOCScreenV2
//
//  Created by Nik Pocuca on 2017-10-13.
//  Copyright © 2017 Nik. All rights reserved.
//

import Foundation
import ResearchKit

public func loadImage(fileName: String) -> UIImage? {
    let fileURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.appendingPathComponent(fileName)
    do {
        let imageData = try Data(contentsOf: fileURL)
        return UIImage(data: imageData)
    } catch {
        print("Error loading image : \(error)")
    }
    return nil
}
