//
//  File.swift
//  first challange
//
//  Created by Eldorbek Nusratov on 28/10/22.
//

import Foundation

let screenWidth = UIScreen.main.bounds.width
let scrennHeight = UIScreen.main.bounds.height

func universalHeight(height: CGFloat) -> CGFloat {
    scrennHeight / 844.0 * height
}

func universalWidth(width: CGFloat) -> CGFloat {
    screenWidth / 390.0 * width
}
