//
//  StoryView.swift
//  Word Play
//
//  Created by Owen Johnson on 10/11/22.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    func writeStory() -> String {
        return "At the end of December, my parents let me \(words.verb0) up late to \(words.verb1) the \(words.adjective0) year. We \(words.verb2) \(words.adjective1) games and snack on \(words.noun0) and \(words.adjective2) \(words.noun1). Just before midnight, we \(words.verb3) down from \(words.number) until its time to \(words.verb4), '\(words.adjective3) \(words.adjective4) Year!'We \(words.verb5) noisemakers and \(words.verb6) each other \(words.adjective5) wishes for the coming year. It's hard to \(words.verb7) after all of that \(words.adjective6) fun!"
    }
    var body: some View {
        Text(writeStory())
        
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}
