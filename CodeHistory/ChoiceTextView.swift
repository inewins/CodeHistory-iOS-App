//
//  ChoiceTextView.swift
//  CodeHistory
//
//  Created by Anh Nguyen on 1/14/25.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = Color(red: 48 / 255, green: 105 / 255, blue: 240 / 255)

    var body: some View {
        HStack {
            Spacer()
            GeometryReader { geomtry in
                Text(choiceText)
                    .font(.body)
                    .bold()
                    .multilineTextAlignment(.center)
                    .frame(width: geomtry.size.width,height: 50)
                    .overlay(
                        Rectangle()
                            .stroke(accentColor, lineWidth: 4))
            }
            .frame(height: 50)
            Spacer()
        }
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "ChoiceText")
    }
}
