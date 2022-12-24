//
//  CardModel.swift
//  Learn Japan!
//
//  Created by Tomas Sanni on 12/24/22.
//

import Foundation


struct Cards: Identifiable {
    let id = UUID()
    
    let image: String
    let title: String
    let text: String
    
    
    
    static let example = Cards(image: "japanMap", title: "Prefectures", text: "Make description for the prefectures")
    static let example2 = Cards(image: "cultureImage", title: "Culture", text: "Make description for the cultures")
    static let example3 = Cards(image: "historyImage", title: "History", text: "Make description for the history")
    static let examples: [Cards] = [example, example2, example3]
}
