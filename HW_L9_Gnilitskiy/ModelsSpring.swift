//
//  ModelsSpring.swift
//  HW_L9_Gnilitskiy
//
//  Created by Александр on 14.05.2022.
//

import Foundation
import Spring

struct SettingsAnimation {
    
    let animation: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    
    static func animation() -> SettingsAnimation {
        SettingsAnimation(
            animation: (DataSpring.springs.animations.randomElement() ?? .pop).rawValue,
            curve: (DataSpring.springs.animationCurves.randomElement() ?? .spring).rawValue,
            force: CGFloat(Int.random(in: 1..<5)),
            duration: CGFloat(Float.random(in: 0.5..<5))
        )
    }
}
