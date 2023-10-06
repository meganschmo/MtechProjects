//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Megan Schmoyer on 9/21/23.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}
enum ResponseType {
    case single, ranged
}
struct Answer {
    var text: String
    var type: DisasterType
    
}

enum DisasterType: String {
    case earthquake = "Earthquake", hurricane = "Hurricane", wildfire = "Wildfire", tornado = "Tornado"
    var definition: String {
        switch self {
        case .earthquake:
            return "Your life is a disaster"
        case .hurricane:
            return "Your life is a disaster"
        case .tornado:
            return "Your life is a disaster"
        case .wildfire:
            return "Your life is a disaster"
        }
    }
}
