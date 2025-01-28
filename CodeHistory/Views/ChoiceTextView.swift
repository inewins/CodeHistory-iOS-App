//
//  ChoiceTextView.swift
//  CodeHistory
//
//  Created by Anh Nguyen on 1/14/25.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let backgroundColor = GameColor.accent

    var body: some View {
        HStack {
            Spacer()
            GeometryReader { geomtry in
                Text(choiceText)
                    .font(.body)
                    .bold()
                    .multilineTextAlignment(.center)
                    .frame(width: geomtry.size.width, height: 50)
                    .buttonStyle(.borderedProminent)
                    .background(backgroundColor)
            }
            .frame(height: 50)
            .cornerRadius(8)
            Spacer()
        }
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "ChoiceText")
    }
}
