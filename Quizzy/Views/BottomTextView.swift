//
//  BottomTextView.swift
//  CodeHistory
//
//  Created by Anh Nguyen on 1/26/25.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    let textColor: Color
    let backgroungColor: Color

    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .foregroundColor(textColor)
                .font(.body)
                .bold()
                .padding()
            Spacer()
        }.background(backgroungColor)

    }
}

struct BottomTextView_Previews: PreviewProvider {
    static var previews: some View {
        BottomTextView(str: "Test", textColor: .white, backgroungColor: GameColor.accent)
    }
}
