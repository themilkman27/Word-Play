//
//  ContentView.swift
//  Word Play
//
//  Created by Owen Johnson on 10/7/22.
//

import SwiftUI


struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text("Please enter the requested words below")
                HStack {
                    CustomTextField(placeholder: "verb", variable: $words.verb0) 
                    CustomTextField(placeholder: "verb", variable: $words.verb1)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective0)
                        .padding()
                }
                HStack {
                    CustomTextField(placeholder: "verb", variable: $words.verb2)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective1)
                    CustomTextField(placeholder: "plural noun", variable: $words.noun0)
                        .padding()
                }
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective2)
                    CustomTextField(placeholder: "plural noun", variable: $words.noun1)
                    CustomTextField(placeholder: "verb", variable: $words.verb3)
                        .padding()
                }
                HStack {
                    CustomTextField(placeholder: "number", variable: $words.number)
                    CustomTextField(placeholder: "verb", variable: $words.verb4)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective3)
                        .padding()
                }
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective4)
                    CustomTextField(placeholder: "verb", variable: $words.verb5)
                    CustomTextField(placeholder: "verb", variable: $words.verb6)
                        .padding()
                }
                HStack {
                    CustomTextField(placeholder: "adjective", variable: $words.adjective5)
                    CustomTextField(placeholder: "verb", variable: $words.verb7)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective6)
                        .padding()
                }
                Spacer()
                NavigationLink("Next", destination: StoryView(words: words))
            }
        }
        .navigationTitle("Word Play")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Words {
    var noun0 = ""
    var noun1 = ""
    
    var number = ""
    
    var verb0 = ""
    var verb1 = ""
    var verb2 = ""
    var verb3 = ""
    var verb4 = ""
    var verb5 = ""
    var verb6 = ""
    var verb7 = ""
    
    var adjective0 = ""
    var adjective1 = ""
    var adjective2 = ""
    var adjective3 = ""
    var adjective4 = ""
    var adjective5 = ""
    var adjective6 = ""
    
}

struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}
